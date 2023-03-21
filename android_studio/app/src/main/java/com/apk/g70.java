package com.apk;

import android.app.Activity;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.comm.util.AdError;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;

/* compiled from: GdtProviderRectangle.java */
/* loaded from: classes7.dex */
public class g70 extends f70 {

    /* renamed from: try  reason: not valid java name */
    public NativeExpressADView f1524try;

    /* compiled from: GdtProviderRectangle.java */
    /* renamed from: com.apk.g70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements NativeExpressAD.NativeExpressADListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f1525do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ x60 f1527if;

        public Cdo(String str, x60 x60Var) {
            this.f1525do = str;
            this.f1527if = x60Var;
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADClicked(NativeExpressADView nativeExpressADView) {
            g70.this.m570strictfp(this.f1525do, this.f1527if);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADClosed(NativeExpressADView nativeExpressADView) {
            if (TrAdSdk.isOpenAdClose()) {
                g70 g70Var = g70.this;
                NativeExpressADView nativeExpressADView2 = g70Var.f1524try;
                if (nativeExpressADView2 != null) {
                    nativeExpressADView2.destroy();
                    g70Var.f1524try = null;
                }
                g70.this.m558implements(this.f1525do, this.f1527if);
            }
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADExposure(NativeExpressADView nativeExpressADView) {
            g70.this.m573synchronized(this.f1525do, this.f1527if);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADLeftApplication(NativeExpressADView nativeExpressADView) {
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADLoaded(List<NativeExpressADView> list) {
            if (list.size() == 0) {
                g70.this.m547const(83008, "请求成功，但是返回的list为空", this.f1525do, this.f1527if);
                return;
            }
            g70.this.f1524try = list.get(0);
            g70.this.f1524try.render();
        }

        @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
        public void onNoAD(AdError adError) {
            g70.this.m547const(adError.getErrorCode(), adError.getErrorMsg(), this.f1525do, this.f1527if);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onRenderFail(NativeExpressADView nativeExpressADView) {
            g70.this.m547const(1, "", this.f1525do, this.f1527if);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onRenderSuccess(NativeExpressADView nativeExpressADView) {
            g70.this.m553final(nativeExpressADView, this.f1525do, this.f1527if);
        }
    }

    @Override // com.apk.f70
    public void g(Activity activity, String str, String str2, x60 x60Var) {
        b(str);
        NativeExpressAD nativeExpressAD = new NativeExpressAD(activity, new ADSize(-1, -2), str2, new Cdo(str, x60Var));
        nativeExpressAD.setVideoOption(new VideoOption.Builder().setAutoPlayPolicy(1).setAutoPlayMuted(true).build());
        nativeExpressAD.loadAD(1);
    }
}
