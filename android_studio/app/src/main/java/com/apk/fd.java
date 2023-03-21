package com.apk;

import com.biquge.ebook.app.ui.view.RedBgImageDialog;
import com.hjq.toast.ToastUtils;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: RedBgImageDialog.java */
/* loaded from: classes8.dex */
public class fd implements vu {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ RedBgImageDialog f1273do;

    public fd(RedBgImageDialog redBgImageDialog) {
        this.f1273do = redBgImageDialog;
    }

    @Override // com.apk.vu
    /* renamed from: do */
    public void mo412do(List<String> list, boolean z) {
        ToastUtils.show((int) R.string.permissions_photo_tips);
    }

    @Override // com.apk.vu
    /* renamed from: if */
    public void mo413if(List<String> list, boolean z) {
        RedBgImageDialog.m3419break(this.f1273do);
    }
}
