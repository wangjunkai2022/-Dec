package com.apk;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.biquge.ebook.app.ui.view.SlideRecyclerView;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;
/* compiled from: SlideRecyclerView.java */
/* loaded from: classes8.dex */
public class gd extends RecyclerView.OnScrollListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SlideRecyclerView f1553do;

    public gd(SlideRecyclerView slideRecyclerView) {
        this.f1553do = slideRecyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onScrolled(recyclerView, i, i2);
        SlideRecyclerView slideRecyclerView = this.f1553do;
        if (slideRecyclerView.f7783new) {
            if (i2 <= slideRecyclerView.f7780do) {
                if (i2 < 0) {
                    slideRecyclerView.canScrollVertically(-1);
                }
            } else if (slideRecyclerView.f7781for) {
                slideRecyclerView.f7781for = false;
                SlideRecyclerView.Cdo cdo = slideRecyclerView.f7782if;
                if (cdo != null) {
                    WebSearchResultLayout webSearchResultLayout = ((ue) cdo).f4873do;
                    webSearchResultLayout.m3457goto(webSearchResultLayout.f7953class, 250, true, false);
                }
            }
        }
    }
}
