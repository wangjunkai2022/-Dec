package com.apk;

import com.biquge.ebook.app.ui.fragment.UploadBookFragment;
import com.hjq.toast.ToastUtils;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: UploadBookFragment.java */
/* loaded from: classes8.dex */
public class fc implements vu {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ UploadBookFragment f1272do;

    public fc(UploadBookFragment uploadBookFragment) {
        this.f1272do = uploadBookFragment;
    }

    @Override // com.apk.vu
    /* renamed from: do */
    public void mo412do(List<String> list, boolean z) {
        ToastUtils.show((int) R.string.permissions_photo_tips);
    }

    @Override // com.apk.vu
    /* renamed from: if */
    public void mo413if(List<String> list, boolean z) {
        UploadBookFragment.m3385synchronized(this.f1272do);
    }
}
