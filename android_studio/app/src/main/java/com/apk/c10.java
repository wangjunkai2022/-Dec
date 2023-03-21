package com.apk;

import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicGroupDetailActivity;

/* compiled from: ComicGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class c10 implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f494do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ ComicGroupDetailActivity f495for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicCollectBean f496if;

    public c10(ComicGroupDetailActivity comicGroupDetailActivity, String str, ComicCollectBean comicCollectBean) {
        this.f495for = comicGroupDetailActivity;
        this.f494do = str;
        this.f496if = comicCollectBean;
    }

    @Override // com.apk.ft
    public void onClick() {
        o0.m1925else().m1937new(this.f494do, this.f496if.getName());
    }
}
