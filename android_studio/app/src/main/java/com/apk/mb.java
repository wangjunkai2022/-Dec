package com.apk;

import android.view.View;
import com.biquge.ebook.app.ui.fragment.ExternalSearchFragment;

/* compiled from: ExternalSearchFragment.java */
/* loaded from: classes8.dex */
public class mb extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2998do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ExternalSearchFragment f2999if;

    public mb(ExternalSearchFragment externalSearchFragment, String str) {
        this.f2999if = externalSearchFragment;
        this.f2998do = str;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        this.f2999if.mSearchET.setText(this.f2998do);
        this.f2999if.mSearchET.setSelection(this.f2998do.length());
        this.f2999if.h();
    }
}
