package com.apk;

import com.biquge.ebook.app.ui.activity.MyAccountActivity;
import com.hjq.toast.ToastUtils;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: MyAccountActivity.java */
/* loaded from: classes8.dex */
public class d8 implements vu {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ MyAccountActivity f834do;

    public d8(MyAccountActivity myAccountActivity) {
        this.f834do = myAccountActivity;
    }

    @Override // com.apk.vu
    /* renamed from: do  reason: not valid java name */
    public void mo412do(List<String> list, boolean z) {
        ToastUtils.show((int) R.string.permissions_photo_tips);
    }

    @Override // com.apk.vu
    /* renamed from: if  reason: not valid java name */
    public void mo413if(List<String> list, boolean z) {
        MyAccountActivity.l(this.f834do);
    }
}
