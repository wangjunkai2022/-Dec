package com.manhua.ui.activity;

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
public class ComicReadEndActivity_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f9832case;

    /* renamed from: do  reason: not valid java name */
    public ComicReadEndActivity f9833do;

    /* renamed from: else  reason: not valid java name */
    public View f9834else;

    /* renamed from: for  reason: not valid java name */
    public View f9835for;

    /* renamed from: if  reason: not valid java name */
    public View f9836if;

    /* renamed from: new  reason: not valid java name */
    public View f9837new;

    /* renamed from: try  reason: not valid java name */
    public View f9838try;

    /* renamed from: com.manhua.ui.activity.ComicReadEndActivity_ViewBinding$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicReadEndActivity f9839do;

        public Ccase(ComicReadEndActivity_ViewBinding comicReadEndActivity_ViewBinding, ComicReadEndActivity comicReadEndActivity) {
            this.f9839do = comicReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9839do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadEndActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicReadEndActivity f9840do;

        public Cdo(ComicReadEndActivity_ViewBinding comicReadEndActivity_ViewBinding, ComicReadEndActivity comicReadEndActivity) {
            this.f9840do = comicReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9840do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadEndActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicReadEndActivity f9841do;

        public Cfor(ComicReadEndActivity_ViewBinding comicReadEndActivity_ViewBinding, ComicReadEndActivity comicReadEndActivity) {
            this.f9841do = comicReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9841do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadEndActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicReadEndActivity f9842do;

        public Cif(ComicReadEndActivity_ViewBinding comicReadEndActivity_ViewBinding, ComicReadEndActivity comicReadEndActivity) {
            this.f9842do = comicReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9842do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadEndActivity_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicReadEndActivity f9843do;

        public Cnew(ComicReadEndActivity_ViewBinding comicReadEndActivity_ViewBinding, ComicReadEndActivity comicReadEndActivity) {
            this.f9843do = comicReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9843do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicReadEndActivity_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicReadEndActivity f9844do;

        public Ctry(ComicReadEndActivity_ViewBinding comicReadEndActivity_ViewBinding, ComicReadEndActivity comicReadEndActivity) {
            this.f9844do = comicReadEndActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9844do.menuClick(view);
        }
    }

    @UiThread
    public ComicReadEndActivity_ViewBinding(ComicReadEndActivity comicReadEndActivity, View view) {
        this.f9833do = comicReadEndActivity;
        comicReadEndActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.bookreadend_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
        comicReadEndActivity.mBookListLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.booklist_layout, "field 'mBookListLayout'", LinearLayout.class);
        comicReadEndActivity.mBooklistTitleTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.item_book_city_blist_name, "field 'mBooklistTitleTxt'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.item_book_city_blist_image, "field 'mBooklistImage' and method 'menuClick'");
        comicReadEndActivity.mBooklistImage = (ImageView) Utils.castView(findRequiredView, R.id.item_book_city_blist_image, "field 'mBooklistImage'", ImageView.class);
        this.f9836if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicReadEndActivity));
        comicReadEndActivity.mBookListInfoTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.item_book_city_blist_desc, "field 'mBookListInfoTxt'", TextView.class);
        comicReadEndActivity.mAdViewRectangle = (AdViewRectangle) Utils.findRequiredViewAsType(view, R.id.adview_rectangle, "field 'mAdViewRectangle'", AdViewRectangle.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.read_end_back, "method 'menuClick'");
        this.f9835for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, comicReadEndActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.read_end_search, "method 'menuClick'");
        this.f9837new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, comicReadEndActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.book_readend_to_bookshelf_bt, "method 'menuClick'");
        this.f9838try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, comicReadEndActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.book_readend_to_bookcity_bt, "method 'menuClick'");
        this.f9832case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, comicReadEndActivity));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.read_end_recomment, "method 'menuClick'");
        this.f9834else = findRequiredView6;
        findRequiredView6.setOnClickListener(new Ccase(this, comicReadEndActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicReadEndActivity comicReadEndActivity = this.f9833do;
        if (comicReadEndActivity != null) {
            this.f9833do = null;
            comicReadEndActivity.mRecyclerView = null;
            comicReadEndActivity.mBookListLayout = null;
            comicReadEndActivity.mBooklistTitleTxt = null;
            comicReadEndActivity.mBooklistImage = null;
            comicReadEndActivity.mBookListInfoTxt = null;
            comicReadEndActivity.mAdViewRectangle = null;
            this.f9836if.setOnClickListener(null);
            this.f9836if = null;
            this.f9835for.setOnClickListener(null);
            this.f9835for = null;
            this.f9837new.setOnClickListener(null);
            this.f9837new = null;
            this.f9838try.setOnClickListener(null);
            this.f9838try = null;
            this.f9832case.setOnClickListener(null);
            this.f9832case = null;
            this.f9834else.setOnClickListener(null);
            this.f9834else = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
