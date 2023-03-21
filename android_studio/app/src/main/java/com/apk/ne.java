package com.apk;

import com.biquge.ebook.app.ui.view.WebReadMenuPopup;
import com.biquge.ebook.app.ui.webread.view.WebContentView;

/* compiled from: WebContentView.java */
/* loaded from: classes8.dex */
public class ne implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebContentView.Cdo f3207do;

    public ne(WebContentView.Cdo cdo) {
        this.f3207do = cdo;
    }

    @Override // com.apk.ft
    public void onClick() {
        WebContentView webContentView = WebContentView.this;
        webContentView.f7917if = !webContentView.f7917if;
        webContentView.mWebView.getWebView().getSettings().setJavaScriptEnabled(WebContentView.this.f7917if);
        WebContentView.this.mWebView.getWebView().reload();
        WebReadMenuPopup webReadMenuPopup = WebContentView.this.f7916goto;
        if (webReadMenuPopup != null) {
            webReadMenuPopup.dismiss();
        }
    }
}
