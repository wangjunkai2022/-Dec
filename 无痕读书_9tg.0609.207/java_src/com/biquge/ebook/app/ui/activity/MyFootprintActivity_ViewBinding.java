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
public class MyFootprintActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MyFootprintActivity f6735do;

    @UiThread
    public MyFootprintActivity_ViewBinding(MyFootprintActivity myFootprintActivity, View view) {
        this.f6735do = myFootprintActivity;
        myFootprintActivity.mHeaderView = (HeaderView) Utils.findRequiredViewAsType(view, R.id.myfootprint_actionbar, "field 'mHeaderView'", HeaderView.class);
        myFootprintActivity.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.my_footprint_viewPager, "field 'mViewPager'", SViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyFootprintActivity myFootprintActivity = this.f6735do;
        if (myFootprintActivity != null) {
            this.f6735do = null;
            myFootprintActivity.mHeaderView = null;
            myFootprintActivity.mViewPager = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
