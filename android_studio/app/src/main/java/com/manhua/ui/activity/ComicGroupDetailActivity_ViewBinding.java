package com.manhua.ui.activity;

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
public class ComicGroupDetailActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicGroupDetailActivity f9722do;

    /* renamed from: for  reason: not valid java name */
    public View f9723for;

    /* renamed from: if  reason: not valid java name */
    public View f9724if;

    /* renamed from: new  reason: not valid java name */
    public View f9725new;

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicGroupDetailActivity f9726do;

        public Cdo(ComicGroupDetailActivity_ViewBinding comicGroupDetailActivity_ViewBinding, ComicGroupDetailActivity comicGroupDetailActivity) {
            this.f9726do = comicGroupDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9726do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicGroupDetailActivity f9727do;

        public Cfor(ComicGroupDetailActivity_ViewBinding comicGroupDetailActivity_ViewBinding, ComicGroupDetailActivity comicGroupDetailActivity) {
            this.f9727do = comicGroupDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9727do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicGroupDetailActivity f9728do;

        public Cif(ComicGroupDetailActivity_ViewBinding comicGroupDetailActivity_ViewBinding, ComicGroupDetailActivity comicGroupDetailActivity) {
            this.f9728do = comicGroupDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9728do.menuClick(view);
        }
    }

    @UiThread
    public ComicGroupDetailActivity_ViewBinding(ComicGroupDetailActivity comicGroupDetailActivity, View view) {
        this.f9722do = comicGroupDetailActivity;
        comicGroupDetailActivity.mTitleETView = (ToggleEditTextView) Utils.findRequiredViewAsType(view, R.id.pop_bookgroup_detail_title, "field 'mTitleETView'", ToggleEditTextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.pop_bookgroup_detail_more, "field 'mMoreView' and method 'menuClick'");
        comicGroupDetailActivity.mMoreView = (ImageView) Utils.castView(findRequiredView, R.id.pop_bookgroup_detail_more, "field 'mMoreView'", ImageView.class);
        this.f9724if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicGroupDetailActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.pop_bookgroup_detail_edit_ok, "field 'mEditFinishTView' and method 'menuClick'");
        comicGroupDetailActivity.mEditFinishTView = (TextView) Utils.castView(findRequiredView2, R.id.pop_bookgroup_detail_edit_ok, "field 'mEditFinishTView'", TextView.class);
        this.f9723for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, comicGroupDetailActivity));
        comicGroupDetailActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.activity_bookgroup_detail_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.pop_bookgroup_detail_back, "method 'menuClick'");
        this.f9725new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, comicGroupDetailActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicGroupDetailActivity comicGroupDetailActivity = this.f9722do;
        if (comicGroupDetailActivity != null) {
            this.f9722do = null;
            comicGroupDetailActivity.mTitleETView = null;
            comicGroupDetailActivity.mMoreView = null;
            comicGroupDetailActivity.mEditFinishTView = null;
            comicGroupDetailActivity.mRecyclerView = null;
            this.f9724if.setOnClickListener(null);
            this.f9724if = null;
            this.f9723for.setOnClickListener(null);
            this.f9723for = null;
            this.f9725new.setOnClickListener(null);
            this.f9725new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
