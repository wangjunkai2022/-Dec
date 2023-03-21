package com.apk;

import com.biquge.ebook.app.ui.activity.MyAccountActivity;
import com.hjq.toast.ToastUtils;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: MyAccountActivity.java */
/* loaded from: classes8.dex */
public class e8 implements vu {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ MyAccountActivity f1024do;

    public e8(MyAccountActivity myAccountActivity) {
        this.f1024do = myAccountActivity;
    }

    @Override // com.apk.vu
    /* renamed from: do */
    public void mo412do(List<String> list, boolean z) {
        ToastUtils.show((int) R.string.permissions_camera_tips);
    }

    @Override // com.apk.vu
    /* renamed from: if */
    public void mo413if(List<String> list, boolean z) {
        MyAccountActivity.m(this.f1024do);
    }
}
