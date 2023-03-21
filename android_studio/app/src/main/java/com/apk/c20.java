package com.apk;

import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.fragment.ComicShelfFragment;

/* compiled from: ComicShelfFragment.java */
/* loaded from: classes8.dex */
public class c20 implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f500do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ ComicShelfFragment f501for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicCollectBean f502if;

    public c20(ComicShelfFragment comicShelfFragment, String str, ComicCollectBean comicCollectBean) {
        this.f501for = comicShelfFragment;
        this.f500do = str;
        this.f502if = comicCollectBean;
    }

    @Override // com.apk.ft
    public void onClick() {
        o0 m1925else = o0.m1925else();
        this.f501for.getSupportActivity();
        m1925else.m1941try(this.f500do, this.f502if.getName());
    }
}
