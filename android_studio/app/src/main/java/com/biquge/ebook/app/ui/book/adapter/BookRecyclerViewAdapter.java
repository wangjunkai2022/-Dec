package com.biquge.ebook.app.ui.book.adapter;

import android.app.Activity;
import android.view.View;
import com.apk.Cfinally;
import com.apk.Cimport;
import com.apk.w0;
import com.biquge.ebook.app.bean.BookChapter;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookRecyclerViewAdapter extends BaseMultiItemQuickAdapter<BookChapter, BaseViewHolder> {

    /* renamed from: case  reason: not valid java name */
    public final Cimport f7154case;

    /* renamed from: do  reason: not valid java name */
    public final boolean f7155do;

    /* renamed from: else  reason: not valid java name */
    public final View.OnClickListener f7156else;

    /* renamed from: for  reason: not valid java name */
    public boolean f7157for;

    /* renamed from: goto  reason: not valid java name */
    public View.OnTouchListener f7158goto;

    /* renamed from: if  reason: not valid java name */
    public int f7159if;

    /* renamed from: new  reason: not valid java name */
    public final boolean f7160new;

    /* renamed from: this  reason: not valid java name */
    public View.OnClickListener f7161this;

    /* renamed from: try  reason: not valid java name */
    public final Activity f7162try;

    /* renamed from: com.biquge.ebook.app.ui.book.adapter.BookRecyclerViewAdapter$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View.OnClickListener onClickListener = BookRecyclerViewAdapter.this.f7161this;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    public BookRecyclerViewAdapter(Activity activity, int i, Cimport cimport) {
        super(null);
        this.f7156else = new Cdo();
        this.f7162try = activity;
        this.f7159if = i;
        this.f7154case = cimport;
        boolean z = true;
        addItemType(1, R.layout.item_read_list_content_layout);
        if (cimport != null && cimport.f2191try) {
            addItemType(2, R.layout.readd_chapter_mid_wrap_layout);
        } else {
            addItemType(2, R.layout.readd_chapter_mid_layout);
        }
        addItemType(3, R.layout.readd_chapter_mid_wrap_layout);
        if (!Cfinally.m797else().m807extends() && !Cfinally.m797else().m806default() && !Cfinally.m797else().m826throw()) {
            z = false;
        }
        this.f7155do = z;
        this.f7160new = w0.m2890static();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0168, code lost:
        if ((r14.getAllPage() > 1 && r14.getReadPage() == r14.getAllPage()) != false) goto L53;
     */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void convert(com.chad.library.adapter.base.BaseViewHolder r13, java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.book.adapter.BookRecyclerViewAdapter.convert(com.chad.library.adapter.base.BaseViewHolder, java.lang.Object):void");
    }

    /* renamed from: do  reason: not valid java name */
    public void m3356do() {
        notifyDataSetChanged();
    }
}
