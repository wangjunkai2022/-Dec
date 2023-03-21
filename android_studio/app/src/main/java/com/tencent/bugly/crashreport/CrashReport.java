package com.tencent.bugly.crashreport;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.CrashModule;
import com.tencent.bugly.b;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.crashreport.crash.d;
import com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.p;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.net.InetAddress;
import java.net.Proxy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class CrashReport {

    /* renamed from: a  reason: collision with root package name */
    public static Context f12018a;

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public static class CrashHandleCallback extends BuglyStrategy.a {
    }

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public static class UserStrategy extends BuglyStrategy {
        public CrashHandleCallback c;

        public UserStrategy(Context context) {
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized int getCallBackType() {
            return this.f12015a;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized boolean getCloseErrorCallback() {
            return this.b;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCallBackType(int i) {
            this.f12015a = i;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCloseErrorCallback(boolean z) {
            this.b = z;
        }

        public synchronized void setCrashHandleCallback(CrashHandleCallback crashHandleCallback) {
            this.c = crashHandleCallback;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized CrashHandleCallback getCrashHandleCallback() {
            return this.c;
        }
    }

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public interface WebViewInterface {
        void addJavascriptInterface(H5JavaScriptInterface h5JavaScriptInterface, String str);

        CharSequence getContentDescription();

        String getUrl();

        void loadUrl(String str);

        void setJavaScriptEnabled(boolean z);
    }

    public static void closeBugly() {
        if (b.f12017a && CrashModule.getInstance().hasInitialized() && f12018a != null) {
            BuglyBroadcastReceiver buglyBroadcastReceiver = BuglyBroadcastReceiver.getInstance();
            if (buglyBroadcastReceiver != null) {
                buglyBroadcastReceiver.unregister(f12018a);
            }
            closeCrashReport();
            com.tencent.bugly.crashreport.biz.b.a(f12018a);
            x a2 = x.a();
            if (a2 != null) {
                a2.b();
            }
        }
    }

    public static void closeCrashReport() {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            c.a().d();
        }
    }

    public static void closeNativeReport() {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            c.a().g();
        }
    }

    public static void enableBugly(boolean z) {
        b.f12017a = z;
    }

    public static void enableObtainId(Context context, boolean z) {
        setCollectPrivacyInfo(context, z);
    }

    public static Set<String> getAllUserDataKeys(Context context) {
        if (b.f12017a) {
            if (context == null) {
                return new HashSet();
            }
            return com.tencent.bugly.crashreport.common.info.a.a(context).A();
        }
        return new HashSet();
    }

    public static String getAppChannel() {
        return (b.f12017a && CrashModule.getInstance().hasInitialized()) ? com.tencent.bugly.crashreport.common.info.a.a(f12018a).k : "unknown";
    }

    public static String getAppID() {
        return (b.f12017a && CrashModule.getInstance().hasInitialized()) ? com.tencent.bugly.crashreport.common.info.a.a(f12018a).f() : "unknown";
    }

    public static String getAppVer() {
        return (b.f12017a && CrashModule.getInstance().hasInitialized()) ? com.tencent.bugly.crashreport.common.info.a.a(f12018a).i : "unknown";
    }

    public static String getBuglyVersion(Context context) {
        if (context == null) {
            y.d("Please call with context.", new Object[0]);
            return "unknown";
        }
        return com.tencent.bugly.crashreport.common.info.a.a(context).c();
    }

    public static Context getContext() {
        return f12018a;
    }

    public static String getDeviceID(Context context) {
        return com.tencent.bugly.crashreport.common.info.a.a(context).k();
    }

    public static Proxy getHttpProxy() {
        return com.tencent.bugly.proguard.a.b();
    }

    public static Map<String, String> getSdkExtraData() {
        if (!b.f12017a) {
            return new HashMap();
        }
        if (CrashModule.getInstance().hasInitialized()) {
            return com.tencent.bugly.crashreport.common.info.a.a(f12018a).A;
        }
        return null;
    }

    public static String getUserData(Context context, String str) {
        if (b.f12017a && context != null) {
            if (ab.a(str)) {
                return null;
            }
            return com.tencent.bugly.crashreport.common.info.a.a(context).i(str);
        }
        return "unknown";
    }

    public static int getUserDatasSize(Context context) {
        if (b.f12017a && context != null) {
            return com.tencent.bugly.crashreport.common.info.a.a(context).z();
        }
        return -1;
    }

    public static String getUserId() {
        return (b.f12017a && CrashModule.getInstance().hasInitialized()) ? com.tencent.bugly.crashreport.common.info.a.a(f12018a).g() : "unknown";
    }

    public static int getUserSceneTagId(Context context) {
        if (b.f12017a && context != null) {
            return com.tencent.bugly.crashreport.common.info.a.a(context).D();
        }
        return -1;
    }

    public static void initCrashReport(Context context) {
        if (context == null) {
            return;
        }
        f12018a = context;
        b.a(CrashModule.getInstance());
        b.a(context);
    }

    public static boolean isLastSessionCrash() {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            return c.a().b();
        }
        return false;
    }

    public static void postCatchedException(Throwable th) {
        postCatchedException(th, Thread.currentThread(), false);
    }

    public static void postException(Thread thread, int i, String str, String str2, String str3, Map<String, String> map) {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            d.a(thread, i, str, str2, str3, map);
        }
    }

    public static void putSdkData(Context context, String str, String str2) {
        if (context == null || ab.a(str) || ab.a(str2)) {
            return;
        }
        String replace = str.replace("[a-zA-Z[0-9]]+", "");
        if (replace.length() > 100) {
            String.format("putSdkData key length over limit %d, will be cutted.", 50);
            replace = replace.substring(0, 50);
        }
        if (str2.length() > 500) {
            String.format("putSdkData value length over limit %d, will be cutted!", 200);
            str2 = str2.substring(0, 200);
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).c(replace, str2);
        y.b(String.format("[param] putSdkData data: %s - %s", replace, str2), new Object[0]);
    }

    public static void putUserData(Context context, String str, String str2) {
        if (b.f12017a && context != null) {
            if (str == null) {
                y.d("putUserData args key should not be null or empty", new Object[0]);
            } else if (str2 == null) {
                y.d("putUserData args value should not be null", new Object[0]);
            } else {
                if (str2.length() > 200) {
                    y.d("user data value length over limit %d, it will be cutted!", 200);
                    str2 = str2.substring(0, 200);
                }
                com.tencent.bugly.crashreport.common.info.a a2 = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (a2.A().contains(str)) {
                    NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
                    if (nativeCrashHandler != null) {
                        nativeCrashHandler.putKeyValueToNative(str, str2);
                    }
                    com.tencent.bugly.crashreport.common.info.a.a(context).b(str, str2);
                    y.c("replace KV %s %s", str, str2);
                } else if (a2.z() >= 50) {
                    y.d("user data size is over limit %d, it will be cutted!", 50);
                } else {
                    if (str.length() > 50) {
                        y.d("user data key length over limit %d , will drop this new key %s", 50, str);
                        str = str.substring(0, 50);
                    }
                    NativeCrashHandler nativeCrashHandler2 = NativeCrashHandler.getInstance();
                    if (nativeCrashHandler2 != null) {
                        nativeCrashHandler2.putKeyValueToNative(str, str2);
                    }
                    com.tencent.bugly.crashreport.common.info.a.a(context).b(str, str2);
                    y.b("[param] set user data: %s - %s", str, str2);
                }
            }
        }
    }

    public static String removeUserData(Context context, String str) {
        if (b.f12017a && context != null) {
            if (ab.a(str)) {
                return null;
            }
            y.b("[param] remove user data: %s", str);
            return com.tencent.bugly.crashreport.common.info.a.a(context).h(str);
        }
        return "unknown";
    }

    public static void setAllThreadStackEnable(Context context, boolean z, boolean z2) {
        com.tencent.bugly.crashreport.common.info.a.a(context).a(z, z2);
    }

    public static void setAppChannel(Context context, String str) {
        if (!b.f12017a || context == null || str == null) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).k = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppChannel(str);
        }
    }

    public static void setAppPackage(Context context, String str) {
        if (!b.f12017a || context == null || str == null) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).c = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppPackage(str);
        }
    }

    public static void setAppVersion(Context context, String str) {
        if (!b.f12017a || context == null || str == null) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).i = str;
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeAppVersion(str);
        }
    }

    public static void setBuglyDbName(String str) {
        if (b.f12017a) {
            p.f12098a = str;
        }
    }

    public static void setCollectPrivacyInfo(Context context, boolean z) {
        if (b.f12017a && context != null) {
            com.tencent.bugly.crashreport.common.info.a.a(context).a(z);
        }
    }

    public static void setContext(Context context) {
        f12018a = context;
    }

    public static void setCrashFilter(String str) {
        if (b.f12017a) {
            c.n = str;
        }
    }

    public static void setCrashRegularFilter(String str) {
        if (b.f12017a) {
            c.o = str;
        }
    }

    public static void setDeviceId(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).c(str);
    }

    public static void setDeviceModel(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).d(str);
    }

    public static void setHandleNativeCrashInJava(boolean z) {
        if (b.f12017a) {
            NativeCrashHandler.setShouldHandleInJava(z);
        }
    }

    public static void setHttpProxy(String str, int i) {
        com.tencent.bugly.proguard.a.a(str, i);
    }

    @Deprecated
    public static void setIsAppForeground(Context context, boolean z) {
        y.a("App fore and back status are no longer supported", new Object[0]);
    }

    public static void setIsDevelopmentDevice(Context context, boolean z) {
        if (b.f12017a) {
            if (context == null) {
                y.d("Context should not be null.", new Object[0]);
                return;
            }
            if (z) {
                y.c("This is a development device.", new Object[0]);
            } else {
                y.c("This is not a development device.", new Object[0]);
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).y = z;
        }
    }

    public static boolean setJavascriptMonitor(WebView webView, boolean z) {
        return setJavascriptMonitor(webView, z, false);
    }

    public static void setSdkExtraData(Context context, String str, String str2) {
        if (!b.f12017a || context == null || ab.a(str) || ab.a(str2)) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).a(str, str2);
    }

    public static void setServerUrl(String str) {
        if (ab.a(str) || !ab.c(str)) {
            return;
        }
        com.tencent.bugly.crashreport.common.strategy.a.a(str);
        StrategyBean.f12033a = str;
        StrategyBean.b = str;
    }

    public static void setSessionIntervalMills(long j) {
        if (b.f12017a) {
            com.tencent.bugly.crashreport.biz.b.a(j);
        }
    }

    public static void setUserId(String str) {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            setUserId(f12018a, str);
        }
    }

    public static void setUserSceneTag(Context context, int i) {
        if (b.f12017a && context != null) {
            if (i <= 0) {
                y.d("setTag args tagId should > 0", new Object[0]);
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).a(i);
            y.b("[param] set user scene tag: %d", Integer.valueOf(i));
        }
    }

    public static void startCrashReport() {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            c.a().c();
        }
    }

    public static void testANRCrash() {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            y.a("start to create a anr crash for test!", new Object[0]);
            c.a().l();
        }
    }

    public static void testJavaCrash() {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            com.tencent.bugly.crashreport.common.info.a b = com.tencent.bugly.crashreport.common.info.a.b();
            if (b != null) {
                b.b(24096);
            }
            throw new RuntimeException("This Crash create for Test! You can go to Bugly see more detail!");
        }
    }

    public static void testNativeCrash() {
        testNativeCrash(false, false, false);
    }

    public static void uploadUserInfo() {
        com.tencent.bugly.crashreport.biz.a aVar;
        if (b.f12017a && (aVar = com.tencent.bugly.crashreport.biz.b.f12027a) != null) {
            aVar.b();
        }
    }

    public static void postCatchedException(Throwable th, Thread thread) {
        postCatchedException(th, thread, false);
    }

    public static void setHttpProxy(InetAddress inetAddress, int i) {
        com.tencent.bugly.proguard.a.a(inetAddress, i);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public static boolean setJavascriptMonitor(final WebView webView, boolean z, boolean z2) {
        if (webView == null) {
            return false;
        }
        webView.getSettings().setSavePassword(false);
        webView.getSettings().setAllowFileAccess(false);
        return setJavascriptMonitor(new WebViewInterface() { // from class: com.tencent.bugly.crashreport.CrashReport.1
            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void addJavascriptInterface(H5JavaScriptInterface h5JavaScriptInterface, String str) {
                webView.addJavascriptInterface(h5JavaScriptInterface, str);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final CharSequence getContentDescription() {
                return webView.getContentDescription();
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final String getUrl() {
                return webView.getUrl();
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void loadUrl(String str) {
                webView.loadUrl(str);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void setJavaScriptEnabled(boolean z3) {
                WebSettings settings = webView.getSettings();
                if (settings.getJavaScriptEnabled()) {
                    return;
                }
                settings.setJavaScriptEnabled(true);
            }
        }, z, z2);
    }

    public static void testNativeCrash(boolean z, boolean z2, boolean z3) {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            y.a("start to create a native crash for test!", new Object[0]);
            c.a().a(z, z2, z3);
        }
    }

    public static void postCatchedException(Throwable th, Thread thread, boolean z) {
        if (b.f12017a && CrashModule.getInstance().hasInitialized()) {
            if (th == null) {
                y.d("throwable is null, just return", new Object[0]);
                return;
            }
            if (thread == null) {
                thread = Thread.currentThread();
            }
            c.a().a(thread, th, false, null, null, z, true);
        }
    }

    public static void initCrashReport(Context context, UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        f12018a = context;
        b.a(CrashModule.getInstance());
        b.a(context, userStrategy);
    }

    public static void postException(int i, String str, String str2, String str3, Map<String, String> map) {
        postException(Thread.currentThread(), i, str, str2, str3, map);
    }

    public static void setUserId(Context context, String str) {
        if (b.f12017a && context != null) {
            if (TextUtils.isEmpty(str)) {
                y.d("userId should not be null", new Object[0]);
                return;
            }
            if (str.length() > 100) {
                String substring = str.substring(0, 100);
                y.d("userId %s length is over limit %d substring to %s", str, 100, substring);
                str = substring;
            }
            if (str.equals(com.tencent.bugly.crashreport.common.info.a.a(context).g())) {
                return;
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).b(str);
            y.b("[user] set userId : %s", str);
            NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
            if (nativeCrashHandler != null) {
                nativeCrashHandler.setNativeUserId(str);
            }
            if (CrashModule.getInstance().hasInitialized()) {
                com.tencent.bugly.crashreport.biz.b.a();
            }
        }
    }

    public static Map<String, String> getSdkExtraData(Context context) {
        if (b.f12017a) {
            if (context == null) {
                y.d("Context should not be null.", new Object[0]);
                return null;
            }
            return com.tencent.bugly.crashreport.common.info.a.a(context).A;
        }
        return new HashMap();
    }

    public static boolean setJavascriptMonitor(WebViewInterface webViewInterface, boolean z) {
        return setJavascriptMonitor(webViewInterface, z, false);
    }

    public static void initCrashReport(Context context, String str, boolean z) {
        if (context != null) {
            f12018a = context;
            b.a(CrashModule.getInstance());
            b.a(context, str, z, null);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public static boolean setJavascriptMonitor(WebViewInterface webViewInterface, boolean z, boolean z2) {
        if (webViewInterface == null) {
            return false;
        }
        if (!CrashModule.getInstance().hasInitialized()) {
            y.e("CrashReport has not been initialed! please to call method 'initCrashReport' first!", new Object[0]);
            return false;
        }
        y.a("Set Javascript exception monitor of webview.", new Object[0]);
        if (b.f12017a) {
            y.c("URL of webview is %s", webViewInterface.getUrl());
            y.a("Enable the javascript needed by webview monitor.", new Object[0]);
            webViewInterface.setJavaScriptEnabled(true);
            H5JavaScriptInterface h5JavaScriptInterface = H5JavaScriptInterface.getInstance(webViewInterface);
            if (h5JavaScriptInterface != null) {
                y.a("Add a secure javascript interface to the webview.", new Object[0]);
                webViewInterface.addJavascriptInterface(h5JavaScriptInterface, "exceptionUploader");
            }
            if (z) {
                y.a("Inject bugly.js(v%s) to the webview.", com.tencent.bugly.crashreport.crash.h5.b.b());
                String a2 = com.tencent.bugly.crashreport.crash.h5.b.a();
                if (a2 == null) {
                    y.e("Failed to inject Bugly.js.", com.tencent.bugly.crashreport.crash.h5.b.b());
                    return false;
                }
                webViewInterface.loadUrl("javascript:" + a2);
            }
            return true;
        }
        return false;
    }

    public static void initCrashReport(Context context, String str, boolean z, UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        f12018a = context;
        b.a(CrashModule.getInstance());
        b.a(context, str, z, userStrategy);
    }
}
