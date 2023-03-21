package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.HeaderView;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class MyListActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MyListActivity f6740do;

    @UiThread
    public MyListActivity_ViewBinding(MyListActivity myListActivity, View view) {
        this.f6740do = myListActivity;
        myListActivity.mHeaderView = (HeaderView) Utils.findRequiredViewAsType(view, R.id.mylist_actionbar, "field 'mHeaderView'", HeaderView.class);
        myListActivity.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.my_list_viewPager, "field 'mViewPager'", SViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyListActivity myListActivity = this.f6740do;
        if (myListActivity != null) {
            this.f6740do = null;
            myListActivity.mHeaderView = null;
            myListActivity.mViewPager = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
