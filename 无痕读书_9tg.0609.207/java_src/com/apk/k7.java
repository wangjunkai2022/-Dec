package com.apk;

import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.BookGroupDetailActivity;
/* compiled from: BookGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class k7 implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2485do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ BookGroupDetailActivity f2486for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ CollectBook f2487if;

    public k7(BookGroupDetailActivity bookGroupDetailActivity, String str, CollectBook collectBook) {
        this.f2486for = bookGroupDetailActivity;
        this.f2485do = str;
        this.f2487if = collectBook;
    }

    @Override // com.apk.ft
    public void onClick() {
        o0.m1925else().m1937new(this.f2485do, this.f2487if.getName());
    }
}
