package com.apk;

import com.manhua.ui.activity.ComicGroupDetailActivity;

/* compiled from: ComicGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class e10 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicGroupDetailActivity f987do;

    public e10(ComicGroupDetailActivity comicGroupDetailActivity) {
        this.f987do = comicGroupDetailActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        ComicGroupDetailActivity comicGroupDetailActivity = this.f987do;
        comicGroupDetailActivity.f9708goto.showAtLocation(comicGroupDetailActivity.mMoreView, 80, 0, 0);
        this.f987do.f9708goto.m3066do(0, -1);
    }
}
