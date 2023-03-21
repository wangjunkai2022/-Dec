package com.qq.e.ads;

import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.comm.pi.ADI;
import com.qq.e.comm.util.AdError;

/* loaded from: classes8.dex */
public abstract class NativeAbstractAD<T extends ADI> extends AbstractAD<T> {
    public DownAPPConfirmPolicy f;

    /* loaded from: classes8.dex */
    public interface BasicADListener {
        void onNoAD(AdError adError);
    }

    public void a(T t) {
        DownAPPConfirmPolicy downAPPConfirmPolicy = this.f;
        if (downAPPConfirmPolicy != null) {
            setDownAPPConfirmPolicy(downAPPConfirmPolicy);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.qq.e.ads.AbstractAD
    public /* bridge */ /* synthetic */ void a(Object obj) {
        a((NativeAbstractAD<T>) ((ADI) obj));
    }

    public void setDownAPPConfirmPolicy(DownAPPConfirmPolicy downAPPConfirmPolicy) {
        this.f = downAPPConfirmPolicy;
        T t = this.f11492a;
        if (t == 0 || downAPPConfirmPolicy == null) {
            return;
        }
        ((ADI) t).setDownAPPConfirmPolicy(downAPPConfirmPolicy);
    }
}
