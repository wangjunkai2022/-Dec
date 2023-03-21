package com.apk;

import com.biquge.ebook.app.ui.webread.ui.WebReadActivity;

/* compiled from: WebReadActivity.java */
/* loaded from: classes8.dex */
public class yd implements v60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f5907do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ WebReadActivity f5908if;

    public yd(WebReadActivity webReadActivity, String str) {
        this.f5908if = webReadActivity;
        this.f5907do = str;
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
    }

    @Override // com.apk.v60
    public void onAdClick() {
    }

    @Override // com.apk.v60
    public void onAdClose() {
        c60 c60Var = this.f5908if.f7822break;
        if (c60Var != null) {
            c60Var.m312else();
        }
    }

    @Override // com.apk.v60
    public void onAdLoaded() {
    }

    @Override // com.apk.v60
    public void onAdShow() {
        i.m1173case(this.f5907do);
        i.m1174do(this.f5907do);
    }

    @Override // com.apk.v60
    public void onVideoCached() {
        WebReadActivity webReadActivity = this.f5908if;
        c60 c60Var = webReadActivity.f7822break;
        if (c60Var != null) {
            c60Var.m313goto(webReadActivity);
        }
    }
}
