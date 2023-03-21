package com.apk;

import android.app.Activity;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.nativ.ADSize;
import com.qq.e.ads.nativ.NativeExpressAD;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.qq.e.comm.util.AdError;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;
/* compiled from: GdtProviderBangDan.java */
/* loaded from: classes7.dex */
public class i60 extends f70 {

    /* renamed from: try  reason: not valid java name */
    public NativeExpressADView f2054try;

    /* compiled from: GdtProviderBangDan.java */
    /* renamed from: com.apk.i60$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements NativeExpressAD.NativeExpressADListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f2055do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ x60 f2057if;

        public Cdo(String str, x60 x60Var) {
            this.f2055do = str;
            this.f2057if = x60Var;
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADClicked(NativeExpressADView nativeExpressADView) {
            i60.this.m570strictfp(this.f2055do, this.f2057if);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADClosed(NativeExpressADView nativeExpressADView) {
            if (TrAdSdk.isOpenAdClose()) {
                i60 i60Var = i60.this;
                NativeExpressADView nativeExpressADView2 = i60Var.f2054try;
                if (nativeExpressADView2 != null) {
                    nativeExpressADView2.destroy();
                    i60Var.f2054try = null;
                }
                i60.this.m558implements(this.f2055do, this.f2057if);
            }
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADExposure(NativeExpressADView nativeExpressADView) {
            i60.this.m573synchronized(this.f2055do, this.f2057if);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADLeftApplication(NativeExpressADView nativeExpressADView) {
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onADLoaded(List<NativeExpressADView> list) {
            if (list.size() == 0) {
                i60.this.m547const(83008, "请求成功，但是返回的list为空", this.f2055do, this.f2057if);
                return;
            }
            i60.this.f2054try = list.get(0);
            i60.this.f2054try.render();
        }

        @Override // com.qq.e.ads.NativeAbstractAD.BasicADListener
        public void onNoAD(AdError adError) {
            i60.this.m547const(adError.getErrorCode(), adError.getErrorMsg(), this.f2055do, this.f2057if);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onRenderFail(NativeExpressADView nativeExpressADView) {
            i60.this.m547const(-1, "", this.f2055do, this.f2057if);
        }

        @Override // com.qq.e.ads.nativ.NativeExpressAD.NativeExpressADListener
        public void onRenderSuccess(NativeExpressADView nativeExpressADView) {
            i60.this.m553final(nativeExpressADView, this.f2055do, this.f2057if);
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
