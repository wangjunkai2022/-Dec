package com.apk;

import com.manhua.ui.fragment.ComicDetailDirFragment;

/* compiled from: ComicDetailDirFragment.java */
/* loaded from: classes8.dex */
public class p10 implements v60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f3561do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicDetailDirFragment f3562if;

    public p10(ComicDetailDirFragment comicDetailDirFragment, String str) {
        this.f3562if = comicDetailDirFragment;
        this.f3561do = str;
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
        c60 c60Var = this.f3562if.f9913new;
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
        String str = this.f3561do;
        if (m2734do != null) {
            i.m1173case(str);
            i.m1174do(this.f3561do);
            return;
        }
        throw null;
    }

    @Override // com.apk.v60
    public void onVideoCached() {
        ComicDetailDirFragment comicDetailDirFragment = this.f3562if;
        c60 c60Var = comicDetailDirFragment.f9913new;
        if (c60Var != null) {
            c60Var.m313goto(comicDetailDirFragment.getSupportActivity());
        }
    }
}
