# -*- coding: utf-8 -*-
"""
Compilador Nativo de APK Android para o Santa Cifra (usando Android SDK build-tools 36.0.0 + JDK 17)
Gera: cifra-liturgica-web/santa-cifra.apk (assinado com v1+v2+v3 via apksigner)
Inclui todo o banco de dados de 254 músicas offline dentro de assets/www/ + suporte online.
"""

import os
import shutil
import subprocess
import zipfile

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
WEB_DIR = os.path.join(ROOT_DIR, "santa-cifra")
BUILD_DIR = os.path.join(ROOT_DIR, "android-apk-build")

SDK_DIR = os.path.expandvars(r"%LOCALAPPDATA%\Android\Sdk")
BUILD_TOOLS = os.path.join(SDK_DIR, "build-tools", "36.0.0")
ANDROID_JAR = os.path.join(SDK_DIR, "platforms", "android-36", "android.jar")

AAPT2 = os.path.join(BUILD_TOOLS, "aapt2.exe")
D8 = os.path.join(BUILD_TOOLS, "d8.bat")
ZIPALIGN = os.path.join(BUILD_TOOLS, "zipalign.exe")
APKSIGNER = os.path.join(BUILD_TOOLS, "apksigner.bat")

MANIFEST_XML = """<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="app.santacifra.liturgia"
    android:versionCode="17"
    android:versionName="3.8.4">

    <uses-sdk android:minSdkVersion="24" android:targetSdkVersion="35" />
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />

    <application
        android:label="@string/app_name"
        android:icon="@mipmap/ic_launcher"
        android:hardwareAccelerated="true"
        android:usesCleartextTraffic="false"
        android:theme="@android:style/Theme.DeviceDefault.NoActionBar">

        <activity
            android:name=".MainActivity"
            android:exported="true"
            android:configChanges="orientation|screenSize|keyboardHidden">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>
</manifest>
"""

STRINGS_XML = """<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">Santa Cifra</string>
</resources>
"""

MAIN_ACTIVITY_JAVA = """package app.santacifra.liturgia;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.view.Window;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class MainActivity extends Activity {
    private static final String LIVE_CLOUD_URL = "https://santa-cifra.surge.sh/index.html?client=apk";
    private static final String OFFLINE_ASSET_URL = "file:///android_asset/www/index.html";
    private WebView webView;
    private boolean fellBackToOffline = false;

    private boolean isNetworkAvailable() {
        try {
            ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
            if (cm == null) return false;
            Network activeNetwork = cm.getActiveNetwork();
            if (activeNetwork == null) return false;
            NetworkCapabilities caps = cm.getNetworkCapabilities(activeNetwork);
            return caps != null && (
                caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) ||
                caps.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR) ||
                caps.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET)
            );
        } catch (Exception e) {
            return false;
        }
    }

    public class NativeBridge {
        @JavascriptInterface
        public String getVersion() {
            return "3.0.0";
        }

        @JavascriptInterface
        public void loadLiveCloud() {
            runOnUiThread(() -> {
                if (webView != null && isNetworkAvailable()) {
                    fellBackToOffline = false;
                    webView.loadUrl(LIVE_CLOUD_URL);
                }
            });
        }

        @JavascriptInterface
        public void loadOfflineBundle() {
            runOnUiThread(() -> {
                if (webView != null) {
                    fellBackToOffline = true;
                    webView.loadUrl(OFFLINE_ASSET_URL);
                }
            });
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        webView = new WebView(this);
        webView.setBackgroundColor(Color.parseColor("#141413"));

        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setCacheMode(WebSettings.LOAD_DEFAULT);

        webView.addJavascriptInterface(new NativeBridge(), "SantaCifraNative");
        webView.setWebChromeClient(new WebChromeClient());
        webView.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                Uri uri = request.getUrl();
                String scheme = uri.getScheme();
                String host = uri.getHost();
                String path = uri.getPath() != null ? uri.getPath() : "";

                if (scheme != null && (scheme.equals("http") || scheme.equals("https"))) {
                    // Keep santa-cifra.surge.sh inside the WebView unless downloading an APK
                    if ("santa-cifra.surge.sh".equalsIgnoreCase(host) && !path.endsWith(".apk")) {
                        return false;
                    }
                    Intent intent = new Intent(Intent.ACTION_VIEW, uri);
                    startActivity(intent);
                    return true;
                }
                return false;
            }

            @Override
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                if (request != null && request.isForMainFrame() && !fellBackToOffline) {
                    fellBackToOffline = true;
                    view.loadUrl(OFFLINE_ASSET_URL);
                }
            }
        });

        setContentView(webView);
        if (isNetworkAvailable()) {
            webView.loadUrl(LIVE_CLOUD_URL);
        } else {
            fellBackToOffline = true;
            webView.loadUrl(OFFLINE_ASSET_URL);
        }
    }

    @Override
    public void onBackPressed() {
        if (webView != null) {
            webView.evaluateJavascript(
                "(function(){ var backBtn = document.getElementById('btnBack'); var songSec = document.getElementById('songViewSection'); if(songSec && songSec.style.display !== 'none' && backBtn){ backBtn.click(); return 'handled'; } return 'exit'; })()",
                value -> {
                    if (value == null || !value.contains("handled")) {
                        if (webView.canGoBack()) {
                            webView.goBack();
                        } else {
                            MainActivity.super.onBackPressed();
                        }
                    }
                }
            );
        } else {
            super.onBackPressed();
        }
    }
}
"""

