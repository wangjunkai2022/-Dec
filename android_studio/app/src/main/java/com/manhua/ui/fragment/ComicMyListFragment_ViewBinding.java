package com.manhua.ui.fragment;

import android.content.Intent;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b40;
import com.manhua.ui.activity.CreateComicListActivity;
import com.qq.e.comm.constants.ErrorCode;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicMyListFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicMyListFragment f10004do;

    /* renamed from: if  reason: not valid java name */
    public View f10005if;

    /* renamed from: com.manhua.ui.fragment.ComicMyListFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicMyListFragment f10006do;

        public Cdo(ComicMyListFragment_ViewBinding comicMyListFragment_ViewBinding, ComicMyListFragment comicMyListFragment) {
            this.f10006do = comicMyListFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ComicMyListFragment comicMyListFragment = this.f10006do;
            if (comicMyListFragment != null) {
                comicMyListFragment.getSupportActivity().startActivityForResult(new Intent(comicMyListFragment.getSupportActivity(), CreateComicListActivity.class), ErrorCode.INNER_ERROR);
                return;
            }
            throw null;
        }
    }

    @UiThread
    public ComicMyListFragment_ViewBinding(ComicMyListFragment comicMyListFragment, View view) {
        this.f10004do = comicMyListFragment;
        comicMyListFragment.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.activity_my_booklist_viewPager, "field 'mViewPager'", ViewPager.class);
        comicMyListFragment.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.activity_my_booklist_indicator, "field 'mIndicator'", b40.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.my_booklist_create_bt, "method 'menuClick'");
        this.f10005if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicMyListFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicMyListFragment comicMyListFragment = this.f10004do;
        if (comicMyListFragment != null) {
            this.f10004do = null;
            comicMyListFragment.mViewPager = null;
            comicMyListFragment.mIndicator = null;
            this.f10005if.setOnClickListener(null);
            this.f10005if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
