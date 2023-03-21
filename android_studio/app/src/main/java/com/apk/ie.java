package com.apk;

import com.biquge.ebook.app.ui.webread.view.WebContentPopup;
import com.biquge.ebook.app.ui.webread.view.WebContentView;

/* compiled from: WebContentPopup.java */
/* loaded from: classes8.dex */
public class ie implements jd {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebContentPopup f2074do;

    public ie(WebContentPopup webContentPopup) {
        this.f2074do = webContentPopup;
    }

    @Override // com.apk.jd
    /* renamed from: continue  reason: not valid java name */
    public void mo1188continue() {
        WebContentView webContentView = this.f2074do.f7904else;
        if (webContentView != null) {
            webContentView.setVisibility(4);
        }
        this.f2074do.dismiss();
    }
}
