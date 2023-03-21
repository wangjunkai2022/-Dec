package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.widget.ScrollPaintView;

/* compiled from: ScrollPaintView.java */
/* loaded from: classes8.dex */
public class ug extends AnimatorListenerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ScrollPaintView f4888do;

    public ug(ScrollPaintView scrollPaintView) {
        this.f4888do = scrollPaintView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ScrollPaintView.Cdo cdo;
        super.onAnimationEnd(animator);
        ScrollPaintView scrollPaintView = this.f4888do;
        if (scrollPaintView.f8124default || (cdo = scrollPaintView.f8137super) == null) {
            return;
        }
        ((NewBookReadActivity.Celse) cdo).m3316if();
    }
}
