package com.apk;

import com.biquge.ebook.app.ui.activity.SetActivity;
/* compiled from: SetActivity.java */
/* loaded from: classes8.dex */
public class k8 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2490do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ SetActivity f2491for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f2492if;

    public k8(SetActivity setActivity, String str, String str2) {
        this.f2491for = setActivity;
        this.f2490do = str;
        this.f2492if = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2491for.mBookCacheSizeTxt.setText(this.f2490do);
        this.f2491for.mComicCacheSizeTxt.setText(this.f2492if);
    }
}
