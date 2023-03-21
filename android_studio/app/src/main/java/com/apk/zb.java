package com.apk;

import com.biquge.ebook.app.ui.fragment.MainStoreFragment;
import com.biquge.ebook.app.widget.StoreSearchGuidePopupView;
import com.lxj.xpopup.core.BasePopupView;

/* compiled from: MainStoreFragment.java */
/* loaded from: classes8.dex */
public class zb extends yv {
    public zb(MainStoreFragment mainStoreFragment) {
    }

    @Override // com.apk.yv
    /* renamed from: do */
    public boolean mo3121do(BasePopupView basePopupView) {
        return ((StoreSearchGuidePopupView) basePopupView).m3495if();
    }

    @Override // com.apk.yv
    /* renamed from: for */
    public void mo397for(BasePopupView basePopupView) {
        tt.f4763do.putBoolean("SP_STORE_GUIDE_KEY", false);
        tt.f4763do.putBoolean("SP_STORE_TAB_MODEL_GUIDE_KEY", false);
    }
}
