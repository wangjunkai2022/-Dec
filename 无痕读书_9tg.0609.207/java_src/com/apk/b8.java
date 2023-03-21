package com.apk;

import com.biquge.ebook.app.ui.activity.MainActivity;
/* compiled from: MainActivity.java */
/* loaded from: classes8.dex */
public class b8 implements v60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f263do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ MainActivity f264if;

    public b8(MainActivity mainActivity, String str) {
        this.f264if = mainActivity;
        this.f263do = str;
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
        if (v.m2734do() != null) {
            this.f264if.f6695static = false;
            tt.f4763do.putLong("SP_SHOW_MAIN_PUPINSERT_AD_TIME_KEY", System.currentTimeMillis());
            return;
        }
        throw null;
    }

    @Override // com.apk.v60
    public void onAdClick() {
    }

    @Override // com.apk.v60
    public void onAdClose() {
        c60 c60Var = this.f264if.f6700throws;
        if (c60Var != null) {
            c60Var.m312else();
        }
        this.f264if.f6695static = false;
        tt.f4763do.putLong("SP_SHOW_MAIN_PUPINSERT_AD_TIME_KEY", System.currentTimeMillis());
    }

    @Override // com.apk.v60
    public void onAdLoaded() {
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.v60
    public void onAdShow() {
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.v60
    public void onVideoCached() {
        MainActivity mainActivity = this.f264if;
        c60 c60Var = mainActivity.f6700throws;
        if (c60Var != null) {
            c60Var.m313goto(mainActivity);
        }
    }
}
