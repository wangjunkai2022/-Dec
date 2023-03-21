package com.apk;

import com.biquge.ebook.app.ui.fragment.BookShelfFragment;
/* compiled from: lambda */
/* loaded from: classes8.dex */
public final /* synthetic */ class ma implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookShelfFragment f2994do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f2995if;

    public /* synthetic */ ma(BookShelfFragment bookShelfFragment, boolean z) {
        this.f2994do = bookShelfFragment;
        this.f2995if = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2994do.w(this.f2995if);
    }
}
