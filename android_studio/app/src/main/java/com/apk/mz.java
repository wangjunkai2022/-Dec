package com.apk;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.biquge.ebook.app.bean.BookChapter;
import com.manhua.ui.widget.barrage.BarrageView;
import com.manhua.ui.widget.photoview.PhotoView;

/* compiled from: ComicViewPagerAdapter.java */
/* loaded from: classes8.dex */
public class mz extends bg {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ LinearLayout f3137case;

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookChapter f3138do;

    /* renamed from: else  reason: not valid java name */
    public final /* synthetic */ lz f3139else;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ BarrageView f3140for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ PhotoView f3141if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ ProgressBar f3142new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ FrameLayout f3143try;

    public mz(lz lzVar, BookChapter bookChapter, PhotoView photoView, BarrageView barrageView, ProgressBar progressBar, FrameLayout frameLayout, LinearLayout linearLayout) {
        this.f3139else = lzVar;
        this.f3138do = bookChapter;
        this.f3141if = photoView;
        this.f3140for = barrageView;
        this.f3142new = progressBar;
        this.f3143try = frameLayout;
        this.f3137case = linearLayout;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        this.f3139else.m1672for(true, this.f3138do, this.f3141if, this.f3140for, this.f3142new, this.f3143try, this.f3137case);
    }
}
