package com.apk;

import android.view.MotionEvent;
import android.view.View;
import com.biquge.ebook.app.adapter.BookGroupAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
/* compiled from: BookGroupAdapter.java */
/* loaded from: classes8.dex */
public class j implements View.OnTouchListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BaseViewHolder f2267do;

    public j(BookGroupAdapter bookGroupAdapter, BaseViewHolder baseViewHolder) {
        this.f2267do = baseViewHolder;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f2267do.itemView.onTouchEvent(motionEvent);
    }
}
