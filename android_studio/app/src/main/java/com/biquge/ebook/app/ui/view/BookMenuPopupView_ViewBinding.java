package com.biquge.ebook.app.ui.view;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookMenuPopupView_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookMenuPopupView f7655do;

    /* renamed from: for  reason: not valid java name */
    public View f7656for;

    /* renamed from: if  reason: not valid java name */
    public View f7657if;

    /* renamed from: com.biquge.ebook.app.ui.view.BookMenuPopupView_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookMenuPopupView f7658do;

        public Cdo(BookMenuPopupView_ViewBinding bookMenuPopupView_ViewBinding, BookMenuPopupView bookMenuPopupView) {
            this.f7658do = bookMenuPopupView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7658do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.BookMenuPopupView_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookMenuPopupView f7659do;

        public Cif(BookMenuPopupView_ViewBinding bookMenuPopupView_ViewBinding, BookMenuPopupView bookMenuPopupView) {
            this.f7659do = bookMenuPopupView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7659do.menuClick(view);
        }
    }

    @UiThread
    public BookMenuPopupView_ViewBinding(BookMenuPopupView bookMenuPopupView, View view) {
        this.f7655do = bookMenuPopupView;
        bookMenuPopupView.menuRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.dialog_menu_book_recyclerview, "field 'menuRecyclerView'", RecyclerView.class);
        bookMenuPopupView.headView = (CoverImageView) Utils.findRequiredViewAsType(view, R.id.dialog_menu_book_image, "field 'headView'", CoverImageView.class);
        bookMenuPopupView.nameTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.dialog_menu_book_name_txt, "field 'nameTxt'", TextView.class);
        bookMenuPopupView.authorTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.dialog_menu_book_author_txt, "field 'authorTxt'", TextView.class);
        bookMenuPopupView.newChapterTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.dialog_menu_book_new_chapter_txt, "field 'newChapterTxt'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.dialog_menu_book_detail_bt, "field 'detailTxt' and method 'menuClick'");
        bookMenuPopupView.detailTxt = (TextView) Utils.castView(findRequiredView, R.id.dialog_menu_book_detail_bt, "field 'detailTxt'", TextView.class);
        this.f7657if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookMenuPopupView));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.pop_cancel_txt, "method 'menuClick'");
        this.f7656for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, bookMenuPopupView));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookMenuPopupView bookMenuPopupView = this.f7655do;
        if (bookMenuPopupView != null) {
            this.f7655do = null;
            bookMenuPopupView.menuRecyclerView = null;
            bookMenuPopupView.headView = null;
            bookMenuPopupView.nameTxt = null;
            bookMenuPopupView.authorTxt = null;
            bookMenuPopupView.newChapterTxt = null;
            bookMenuPopupView.detailTxt = null;
            this.f7657if.setOnClickListener(null);
            this.f7657if = null;
            this.f7656for.setOnClickListener(null);
            this.f7656for = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
