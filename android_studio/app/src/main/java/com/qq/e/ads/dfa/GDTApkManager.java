package com.qq.e.ads.dfa;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.qq.e.comm.a;
import com.qq.e.comm.managers.b;
import com.qq.e.comm.pi.DFA;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.GDTLogger;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes8.dex */
public class GDTApkManager {

    /* renamed from: a  reason: collision with root package name */
    public DFA f11503a;
    public boolean b = false;
    public boolean c = false;
    public AtomicInteger d = new AtomicInteger(0);
    public Context e;

    public GDTApkManager(Context context, IGDTApkListener iGDTApkListener) {
        if (b.b().d()) {
            a(context, b.b().a(), iGDTApkListener);
        }
    }

    private void a(Context context, String str, final IGDTApkListener iGDTApkListener) {
        if (TextUtils.isEmpty(str) || context == null) {
            GDTLogger.e("初始化错误：GDTApkManager 构造失败，Context和appID不能为空");
        } else if (!a.a(context)) {
            GDTLogger.e("初始化错误：必需的 Activity/Service/Permission 没有在AndroidManifest.xml中声明");
        } else {
            this.b = true;
            this.e = context;
            b.g.execute(new Runnable() { // from class: com.qq.e.ads.dfa.GDTApkManager.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final POFactory pOFactory = b.b().c().getPOFactory();
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.qq.e.ads.dfa.GDTApkManager.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    if (pOFactory != null) {
                                        GDTApkManager.this.f11503a = b.b().c().getPOFactory().getGDTApkDelegate(iGDTApkListener);
                                        GDTApkManager.this.c = true;
                                        while (GDTApkManager.this.d.getAndDecrement() > 0) {
                                            GDTApkManager.this.loadGDTApk();
                                        }
                                    }
                                } finally {
                                    try {
                                    } finally {
                                    }
                                }
                            }
                        });
                    } catch (Throwable th) {
                        GDTLogger.e("初始化错误：初始化时发生异常", th);
                    }
                }
            });
        }
    }

    public final void loadGDTApk() {
        if (this.b) {
            if (!this.c) {
                this.d.incrementAndGet();
                return;
            }
            DFA dfa = this.f11503a;
            if (dfa != null) {
                dfa.loadGDTApk();
            } else {
                GDTLogger.e("调用loadGDTApk失败，实例未被正常初始化");
            }
        }
    }

    public final void startInstall(GDTApk gDTApk) {
        DFA dfa = this.f11503a;
        if (dfa != null) {
            dfa.startInstall(this.e, gDTApk);
        }
    }
}
