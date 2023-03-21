package com.apk;

import android.view.ViewTreeObserver;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;

/* compiled from: WebSearchResultLayout.java */
/* loaded from: classes8.dex */
public class te implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebSearchResultLayout f4677do;

    public te(WebSearchResultLayout webSearchResultLayout) {
        this.f4677do = webSearchResultLayout;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f4677do.mWebSiteLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        WebSearchResultLayout webSearchResultLayout = this.f4677do;
        webSearchResultLayout.f7961new = webSearchResultLayout.mWebSiteLayout.getHeight();
        this.f4677do.m3455else();
    }
}
