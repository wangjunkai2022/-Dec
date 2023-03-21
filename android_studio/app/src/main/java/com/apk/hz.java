package com.apk;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.biquge.ebook.app.bean.BookChapter;
import com.manhua.adapter.ComicRecyclerViewAdapter;
import com.manhua.ui.widget.ComicImageLayout;

/* compiled from: ComicRecyclerViewAdapter.java */
/* loaded from: classes8.dex */
public class hz extends bg {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ ComicRecyclerViewAdapter f2022case;

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookChapter f2023do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ TextView f2024for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicImageLayout f2025if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ ProgressBar f2026new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ LinearLayout f2027try;

    public hz(ComicRecyclerViewAdapter comicRecyclerViewAdapter, BookChapter bookChapter, ComicImageLayout comicImageLayout, TextView textView, ProgressBar progressBar, LinearLayout linearLayout) {
        this.f2022case = comicRecyclerViewAdapter;
        this.f2023do = bookChapter;
        this.f2025if = comicImageLayout;
        this.f2024for = textView;
        this.f2026new = progressBar;
        this.f2027try = linearLayout;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        this.f2022case.m3619do(true, this.f2023do, this.f2025if, this.f2024for, this.f2026new, this.f2027try);
    }
}
