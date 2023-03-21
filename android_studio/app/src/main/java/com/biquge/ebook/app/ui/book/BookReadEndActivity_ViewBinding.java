package com.biquge.ebook.app.ui.book;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookReadEndActivity_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f6906case;

    /* renamed from: do  reason: not valid java name */
    public BookReadEndActivity f6907do;

    /* renamed from: else  reason: not valid java name */
    public View f6908else;

    /* renamed from: for  reason: not valid java name */
    public View f6909for;

    /* renamed from: if  reason: not valid java name */
    public View f6910if;

    /* renamed from: new  reason: not valid java name */
    public View f6911new;

    /* renamed from: try  reason: not valid java name */
    public View f6912try;

    /* renamed from: com.biquge.ebook.app.ui.book.BookReadEndActivity_ViewBinding$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookReadEndActivity f6913do;

        public Ccase(BookReadEndActivity_ViewBinding bookReadEndActivity_ViewBinding, BookReadEndActivity bookReadEndActivity) {
            this.f6913do = bookReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6913do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.BookReadEndActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookReadEndActivity f6914do;

        public Cdo(BookReadEndActivity_ViewBinding bookReadEndActivity_ViewBinding, BookReadEndActivity bookReadEndActivity) {
            this.f6914do = bookReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6914do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.BookReadEndActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookReadEndActivity f6915do;

        public Cfor(BookReadEndActivity_ViewBinding bookReadEndActivity_ViewBinding, BookReadEndActivity bookReadEndActivity) {
            this.f6915do = bookReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6915do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.BookReadEndActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookReadEndActivity f6916do;

        public Cif(BookReadEndActivity_ViewBinding bookReadEndActivity_ViewBinding, BookReadEndActivity bookReadEndActivity) {
            this.f6916do = bookReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6916do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.BookReadEndActivity_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookReadEndActivity f6917do;

        public Cnew(BookReadEndActivity_ViewBinding bookReadEndActivity_ViewBinding, BookReadEndActivity bookReadEndActivity) {
            this.f6917do = bookReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6917do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.BookReadEndActivity_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookReadEndActivity f6918do;

        public Ctry(BookReadEndActivity_ViewBinding bookReadEndActivity_ViewBinding, BookReadEndActivity bookReadEndActivity) {
            this.f6918do = bookReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6918do.menuClick(view);
        }
    }

    @UiThread
    public BookReadEndActivity_ViewBinding(BookReadEndActivity bookReadEndActivity, View view) {
        this.f6907do = bookReadEndActivity;
        bookReadEndActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.bookreadend_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
        bookReadEndActivity.mBookListLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.booklist_layout, "field 'mBookListLayout'", LinearLayout.class);
        bookReadEndActivity.mBooklistTitleTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.item_book_city_blist_name, "field 'mBooklistTitleTxt'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_book_city_blist_image, "field 'mBooklistImage' and method 'menuClick'");
        bookReadEndActivity.mBooklistImage = (ImageView) Utils.castView(findRequiredView, R.id.item_book_city_blist_image, "field 'mBooklistImage'", ImageView.class);
        this.f6910if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookReadEndActivity));
        bookReadEndActivity.mBookListInfoTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.item_book_city_blist_desc, "field 'mBookListInfoTxt'", TextView.class);
        bookReadEndActivity.mAdViewRectangle = (AdViewRectangle) Utils.findRequiredViewAsType(view, R.id.adview_rectangle, "field 'mAdViewRectangle'", AdViewRectangle.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.read_end_back, "method 'menuClick'");
        this.f6909for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, bookReadEndActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.read_end_search, "method 'menuClick'");
        this.f6911new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, bookReadEndActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.book_readend_to_bookshelf_bt, "method 'menuClick'");
        this.f6912try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, bookReadEndActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.book_readend_to_bookcity_bt, "method 'menuClick'");
        this.f6906case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, bookReadEndActivity));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.read_end_recomment, "method 'menuClick'");
        this.f6908else = findRequiredView6;
        findRequiredView6.setOnClickListener(new Ccase(this, bookReadEndActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookReadEndActivity bookReadEndActivity = this.f6907do;
        if (bookReadEndActivity != null) {
            this.f6907do = null;
            bookReadEndActivity.mRecyclerView = null;
            bookReadEndActivity.mBookListLayout = null;
            bookReadEndActivity.mBooklistTitleTxt = null;
            bookReadEndActivity.mBooklistImage = null;
            bookReadEndActivity.mBookListInfoTxt = null;
            bookReadEndActivity.mAdViewRectangle = null;
            this.f6910if.setOnClickListener(null);
            this.f6910if = null;
            this.f6909for.setOnClickListener(null);
            this.f6909for = null;
            this.f6911new.setOnClickListener(null);
            this.f6911new = null;
            this.f6912try.setOnClickListener(null);
            this.f6912try = null;
            this.f6906case.setOnClickListener(null);
            this.f6906case = null;
            this.f6908else.setOnClickListener(null);
            this.f6908else = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
