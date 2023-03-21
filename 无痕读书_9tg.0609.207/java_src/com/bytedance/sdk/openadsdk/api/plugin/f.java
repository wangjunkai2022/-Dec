package com.bytedance.sdk.openadsdk.api.plugin;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTInitializer;
import com.bytedance.sdk.openadsdk.api.plugin.e;
import dalvik.system.DexClassLoader;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class f implements TTInitializer {
    public volatile TTInitializer b;
    public static final Map<String, Bundle> c = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    public static ScheduledExecutorService f11452a = Executors.newSingleThreadScheduledExecutor(new b());

    /* loaded from: classes8.dex */
    public static class a implements TTAdSdk.InitCallback {

        /* renamed from: a  reason: collision with root package name */
        public TTAdSdk.InitCallback f11454a;

        public a(TTAdSdk.InitCallback initCallback) {
            this.f11454a = initCallback;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i, String str) {
            TTAdSdk.InitCallback initCallback = this.f11454a;
            if (initCallback != null) {
                initCallback.fail(i, str);
                d.b(i, str, 0L);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            TTAdSdk.InitCallback initCallback = this.f11454a;
            if (initCallback != null) {
                initCallback.success();
            }
            d.a();
        }
    }

    public static TTInitializer b(AdConfig adConfig) {
        DexClassLoader b2;
        try {
            b2 = e.a(TTAppContextHolder.getContext()).b();
        } catch (Throwable th) {
            if (th instanceof c) {
                c cVar = th;
                d.a(cVar.a(), cVar.getMessage(), 0L);
            } else {
                d.a(6, th.getMessage(), 0L);
            }
            com.bytedance.sdk.openadsdk.api.a.e("TTPluginManager", "Create initializer failed: " + th);
        }
        if (b2 == null) {
            d.a(6, "Load plugin failed", 0L);
            com.bytedance.sdk.openadsdk.api.a.e("TTPluginManager", "Load plugin failed");
            return null;
        }
        Class<?> loadClass = b2.loadClass(TTAdSdk.INITIALIZER_CLASS_NAME);
        Bundle bundle = new Bundle();
        bundle.putSerializable(PluginConstants.KEY_PL_UPDATE_LISTENER, new e.b());
        bundle.putBundle(PluginConstants.KEY_PL_CONFIG_INFO, a(c));
        TTInitializer tTInitializer = (TTInitializer) loadClass.getDeclaredMethod("getInstance", Bundle.class).invoke(null, bundle);
        com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", "Create initializer success");
        return tTInitializer;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInitializer
    public TTAdManager getAdManager() {
        return com.bytedance.sdk.openadsdk.api.plugin.a.f11412a;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInitializer
    public void init(Context context, AdConfig adConfig, TTAdSdk.InitCallback initCallback) {
        e.a(context).a();
        if (this.b != null) {
            this.b.init(context, adConfig, new a(initCallback));
        } else {
            a(context, adConfig, new a(initCallback));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTInitializer
    public boolean isInitSuccess() {
        if (this.b != null) {
            return this.b.isInitSuccess();
        }
        return false;
    }

    public static void a(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str) || bundle == null) {
            return;
        }
        c.put(str, bundle);
    }

    /* loaded from: classes8.dex */
    public static class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        public final ThreadGroup f11455a;
        public final AtomicInteger b;
        public final String c;

        public b() {
            this.b = new AtomicInteger(1);
            this.f11455a = new ThreadGroup("tt_pangle_group_pl_init");
            this.c = "tt_pangle_thread_pl_init";
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f11455a;
            Thread thread = new Thread(threadGroup, runnable, this.c + this.b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 10) {
                thread.setPriority(10);
            }
            return thread;
        }

        public b(String str) {
            this.b = new AtomicInteger(1);
            this.f11455a = new ThreadGroup("tt_pangle_group_pl_init");
            this.c = str;
        }
    }

    private void a(final Context context, final AdConfig adConfig, final TTAdSdk.InitCallback initCallback) {
        f11452a.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.f.1
            @Override // java.lang.Runnable
            public void run() {
                TTInitializer a2 = f.this.a(adConfig);
                if (a2 != null) {
                    com.bytedance.sdk.openadsdk.api.plugin.a.f11412a.a(a2.getAdManager());
                    a2.init(context, adConfig, initCallback);
                    a2.getAdManager().register(com.bytedance.sdk.openadsdk.a.b.a());
                    return;
                }
                initCallback.fail(4201, "No initializer");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TTInitializer a(AdConfig adConfig) {
        if (this.b == null) {
            synchronized (this) {
                if (this.b == null) {
                    d.a(adConfig);
                    com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", "Create initializer");
                    long currentTimeMillis = System.currentTimeMillis();
                    this.b = b(adConfig);
                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.putOpt("duration", Long.valueOf(currentTimeMillis2));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    adConfig.setExtra("plugin", jSONObject);
                }
            }
        }
        return this.b;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInitializer
    public TTAdManager init(Context context, AdConfig adConfig) {
        throw new RuntimeException("Please use init(Context context, AdConfig config, TTAdSdk.InitCallback callback)!");
    }

    public static final Bundle a(Map<String, Bundle> map) {
        if (map != null && map.size() != 0) {
            Bundle bundle = new Bundle();
            for (Map.Entry<String, Bundle> entry : map.entrySet()) {
                String key = entry.getKey();
                Bundle value = entry.getValue();
                if (!TextUtils.isEmpty(key) && value != null) {
                    bundle.putBundle(key, value);
                }
            }
            return bundle;
        }
        return new Bundle();
    }
}
