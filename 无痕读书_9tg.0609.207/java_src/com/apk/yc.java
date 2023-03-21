package com.apk;

import com.biquge.ebook.app.ui.activity.RewardVideoActivity;
import com.biquge.ebook.app.ui.view.NovelBatchCachePopup;
/* compiled from: NovelBatchCachePopup.java */
/* loaded from: classes8.dex */
public class yc implements uv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NovelBatchCachePopup f5905do;

    public yc(NovelBatchCachePopup novelBatchCachePopup) {
        this.f5905do = novelBatchCachePopup;
    }

    @Override // com.apk.uv
    public void onConfirm() {
        RewardVideoActivity.r(this.f5905do.getContext(), 14);
    }
}
