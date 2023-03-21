package com.apk;

import com.biquge.ebook.app.ui.fragment.BookDetailDirFragment;
/* compiled from: BookDetailDirFragment.java */
/* loaded from: classes8.dex */
public class ua implements v60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f4863do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ BookDetailDirFragment f4864if;

    public ua(BookDetailDirFragment bookDetailDirFragment, String str) {
        this.f4864if = bookDetailDirFragment;
        this.f4863do = str;
    }

    @Override // com.apk.b70
    /* renamed from: case */
    public void mo157case() {
    }

    @Override // com.apk.b70
    /* renamed from: else */
    public void mo158else() {
    }

    @Override // com.apk.b70
    /* renamed from: if */
    public void mo159if(int i, String str) {
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.v60
    public void onAdClick() {
    }

    @Override // com.apk.v60
    public void onAdClose() {
        c60 c60Var = this.f4864if.f7210new;
        if (c60Var != null) {
            c60Var.m312else();
        }
    }

    @Override // com.apk.v60
    public void onAdLoaded() {
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.v60
    public void onAdShow() {
        v m2734do = v.m2734do();
        String str = this.f4863do;
        if (m2734do != null) {
            i.m1173case(str);
            i.m1174do(this.f4863do);
            return;
        }
        throw null;
    }

    @Override // com.apk.v60
    public void onVideoCached() {
        BookDetailDirFragment bookDetailDirFragment = this.f4864if;
        c60 c60Var = bookDetailDirFragment.f7210new;
        if (c60Var != null) {
            c60Var.m313goto(bookDetailDirFragment.getSupportActivity());
        }
    }
}
