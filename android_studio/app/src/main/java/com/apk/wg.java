package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.widget.ScrollPaintView;

/* compiled from: ScrollPaintView.java */
/* loaded from: classes8.dex */
public class wg extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ScrollPaintView f5268do;

    public wg(ScrollPaintView scrollPaintView) {
        this.f5268do = scrollPaintView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ScrollPaintView.Cdo cdo;
        super.onAnimationEnd(animator);
        ScrollPaintView scrollPaintView = this.f5268do;
        if (scrollPaintView.f8124default || (cdo = scrollPaintView.f8137super) == null) {
            return;
        }
        ((NewBookReadActivity.Celse) cdo).m3316if();
    }
}
