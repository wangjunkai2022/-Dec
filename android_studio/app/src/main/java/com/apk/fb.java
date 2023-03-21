package com.apk;

import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.fragment.BookShelfFragment;

/* compiled from: BookShelfFragment.java */
/* loaded from: classes8.dex */
public class fb implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f1269do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ BookShelfFragment f1270for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ CollectBook f1271if;

    public fb(BookShelfFragment bookShelfFragment, String str, CollectBook collectBook) {
        this.f1270for = bookShelfFragment;
        this.f1269do = str;
        this.f1271if = collectBook;
    }

    @Override // com.apk.ft
    public void onClick() {
        o0 m1925else = o0.m1925else();
        this.f1270for.getSupportActivity();
        m1925else.m1937new(this.f1269do, this.f1271if.getName());
    }
}
