package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.ToggleEditTextView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookGroupDetailActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookGroupDetailActivity f6477do;

    /* renamed from: for  reason: not valid java name */
    public View f6478for;

    /* renamed from: if  reason: not valid java name */
    public View f6479if;

    /* renamed from: new  reason: not valid java name */
    public View f6480new;

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookGroupDetailActivity f6481do;

        public Cdo(BookGroupDetailActivity_ViewBinding bookGroupDetailActivity_ViewBinding, BookGroupDetailActivity bookGroupDetailActivity) {
            this.f6481do = bookGroupDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6481do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookGroupDetailActivity f6482do;

        public Cfor(BookGroupDetailActivity_ViewBinding bookGroupDetailActivity_ViewBinding, BookGroupDetailActivity bookGroupDetailActivity) {
            this.f6482do = bookGroupDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6482do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookGroupDetailActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookGroupDetailActivity f6483do;

        public Cif(BookGroupDetailActivity_ViewBinding bookGroupDetailActivity_ViewBinding, BookGroupDetailActivity bookGroupDetailActivity) {
            this.f6483do = bookGroupDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6483do.menuClick(view);
        }
    }

    @UiThread
    public BookGroupDetailActivity_ViewBinding(BookGroupDetailActivity bookGroupDetailActivity, View view) {
        this.f6477do = bookGroupDetailActivity;
        bookGroupDetailActivity.mTitleETView = (ToggleEditTextView) Utils.findRequiredViewAsType(view, R.id.pop_bookgroup_detail_title, "field 'mTitleETView'", ToggleEditTextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.pop_bookgroup_detail_more, "field 'mMoreView' and method 'menuClick'");
        bookGroupDetailActivity.mMoreView = (ImageView) Utils.castView(findRequiredView, R.id.pop_bookgroup_detail_more, "field 'mMoreView'", ImageView.class);
        this.f6479if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookGroupDetailActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.pop_bookgroup_detail_edit_ok, "field 'mEditFinishTView' and method 'menuClick'");
        bookGroupDetailActivity.mEditFinishTView = (TextView) Utils.castView(findRequiredView2, R.id.pop_bookgroup_detail_edit_ok, "field 'mEditFinishTView'", TextView.class);
        this.f6478for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, bookGroupDetailActivity));
        bookGroupDetailActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.activity_bookgroup_detail_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.pop_bookgroup_detail_back, "method 'menuClick'");
        this.f6480new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, bookGroupDetailActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookGroupDetailActivity bookGroupDetailActivity = this.f6477do;
        if (bookGroupDetailActivity != null) {
            this.f6477do = null;
            bookGroupDetailActivity.mTitleETView = null;
            bookGroupDetailActivity.mMoreView = null;
            bookGroupDetailActivity.mEditFinishTView = null;
            bookGroupDetailActivity.mRecyclerView = null;
            this.f6479if.setOnClickListener(null);
            this.f6479if = null;
            this.f6478for.setOnClickListener(null);
            this.f6478for = null;
            this.f6480new.setOnClickListener(null);
            this.f6480new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
