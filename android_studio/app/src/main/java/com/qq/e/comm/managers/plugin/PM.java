package com.qq.e.comm.managers.plugin;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.qq.e.comm.constants.Sig;
import com.qq.e.comm.managers.status.SDKStatus;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class PM {
    public static final Map<Class<?>, String> q = new b();
    public final Context b;
    public String c;
    public File d;
    public volatile int e;
    public DexClassLoader f;
    public RandomAccessFile g;
    public FileLock h;
    public boolean i;
    public final f j;
    public volatile POFactory k;
    public int l;
    public Future<Boolean> m;
    public boolean o;
    public String p;

    /* renamed from: a  reason: collision with root package name */
    public final ExecutorService f11533a = Executors.newSingleThreadExecutor();
    public boolean n = false;

    /* loaded from: classes8.dex */
    public class a implements Callable<Boolean> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            if (!PM.this.i) {
                PM pm = PM.this;
                pm.i = pm.tryLockUpdate();
            }
            if (PM.b(PM.this)) {
                PM.c(PM.this);
            }
            PM.this.l = (int) (System.currentTimeMillis() - currentTimeMillis);
            return Boolean.TRUE;
        }
    }

    /* loaded from: classes8.dex */
    public static class b extends HashMap<Class<?>, String> {
        public b() {
            put(POFactory.class, "com.qq.e.comm.plugin.POFactoryImpl");
        }
    }

    public PM(Context context, f fVar) {
        this.b = context.getApplicationContext();
        this.j = fVar;
        com.qq.e.comm.managers.plugin.b.a(context);
        d();
    }

    private JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            int pluginVersion = getPluginVersion();
            if (pluginVersion > 10000) {
                jSONObject.put("vas", this.p);
            }
            jSONObject.put("pv", pluginVersion);
            jSONObject.put("sig", this.c);
            jSONObject.put("appId", com.qq.e.comm.managers.b.b().a());
            jSONObject.put("pn", com.qq.e.comm.managers.plugin.b.a(this.b));
            jSONObject.put("ict", this.l);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private boolean b() {
        if (this.i) {
            try {
                com.qq.e.comm.managers.plugin.b.a(this.b, h.e(this.b), h.f(this.b));
                this.c = Sig.ASSET_PLUGIN_SIG;
                this.d = h.e(this.b);
                this.e = SDKStatus.getBuildInPluginVersion();
                return true;
            } catch (Throwable th) {
                GDTLogger.e("插件初始化失败 ");
                com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
                return false;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
        if (r5.b() != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean b(com.qq.e.comm.managers.plugin.PM r5) {
        /*
            java.lang.String r0 = "TimeStap_AFTER_PLUGIN_INIT:"
            if (r5 == 0) goto L69
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L31
            r2.<init>()     // Catch: java.lang.Throwable -> L31
            java.lang.String r3 = "TimeStap_BEFORE_PLUGIN_INIT:"
            r2.append(r3)     // Catch: java.lang.Throwable -> L31
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L31
            r2.append(r3)     // Catch: java.lang.Throwable -> L31
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L31
            com.qq.e.comm.util.GDTLogger.d(r2)     // Catch: java.lang.Throwable -> L31
            boolean r2 = r5.c()     // Catch: java.lang.Throwable -> L31
            if (r2 != 0) goto L29
            boolean r5 = r5.b()     // Catch: java.lang.Throwable -> L31
            if (r5 == 0) goto L2b
        L29:
            r5 = 1
            r1 = 1
        L2b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            goto L43
        L31:
            r5 = move-exception
            java.lang.String r2 = "插件加载出现异常"
            com.qq.e.comm.util.GDTLogger.e(r2, r5)     // Catch: java.lang.Throwable -> L55
            java.lang.String r2 = r5.getMessage()     // Catch: java.lang.Throwable -> L55
            com.qq.e.comm.managers.plugin.a.a(r5, r2)     // Catch: java.lang.Throwable -> L55
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
        L43:
            r5.append(r0)
            long r2 = java.lang.System.currentTimeMillis()
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            com.qq.e.comm.util.GDTLogger.d(r5)
            return r1
        L55:
            r5 = move-exception
            java.lang.StringBuilder r0 = com.apk.Cgoto.m1016super(r0)
            long r1 = java.lang.System.currentTimeMillis()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.qq.e.comm.util.GDTLogger.d(r0)
            throw r5
        L69:
            r5 = 0
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qq.e.comm.managers.plugin.PM.b(com.qq.e.comm.managers.plugin.PM):boolean");
    }

    public static void c(PM pm) {
        if (pm == null) {
            throw null;
        }
        StringBuilder m1016super = Cgoto.m1016super("PluginFile:\t");
        File file = pm.d;
        m1016super.append(file == null ? "null" : file.getAbsolutePath());
        GDTLogger.d(m1016super.toString());
        if (pm.c == null || pm.d == null) {
            pm.f = null;
            return;
        }
        try {
            pm.f = new DexClassLoader(pm.d.getAbsolutePath(), h.a(pm.b).getAbsolutePath(), null, pm.getClass().getClassLoader());
            f fVar = pm.j;
            if (fVar != null) {
                fVar.a();
            }
        } catch (Throwable th) {
            GDTLogger.e("插件ClassLoader构造发生异常", th);
            f fVar2 = pm.j;
            if (fVar2 != null) {
                fVar2.b();
            }
            com.qq.e.comm.managers.plugin.a.a(th, th.getMessage());
        }
    }

    private boolean c() {
        if (this.o) {
            return false;
        }
        if (this.i) {
            g gVar = new g(h.c(this.b), h.d(this.b));
            if (gVar.a()) {
                boolean a2 = gVar.a(h.e(this.b), h.f(this.b));
                GDTLogger.d("NextExist,Updated=" + a2);
            }
        }
        g gVar2 = new g(h.e(this.b), h.f(this.b));
        if (gVar2.a()) {
            if (gVar2.c() < SDKStatus.getBuildInPluginVersion()) {
                StringBuilder m1016super = Cgoto.m1016super("last updated plugin version =");
                m1016super.append(this.e);
                m1016super.append(";asset plugin version=");
                m1016super.append(SDKStatus.getBuildInPluginVersion());
                GDTLogger.d(m1016super.toString());
                return false;
            }
            this.c = gVar2.b();
            this.e = gVar2.c();
            this.d = h.e(this.b);
            this.p = gVar2.d();
            this.n = true;
            return true;
        }
        return false;
    }

    private void d() {
        this.n = false;
        SharedPreferences sharedPreferences = this.b.getSharedPreferences("start_crash", 0);
        if (sharedPreferences.getInt("crash_count", 0) >= 2) {
            this.o = true;
            sharedPreferences.edit().remove("crash_count").commit();
            GDTLogger.e("加载本地插件");
        }
        this.m = this.f11533a.submit(new a());
    }

    public <T> T getFactory(Class<T> cls) throws e {
        Future<Boolean> future = this.m;
        if (future != null) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        GDTLogger.d("GetFactoryInstaceforInterface:" + cls);
        ClassLoader classLoader = Sig.ASSET_PLUGIN_SIG == null ? PM.class.getClassLoader() : this.f;
        StringBuilder m1016super = Cgoto.m1016super("PluginClassLoader is parent");
        m1016super.append(PM.class.getClassLoader() == classLoader);
        GDTLogger.d(m1016super.toString());
        if (classLoader == null) {
            throw new e("Fail to init GDTADPLugin,PluginClassLoader == null;while loading factory impl for:" + cls);
        }
        try {
            String str = q.get(cls);
            if (TextUtils.isEmpty(str)) {
                throw new e("factory  implemention name is not specified for interface:" + cls.getName());
            }
            Class<?> loadClass = classLoader.loadClass(str);
            T cast = cls.cast(loadClass.getDeclaredMethod("getInstance", Context.class, JSONObject.class).invoke(loadClass, this.b, a()));
            GDTLogger.d("ServiceDelegateFactory =" + cast);
            return cast;
        } catch (Throwable th) {
            StringBuilder m1016super2 = Cgoto.m1016super("Fail to getfactory implement instance for interface:");
            m1016super2.append(cls.getName());
            throw new e(m1016super2.toString(), th);
        }
    }

    public POFactory getPOFactory() throws e {
        if (this.k == null) {
            synchronized (this) {
                if (this.k == null) {
                    try {
                        this.k = (POFactory) getFactory(POFactory.class);
                    } catch (e e) {
                        if (!this.n) {
                            throw e;
                        }
                        GDTLogger.e("插件加载错误，回退到内置版本");
                        this.o = true;
                        d();
                        this.k = (POFactory) getFactory(POFactory.class);
                    }
                }
            }
        }
        return this.k;
    }

    public int getPluginVersion() {
        Future<Boolean> future = this.m;
        if (future != null) {
            try {
                future.get();
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
        return this.e;
    }

    public boolean tryLockUpdate() {
        try {
            File b2 = h.b(this.b);
            if (!b2.exists()) {
                b2.createNewFile();
                h.a("lock", b2);
            }
            if (b2.exists()) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(b2, "rw");
                this.g = randomAccessFile;
                FileLock tryLock = randomAccessFile.getChannel().tryLock();
                this.h = tryLock;
                if (tryLock != null) {
                    this.g.writeByte(37);
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
