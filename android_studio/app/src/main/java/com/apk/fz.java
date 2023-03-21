package com.apk;

import android.view.MotionEvent;
import android.view.View;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.adapter.ComicGroupAdapter;

/* compiled from: ComicGroupAdapter.java */
/* loaded from: classes8.dex */
public class fz implements View.OnTouchListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BaseViewHolder f1480do;

    public fz(ComicGroupAdapter comicGroupAdapter, BaseViewHolder baseViewHolder) {
        this.f1480do = baseViewHolder;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f1480do.itemView.onTouchEvent(motionEvent);
    }
}