def run_cmd(cmd):
    print("Running:", " ".join(cmd))
    res = subprocess.run(cmd, capture_output=True, text=True)
    if res.returncode != 0:
        print("STDOUT:", res.stdout)
        print("STDERR:", res.stderr)
        raise RuntimeError(f"Command failed with exit code {res.returncode}")
    return res

def main():
    if os.path.exists(BUILD_DIR):
        shutil.rmtree(BUILD_DIR)
    os.makedirs(BUILD_DIR, exist_ok=True)

    res_values_dir = os.path.join(BUILD_DIR, "res", "values")
    res_mipmap_dir = os.path.join(BUILD_DIR, "res", "mipmap-xxhdpi")
    src_dir = os.path.join(BUILD_DIR, "src", "app", "santacifra", "liturgia")
    assets_www_dir = os.path.join(BUILD_DIR, "assets", "www")
    gen_dir = os.path.join(BUILD_DIR, "gen")
    obj_dir = os.path.join(BUILD_DIR, "obj")

    for d in [res_values_dir, res_mipmap_dir, src_dir, assets_www_dir, gen_dir, obj_dir]:
        os.makedirs(d, exist_ok=True)

    shutil.copy2(os.path.join(WEB_DIR, "assets", "icon-192.png"), os.path.join(res_mipmap_dir, "ic_launcher.png"))

    manifest_path = os.path.join(BUILD_DIR, "AndroidManifest.xml")
    with open(manifest_path, "w", encoding="utf-8") as f:
        f.write(MANIFEST_XML)

    with open(os.path.join(res_values_dir, "strings.xml"), "w", encoding="utf-8") as f:
        f.write(STRINGS_XML)

    java_path = os.path.join(src_dir, "MainActivity.java")
    with open(java_path, "w", encoding="utf-8") as f:
        f.write(MAIN_ACTIVITY_JAVA)

    # Copy web app assets into assets/www (excluding any old .apk)
    for item in ["index.html", "version.json", "manifest.webmanifest", "sw.js", "css", "js", "assets", "data"]:
        src_item = os.path.join(WEB_DIR, item)
        dst_item = os.path.join(assets_www_dir, item)
        if os.path.isdir(src_item):
            shutil.copytree(src_item, dst_item)
        elif os.path.isfile(src_item):
            shutil.copy2(src_item, dst_item)

    # 1. Compile resources with aapt2
    compiled_res_zip = os.path.join(BUILD_DIR, "compiled_res.zip")
    run_cmd([AAPT2, "compile", "--dir", os.path.join(BUILD_DIR, "res"), "-o", compiled_res_zip])

    # 2. Link resources + assets + manifest with aapt2
    unsigned_apk = os.path.join(BUILD_DIR, "unaligned.apk")
    run_cmd([
        AAPT2, "link",
        "-I", ANDROID_JAR,
        "--manifest", manifest_path,
        "-A", os.path.join(BUILD_DIR, "assets"),
        "--java", gen_dir,
        "-o", unsigned_apk,
        compiled_res_zip
    ])

    # 3. Compile Java sources with javac
    r_java = os.path.join(gen_dir, "app", "santacifra", "liturgia", "R.java")
    run_cmd([
        "javac",
        "--release", "11",
        "-encoding", "UTF-8",
        "-cp", ANDROID_JAR,
        "-d", obj_dir,
        r_java,
        java_path
    ])

    # 4. Convert .class files to classes.dex with d8
    class_files = []
    for root, _, files in os.walk(obj_dir):
        for file in files:
            if file.endswith(".class"):
                class_files.append(os.path.join(root, file))

    run_cmd([
        D8,
        "--lib", ANDROID_JAR,
        "--min-api", "24",
        "--output", BUILD_DIR
    ] + class_files)

    # 5. Add classes.dex to unaligned.apk
    dex_path = os.path.join(BUILD_DIR, "classes.dex")
    with zipfile.ZipFile(unsigned_apk, "a", compression=zipfile.ZIP_DEFLATED) as zf:
        zf.write(dex_path, "classes.dex")

    # 6. Align APK with zipalign
    aligned_apk = os.path.join(BUILD_DIR, "aligned.apk")
    run_cmd([ZIPALIGN, "-f", "4", unsigned_apk, aligned_apk])

    # 7. Generate keystore and sign APK with apksigner
    keystore_path = os.path.join(BUILD_DIR, "santacifra.keystore")
    run_cmd([
        "keytool", "-genkeypair",
        "-v",
        "-keystore", keystore_path,
        "-alias", "santacifra",
        "-keyalg", "RSA",
        "-keysize", "2048",
        "-validity", "10000",
        "-storepass", "santacifra123",
        "-keypass", "santacifra123",
        "-dname", "CN=Santa Cifra, O=Santa Cifra, C=BR"
    ])

    final_apk = os.path.join(WEB_DIR, "santa-cifra.apk")
    run_cmd([
        APKSIGNER, "sign",
        "--ks", keystore_path,
        "--ks-pass", "pass:santacifra123",
        "--key-pass", "pass:santacifra123",
        "--out", final_apk,
        aligned_apk
    ])

    size_kb = os.path.getsize(final_apk) / 1024.0
    print(f"SUCCESS! Built signed Android APK at: {final_apk} ({size_kb:.1f} KB)")

if __name__ == "__main__":
    main()
