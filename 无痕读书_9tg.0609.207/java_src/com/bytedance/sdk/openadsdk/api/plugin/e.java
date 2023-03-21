package com.bytedance.sdk.openadsdk.api.plugin;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.IZeusLogger;
import com.bytedance.pangle.log.IZeusReporter;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.TTAdEvent;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.umeng.analytics.pro.ak;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11447a;
    public static final HashMap<String, TTPluginListener> b;
    public static final HashMap<String, Handler> c;
    public static volatile DexClassLoader d;
    public static volatile e e;
    public static volatile boolean f;
    public static volatile TTPluginListener k;
    public final CountDownLatch g = new CountDownLatch(1);
    public volatile boolean h = false;
    public volatile String i = "none";
    public final Context j;

    /* loaded from: classes8.dex */
    public static final class a implements IZeusLogger {
        public a() {
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void e(String str, String str2, Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.b(str, str2, th);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void i(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.a.c(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void v(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.a.a(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.a.a(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2, Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.a(str, str2, th);
        }
    }

    /* loaded from: classes8.dex */
    public static final class b implements TTAdEvent {
        @Override // com.bytedance.sdk.openadsdk.TTAdEvent
        public void onEvent(int i, Bundle bundle) {
            if (i == 1) {
                String string = bundle.getString("config");
                String string2 = bundle.getString("plugin_pkg_name");
                int i2 = bundle.getInt(PluginConstants.KEY_ERROR_CODE);
                if (i2 == 0) {
                    com.bytedance.sdk.openadsdk.api.plugin.b c = e.c(string);
                    if (c != null && !TextUtils.isEmpty(c.mPackageName)) {
                        if (!bundle.getBoolean("success")) {
                            e.c(c.mPackageName, 1004);
                            return;
                        }
                        StringBuilder m1016super = Cgoto.m1016super("plugin update received: ");
                        m1016super.append(c.mPackageName);
                        com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", m1016super.toString());
                        if (!c.isRevert()) {
                            if (e.b(c)) {
                                bundle.putBoolean("installed", true);
                                return;
                            }
                            return;
                        }
                        Zeus.unInstallPlugin(c.mPackageName);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin update received with invalid config");
                    return;
                }
                e.c(string2, i2);
            }
        }
    }

    static {
        StringBuilder m1016super = Cgoto.m1016super("next");
        m1016super.append(File.separator);
        f11447a = m1016super.toString();
        b = new HashMap<>();
        c = new HashMap<>();
        e = null;
    }

    public e(Context context) {
        this.j = context.getApplicationContext();
        d.a(context);
        b(context.getApplicationContext());
    }

    public static File c(Context context) {
        return new File(new File(context.getDir("tt_pangle_bykv_file", 0), "pangle_com.byted.pangle"), f11447a);
    }

    public DexClassLoader b() throws Exception {
        if (this.h) {
            if (!Zeus.isPluginInstalled("com.byted.pangle")) {
                this.g.await(60000L, TimeUnit.MILLISECONDS);
            }
            boolean z = false;
            if (Zeus.isPluginLoaded("com.byted.pangle") || Zeus.loadPlugin("com.byted.pangle")) {
                d = Zeus.getPlugin("com.byted.pangle").mClassLoader;
                z = true;
            }
            Zeus.installFromDownloadDir();
            if (d == null) {
                if (this.g.getCount() != 0) {
                    com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Install wait time out");
                    throw new c(8, "install wait timeout");
                } else if (z) {
                    com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Get null after load");
                    throw new c(9, "Get null after load");
                }
            }
            return d;
        }
        com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Zeus init failed.");
        throw new c(4, this.i);
    }

    public static e a(Context context) {
        if (e == null) {
            synchronized (e.class) {
                if (e == null) {
                    e = new e(context);
                }
            }
        }
        return e;
    }

    public static com.bytedance.sdk.openadsdk.api.plugin.b c(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return a(new JSONObject(str));
        } catch (JSONException unused) {
            com.bytedance.sdk.openadsdk.api.a.e("TTPluginManager", "Invalid plugin info:" + str);
            return null;
        }
    }

    public static void c(String str, int i) {
        com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin update failed");
        Bundle bundle = new Bundle();
        bundle.putInt(PluginConstants.KEY_ERROR_CODE, i);
        TTPluginListener tTPluginListener = b.get(str);
        if (tTPluginListener != null) {
            tTPluginListener.onPluginListener(1001, null, null, bundle);
        }
    }

    public void a() {
        f = true;
        d.a(new ArrayList());
    }

    public Bundle a(String str, Bundle bundle) {
        String a2 = a(str);
        if (!TextUtils.isEmpty(a2)) {
            bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, a2);
        }
        f.a(str, bundle);
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(str, bundle);
        Bundle bundle3 = new Bundle();
        bundle3.putBundle(PluginConstants.KEY_PL_CONFIG_INFO, bundle2);
        return bundle3;
    }

    private void b(Context context) {
        try {
            IZeusReporter iZeusReporter = new IZeusReporter() { // from class: com.bytedance.sdk.openadsdk.api.plugin.e.1
                @Override // com.bytedance.pangle.log.IZeusReporter
                public void report(String str, JSONObject jSONObject) {
                    if (e.f) {
                        d.a(str, jSONObject);
                    } else {
                        d.c(str, jSONObject);
                    }
                }
            };
            GlobalParam globalParam = GlobalParam.getInstance();
            globalParam.setCloseDefaultReport(true);
            globalParam.setReporter(iZeusReporter);
            globalParam.setCheckPermission(false);
            globalParam.setDownloadDir(c(context));
            globalParam.setLogger(new a());
            Zeus.registerPluginStateListener(new ZeusPluginStateListener() { // from class: com.bytedance.sdk.openadsdk.api.plugin.e.2
                @Override // com.bytedance.pangle.ZeusPluginStateListener
                public void onPluginStateChange(final String str, final int i, Object... objArr) {
                    com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", str + " state changed, " + i);
                    if (i == 7) {
                        e.this.b(str, i);
                    } else if (i == 6) {
                        com.bytedance.sdk.openadsdk.b.a.a().a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.e.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                e.this.b(str, i);
                            }
                        });
                    }
                }
            });
            Zeus.init((Application) context, true);
            this.h = true;
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.a("TTPluginManager", "Unexpected error for init zeus.", th);
            this.i = th.getMessage();
        }
    }

    public static String a(String str) {
        Plugin plugin;
        try {
            if (!Zeus.isPluginInstalled(str) || (plugin = Zeus.getPlugin(str)) == null) {
                return null;
            }
            return a(plugin.getVersion());
        } catch (Throwable unused) {
            com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Get local version failed");
            return null;
        }
    }

    public void a(final TTPluginListener tTPluginListener) {
        if (!this.h) {
            com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Zeus init failed.");
            if (tTPluginListener != null) {
                tTPluginListener.onPluginListener(1002, null, null, null);
                return;
            }
            return;
        }
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.e.3
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", "Load plugin failed, caused by timeout.");
                tTPluginListener.onPluginListener(1001, null, null, null);
            }
        }, 180000L);
        String packageName = tTPluginListener.packageName();
        Plugin plugin = (Zeus.isPluginInstalled(packageName) && (Zeus.isPluginLoaded(packageName) || Zeus.loadPlugin(packageName))) ? Zeus.getPlugin(packageName) : null;
        StringBuilder m1016super = Cgoto.m1016super("Find plugin:");
        m1016super.append(plugin != null);
        com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", m1016super.toString());
        if (plugin != null) {
            a(plugin);
            handler.removeCallbacksAndMessages(null);
            tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
            return;
        }
        b.put(packageName, tTPluginListener);
        c.put(packageName, handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, int i) {
        if ("com.byted.pangle".equals(str)) {
            if (i == 6 && Zeus.loadPlugin(str)) {
                d = Zeus.getPlugin(str).mClassLoader;
            }
            this.g.countDown();
        }
        a(i == 6, str);
    }

    public static boolean b(com.bytedance.sdk.openadsdk.api.plugin.b bVar) {
        File file;
        if (bVar != null && (file = bVar.b) != null) {
            boolean syncInstallPlugin = Zeus.syncInstallPlugin(bVar.mPackageName, file.getAbsolutePath());
            a(syncInstallPlugin, bVar.mPackageName);
            return syncInstallPlugin;
        }
        com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin config is null");
        return false;
    }

    public static com.bytedance.sdk.openadsdk.api.plugin.b a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.api.plugin.b bVar = new com.bytedance.sdk.openadsdk.api.plugin.b();
        bVar.mPackageName = jSONObject.optString(ak.o);
        bVar.mVersionCode = jSONObject.optInt("version_code");
        bVar.mUrl = jSONObject.optString("download_url");
        bVar.mMd5 = jSONObject.optString("md5");
        bVar.mApiVersionMin = jSONObject.optInt("min_version");
        bVar.mApiVersionMax = jSONObject.optInt("max_version");
        bVar.f11440a = jSONObject.optString("sign");
        bVar.mFlag = jSONObject.optBoolean("is_revert") ? 3 : 2;
        bVar.b = new File(jSONObject.optString("plugin_file"));
        return bVar;
    }

    public static void a(Plugin plugin) {
        if (plugin == null) {
            com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin is null.");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("action", 0);
        bundle.putString("plugin_pkg_name", plugin.mPkgName);
        bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, a(plugin.getVersion()));
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager != null) {
            adManager.getExtra(Bundle.class, bundle);
        }
    }

    public static String a(int i) {
        char[] charArray = String.valueOf(i).toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            sb.append(charArray[i2]);
            if (i2 < charArray.length - 1) {
                sb.append(".");
            }
        }
        return sb.toString();
    }

    public static void a(boolean z, String str) {
        TTPluginListener tTPluginListener = b.get(str);
        StringBuilder m1025while = Cgoto.m1025while("Install dl plugin ", str);
        m1025while.append(z ? " success" : " failed");
        m1025while.append(", need notify: ");
        m1025while.append(tTPluginListener != null);
        com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", m1025while.toString());
        Handler handler = c.get(str);
        if (z) {
            if (k == null && (tTPluginListener == null || handler == null)) {
                return;
            }
            if (Zeus.loadPlugin(str)) {
                Plugin plugin = Zeus.getPlugin(str);
                a(plugin);
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                if (tTPluginListener != null) {
                    tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                }
                TTPluginListener tTPluginListener2 = k;
                if (tTPluginListener2 != null && tTPluginListener2.packageName() != null && tTPluginListener2.packageName().equals(str)) {
                    tTPluginListener2.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                    k = null;
                }
            } else {
                c(str, 1002);
            }
        } else {
            c(str, 1003);
        }
        b.remove(str);
        c.remove(str);
    }

    public static void a(Throwable th) {
        if (th instanceof AbstractMethodError) {
            Zeus.unInstallPlugin("com.byted.pangle");
            com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "AbstractMethodError, rollback to builtin version.");
        }
    }
}
