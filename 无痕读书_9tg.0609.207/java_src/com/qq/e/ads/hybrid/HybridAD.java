package com.qq.e.ads.hybrid;

import android.content.Context;
import com.qq.e.ads.AbstractAD;
import com.qq.e.comm.constants.ErrorCode;
import com.qq.e.comm.pi.HADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes8.dex */
public class HybridAD extends AbstractAD<HADI> implements HADI {
    public HybridADListener f;
    public CountDownLatch g = new CountDownLatch(1);
    public HybridADSetting h;

    public HybridAD(Context context, HybridADSetting hybridADSetting, HybridADListener hybridADListener) {
        this.h = hybridADSetting;
        this.f = hybridADListener;
        a(context, "NO_POS_ID");
    }

    public HADI a(POFactory pOFactory) {
        return pOFactory.getHybridAD(this.h, this.f);
    }

    @Override // com.qq.e.ads.AbstractAD
    public /* bridge */ /* synthetic */ HADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return a(pOFactory);
    }

    @Override // com.qq.e.ads.AbstractAD
    public /* bridge */ /* synthetic */ void a(HADI hadi) {
        c();
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i) {
        HybridADListener hybridADListener = this.f;
        if (hybridADListener != null) {
            hybridADListener.onError(AdErrorConvertor.formatErrorCode(i));
        }
        this.g.countDown();
    }

    public void c() {
        this.g.countDown();
    }

    @Override // com.qq.e.comm.pi.HADI
    public void loadUrl(final String str) {
        if (a()) {
            if (!b()) {
                new Thread(new Runnable() { // from class: com.qq.e.ads.hybrid.HybridAD.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            HybridAD.this.g.await(30L, TimeUnit.SECONDS);
                            if (!HybridAD.this.b() || HybridAD.this.f11492a == null) {
                                GDTLogger.e("初始化错误：广告实例未被初始化");
                                HybridAD.this.a((int) ErrorCode.INIT_ERROR);
                            } else {
                                ((HADI) HybridAD.this.f11492a).loadUrl(str);
                            }
                        } catch (InterruptedException unused) {
                            GDTLogger.e("初始化错误：广告实例未被初始化");
                            HybridAD.this.a((int) ErrorCode.INIT_ERROR);
                        }
                    }
                }).start();
                return;
            }
            T t = this.f11492a;
            if (t != 0) {
                ((HADI) t).loadUrl(str);
            } else {
                a("loadUrl");
            }
        }
    }
}
