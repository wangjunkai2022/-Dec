package com.tencent.bugly.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import com.apk.Cgoto;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.inner.InnerApi;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.y;
import com.umeng.analytics.pro.ak;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class H5JavaScriptInterface {

    /* renamed from: a  reason: collision with root package name */
    public static HashSet<Integer> f12062a = new HashSet<>();
    public String b = null;
    public Thread c = null;
    public String d = null;
    public Map<String, String> e = null;

    public static a a(String str) {
        String string;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                a aVar = new a();
                String string2 = jSONObject.getString("projectRoot");
                aVar.f12063a = string2;
                if (string2 == null) {
                    return null;
                }
                String string3 = jSONObject.getString("context");
                aVar.b = string3;
                if (string3 == null) {
                    return null;
                }
                String string4 = jSONObject.getString("url");
                aVar.c = string4;
                if (string4 == null) {
                    return null;
                }
                String string5 = jSONObject.getString(TTDownloadField.TT_USERAGENT);
                aVar.d = string5;
                if (string5 == null) {
                    return null;
                }
                String string6 = jSONObject.getString(ak.N);
                aVar.e = string6;
                if (string6 == null) {
                    return null;
                }
                String string7 = jSONObject.getString("name");
                aVar.f = string7;
                if (string7 == null || string7.equals("null") || (string = jSONObject.getString("stacktrace")) == null) {
                    return null;
                }
                int indexOf = string.indexOf("\n");
                if (indexOf < 0) {
                    y.d("H5 crash stack's format is wrong!", new Object[0]);
                    return null;
                }
                aVar.h = string.substring(indexOf + 1);
                String substring = string.substring(0, indexOf);
                aVar.g = substring;
                int indexOf2 = substring.indexOf(":");
                if (indexOf2 > 0) {
                    aVar.g = aVar.g.substring(indexOf2 + 1);
                }
                aVar.i = jSONObject.getString("file");
                if (aVar.f == null) {
                    return null;
                }
                long j = jSONObject.getLong("lineNumber");
                aVar.j = j;
                if (j < 0) {
                    return null;
                }
                long j2 = jSONObject.getLong("columnNumber");
                aVar.k = j2;
                if (j2 < 0) {
                    return null;
                }
                y.a("H5 crash information is following: ", new Object[0]);
                y.a("[projectRoot]: " + aVar.f12063a, new Object[0]);
                y.a("[context]: " + aVar.b, new Object[0]);
                y.a("[url]: " + aVar.c, new Object[0]);
                y.a("[userAgent]: " + aVar.d, new Object[0]);
                y.a("[language]: " + aVar.e, new Object[0]);
                y.a("[name]: " + aVar.f, new Object[0]);
                y.a("[message]: " + aVar.g, new Object[0]);
                y.a("[stacktrace]: \n" + aVar.h, new Object[0]);
                y.a("[file]: " + aVar.i, new Object[0]);
                y.a("[lineNumber]: " + aVar.j, new Object[0]);
                y.a("[columnNumber]: " + aVar.k, new Object[0]);
                return aVar;
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static H5JavaScriptInterface getInstance(CrashReport.WebViewInterface webViewInterface) {
        String str = null;
        if (webViewInterface == null || f12062a.contains(Integer.valueOf(webViewInterface.hashCode()))) {
            return null;
        }
        H5JavaScriptInterface h5JavaScriptInterface = new H5JavaScriptInterface();
        f12062a.add(Integer.valueOf(webViewInterface.hashCode()));
        Thread currentThread = Thread.currentThread();
        h5JavaScriptInterface.c = currentThread;
        if (currentThread != null) {
            StringBuilder m1016super = Cgoto.m1016super("\n");
            for (int i = 2; i < currentThread.getStackTrace().length; i++) {
                StackTraceElement stackTraceElement = currentThread.getStackTrace()[i];
                if (!stackTraceElement.toString().contains("crashreport")) {
                    m1016super.append(stackTraceElement.toString());
                    m1016super.append("\n");
                }
            }
            str = m1016super.toString();
        }
        h5JavaScriptInterface.d = str;
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder();
        sb.append((Object) webViewInterface.getContentDescription());
        hashMap.put("[WebView] ContentDescription", sb.toString());
        h5JavaScriptInterface.e = hashMap;
        return h5JavaScriptInterface;
    }

    @JavascriptInterface
    public void printLog(String str) {
        y.d("Log from js: %s", str);
    }

    @JavascriptInterface
    public void reportJSException(String str) {
        if (str == null) {
            y.d("Payload from JS is null.", new Object[0]);
            return;
        }
        String a2 = ab.a(str.getBytes());
        String str2 = this.b;
        if (str2 != null && str2.equals(a2)) {
            y.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
            return;
        }
        this.b = a2;
        y.d("Handling JS exception ...", new Object[0]);
        a a3 = a(str);
        if (a3 == null) {
            y.d("Failed to parse payload.", new Object[0]);
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        String str3 = a3.f12063a;
        if (str3 != null) {
            linkedHashMap2.put("[JS] projectRoot", str3);
        }
        String str4 = a3.b;
        if (str4 != null) {
            linkedHashMap2.put("[JS] context", str4);
        }
        String str5 = a3.c;
        if (str5 != null) {
            linkedHashMap2.put("[JS] url", str5);
        }
        String str6 = a3.d;
        if (str6 != null) {
            linkedHashMap2.put("[JS] userAgent", str6);
        }
        String str7 = a3.i;
        if (str7 != null) {
            linkedHashMap2.put("[JS] file", str7);
        }
        long j = a3.j;
        if (j != 0) {
            linkedHashMap2.put("[JS] lineNumber", Long.toString(j));
        }
        linkedHashMap.putAll(linkedHashMap2);
        linkedHashMap.putAll(this.e);
        linkedHashMap.put("Java Stack", this.d);
        InnerApi.postH5CrashAsync(this.c, a3.f, a3.g, a3.h, linkedHashMap);
    }
}
