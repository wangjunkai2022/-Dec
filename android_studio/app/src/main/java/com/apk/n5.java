package com.apk;

import android.view.View;
import com.lxj.xpopup.core.BasePopupView;
import kimi.wuhends.ebooks.R;

/* compiled from: WelComePresenter.java */
/* loaded from: classes8.dex */
public class n5 extends yv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ q5 f3182do;

    /* compiled from: WelComePresenter.java */
    /* renamed from: com.apk.n5$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BasePopupView f3183do;

        public Cdo(BasePopupView basePopupView) {
            this.f3183do = basePopupView;
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (v.m2734do() != null) {
                this.f3183do.dismiss();
                n5.this.f3182do.m2107new();
                return;
            }
            throw null;
        }
    }

    public n5(q5 q5Var) {
        this.f3182do = q5Var;
    }

    @Override // com.apk.yv
    /* renamed from: if */
    public void mo308if(BasePopupView basePopupView) {
        basePopupView.findViewById(R.id.welcome_user_agreen_btn).setOnClickListener(new Cdo(basePopupView));
    }

    @Override // com.apk.yv
    /* renamed from: new */
    public void mo398new(BasePopupView basePopupView) {
        tt.f4763do.putBoolean("SP_SHOW_AGREENMENT_KEY", true);
    }
}
