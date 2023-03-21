package com.apk;

import android.view.KeyEvent;
import android.view.View;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;

/* compiled from: ProgressBarWebView.java */
/* loaded from: classes8.dex */
public class oh implements View.OnKeyListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ProgressBarWebView f3416do;

    public oh(ProgressBarWebView progressBarWebView) {
        this.f3416do = progressBarWebView;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0 && i == 4 && this.f3416do.f8308if.canGoBack()) {
            this.f3416do.f8308if.goBack();
            this.f3416do.m3533do();
            return true;
        }
        return false;
    }
}
