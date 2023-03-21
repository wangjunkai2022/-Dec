package com.biquge.ebook.app.app;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import androidx.multidex.MultiDex;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.apk.Celse;
import com.apk.Cstatic;
import com.apk.aq0;
import com.apk.da;
import com.apk.dy;
import com.apk.eq0;
import com.apk.fy;
import com.apk.ii;
import com.apk.kr0;
import com.apk.lq0;
import com.apk.m0;
import com.apk.n;
import com.apk.nd0;
import com.apk.o;
import com.apk.rq0;
import com.apk.t;
import com.apk.tr0;
import com.apk.tw;
import com.apk.w0;
import com.apk.xg0;
import com.apk.xw;
import com.apk.yp0;
import com.apk.ys;
import com.apk.ze;
import com.apk.zp0;
import com.apk.zu;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.CacheBean;
import com.biquge.ebook.app.bean.SkinModel;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.hjq.toast.ToastUtils;
import com.hjq.toast.style.ToastAliPayStyle;
import com.jni.crypt.project.CryptDesManager;
import com.manhua.ui.activity.ComicReadActivity;
import com.swl.gg.sdk.TrAdSdk;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.mmkv.MMKV;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class AppContext extends Application {

    /* renamed from: case  reason: not valid java name */
    public static AppContext f6392case;

    /* renamed from: do  reason: not valid java name */
    public Cstatic f6393do;

    /* renamed from: for  reason: not valid java name */
    public Cif f6394for;

    /* renamed from: if  reason: not valid java name */
    public boolean f6395if;

    /* renamed from: new  reason: not valid java name */
    public int f6396new = -1;

    /* renamed from: try  reason: not valid java name */
    public boolean f6397try;

    /* renamed from: com.biquge.ebook.app.app.AppContext$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements n.Cif {
        public Cdo() {
        }
    }

    /* renamed from: com.biquge.ebook.app.app.AppContext$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends Handler {

        /* renamed from: do  reason: not valid java name */
        public final Cstatic f6399do;

        public Cif(Cstatic cstatic, Cdo cdo) {
            super(Looper.getMainLooper());
            this.f6399do = cstatic;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                if (message.what != 10086 || this.f6399do == null) {
                    return;
                }
                this.f6399do.m2551do((Activity) message.obj);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3292do() {
        n nVar = new n();
        nVar.f3144do = new Cdo();
        registerActivityLifecycleCallbacks(nVar.f3145if);
    }

    /* renamed from: for  reason: not valid java name */
    public void m3293for(boolean z) {
        this.f6395if = z;
        if (!z) {
            zu.f6262do = lq0.m1660do(this, tr0.m2617do(R.color.main_tab_txt_color));
        }
        TrAdSdk.setDayNightTheme(!z);
    }

    /* renamed from: if  reason: not valid java name */
    public /* synthetic */ void m3294if() {
        CacheBean m648for;
        Process.setThreadPriority(10);
        Celse.m649if(this);
        m3292do();
        t.m2568if(null);
        CrashReport.initCrashReport(getApplicationContext(), "327ca996fe", false);
        if (ze.m3179private("SP_QY", true)) {
            ze.O("SP_QY", false);
            SharedPreferences sharedPreferences = getSharedPreferences(getPackageName(), 0);
            if (sharedPreferences != null) {
                for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                    String key = entry.getKey();
                    if (entry.getValue() instanceof String) {
                        ze.S(key, (String) entry.getValue());
                    } else if (entry.getValue() instanceof Boolean) {
                        ze.O(key, ((Boolean) entry.getValue()).booleanValue());
                    } else if (entry.getValue() instanceof Integer) {
                        ze.Q(key, ((Integer) entry.getValue()).intValue());
                    } else if (entry.getValue() instanceof Float) {
                        ze.P(key, ((Float) entry.getValue()).floatValue());
                    } else if (entry.getValue() instanceof Long) {
                        ze.R(key, ((Long) entry.getValue()).longValue());
                    }
                }
            }
        }
        if (!ze.D("SP_AD_CACHE_DATA_KEY") && (m648for = Celse.m648for("SP_AD_CACHE_DATA_KEY")) != null) {
            ze.S("SP_AD_CACHE_DATA_KEY", m648for.getData());
        }
        m0.m1676case();
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f6392case = this;
        LitePal.initialize(this);
        ys.f6061do = this;
        ToastUtils.init(this, new ToastAliPayStyle(this));
        MMKV.initialize(this);
        CryptDesManager.init(this);
        fy fyVar = new fy();
        fyVar.m897for(AsyncHttpClient.HEADER_CONTENT_TYPE, "application/x-www-form-urlencoded");
        xg0.Cdo cdo = new xg0.Cdo();
        cdo.m2994if(20000L, TimeUnit.MILLISECONDS);
        cdo.m2995new(20000L, TimeUnit.MILLISECONDS);
        cdo.m2992do(FragmentStateAdapter.GRACE_WINDOW_TIME_MS, TimeUnit.MILLISECONDS);
        String str = null;
        if (!w0.m2893switch()) {
            Proxy proxy = Proxy.NO_PROXY;
            if (!nd0.m1870do(proxy, cdo.f5576class)) {
                cdo.f5581extends = null;
            }
            cdo.f5576class = proxy;
        }
        dy.Cfor m517do = dy.m517do();
        cdo.m2993for(m517do.f967do, m517do.f968if);
        tw twVar = tw.Cif.f4772do;
        twVar.f4766do = this;
        twVar.f4768for = new xg0(cdo);
        twVar.f4765case = xw.NO_CACHE;
        twVar.m2623if(-1L);
        twVar.m2622for(0);
        if (twVar.f4770new == null) {
            twVar.f4770new = new fy();
        }
        fy fyVar2 = twVar.f4770new;
        if (fyVar2 != null) {
            LinkedHashMap<String, String> linkedHashMap = fyVar.f1479do;
            if (linkedHashMap != null && !linkedHashMap.isEmpty()) {
                fyVar2.f1479do.putAll(fyVar.f1479do);
            }
            if (da.m438while()) {
                str = "night";
                this.f6395if = true;
                zu.f6266try = true;
            } else {
                int m3174instanceof = ze.m3174instanceof("APP_SKIN_STYLE_KEY", 0);
                if (m3174instanceof != 0) {
                    str = ((SkinModel) ((ArrayList) ze.i()).get(m3174instanceof)).getTag();
                    this.f6395if = "black".equals(str);
                }
            }
            if (yp0.f6038class == null) {
                synchronized (yp0.class) {
                    if (yp0.f6038class == null) {
                        yp0.f6038class = new yp0(this);
                    }
                }
            }
            if (kr0.f2656new == null) {
                synchronized (kr0.class) {
                    if (kr0.f2656new == null) {
                        kr0.f2656new = new kr0(getApplicationContext());
                    }
                }
            }
            if (zp0.f6225new == null) {
                synchronized (zp0.class) {
                    if (zp0.f6225new == null) {
                        zp0.f6225new = new zp0(this);
                    }
                }
            }
            yp0 yp0Var = yp0.f6038class;
            yp0Var.f6039break = false;
            String name = NewBookReadActivity.class.getName();
            if (yp0Var.f6041catch == null) {
                yp0Var.f6041catch = new HashMap<>();
            }
            yp0Var.f6041catch.put(name, "");
            String name2 = ComicReadActivity.class.getName();
            if (yp0Var.f6041catch == null) {
                yp0Var.f6041catch = new HashMap<>();
            }
            yp0Var.f6041catch.put(name2, "");
            aq0 aq0Var = new aq0();
            yp0Var.f6048try.add(aq0Var);
            yp0Var.f6040case.add(aq0Var);
            rq0 rq0Var = new rq0();
            if (rq0Var instanceof eq0) {
                yp0Var.f6048try.add((eq0) rq0Var);
            }
            yp0Var.f6040case.add(rq0Var);
            yp0Var.m3111if(str, 1);
            if (!this.f6395if) {
                zu.f6262do = lq0.m1660do(this, tr0.m2617do(R.color.main_tab_txt_color));
            }
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.m
                @Override // java.lang.Runnable
                public final void run() {
                    AppContext.this.m3294if();
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
            }
            m0.m1682if(true);
            return;
        }
        throw null;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        ii.m1220new(this).m1222for();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (i == 20) {
            ii.m1220new(this).m1222for();
        }
    }
}
