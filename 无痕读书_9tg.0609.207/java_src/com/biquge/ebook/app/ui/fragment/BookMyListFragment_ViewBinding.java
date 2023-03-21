package com.biquge.ebook.app.ui.fragment;

import android.content.Intent;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b40;
import com.biquge.ebook.app.ui.activity.CreateBookListActivity;
import com.qq.e.comm.constants.ErrorCode;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookMyListFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookMyListFragment f7300do;

    /* renamed from: if  reason: not valid java name */
    public View f7301if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMyListFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookMyListFragment f7302do;

        public Cdo(BookMyListFragment_ViewBinding bookMyListFragment_ViewBinding, BookMyListFragment bookMyListFragment) {
            this.f7302do = bookMyListFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            BookMyListFragment bookMyListFragment = this.f7302do;
            if (bookMyListFragment != null) {
                bookMyListFragment.getSupportActivity().startActivityForResult(new Intent(bookMyListFragment.getSupportActivity(), CreateBookListActivity.class), ErrorCode.INIT_ERROR);
                return;
            }
            throw null;
        }
    }

    @UiThread
    public BookMyListFragment_ViewBinding(BookMyListFragment bookMyListFragment, View view) {
        this.f7300do = bookMyListFragment;
        bookMyListFragment.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.activity_my_booklist_viewPager, "field 'mViewPager'", ViewPager.class);
        bookMyListFragment.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.activity_my_booklist_indicator, "field 'mIndicator'", b40.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.my_booklist_create_bt, "method 'menuClick'");
        this.f7301if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookMyListFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookMyListFragment bookMyListFragment = this.f7300do;
        if (bookMyListFragment != null) {
            this.f7300do = null;
            bookMyListFragment.mViewPager = null;
            bookMyListFragment.mIndicator = null;
            this.f7301if.setOnClickListener(null);
            this.f7301if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
