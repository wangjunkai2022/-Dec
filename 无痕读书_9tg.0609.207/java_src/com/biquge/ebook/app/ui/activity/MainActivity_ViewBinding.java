package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ui.view.ContinueReadLayout;
import com.biquge.ebook.app.widget.MainBottomNavigationView;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class MainActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MainActivity f6703do;

    @UiThread
    public MainActivity_ViewBinding(MainActivity mainActivity, View view) {
        this.f6703do = mainActivity;
        mainActivity.mSViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.fragment_main_viewPager, "field 'mSViewPager'", SViewPager.class);
        mainActivity.mBottomNavigationView = (MainBottomNavigationView) Utils.findRequiredViewAsType(view, R.id.activity_main_navigation, "field 'mBottomNavigationView'", MainBottomNavigationView.class);
        mainActivity.mContinueReadLayout = (ContinueReadLayout) Utils.findRequiredViewAsType(view, R.id.main_continue_read_layout, "field 'mContinueReadLayout'", ContinueReadLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MainActivity mainActivity = this.f6703do;
        if (mainActivity != null) {
            this.f6703do = null;
            mainActivity.mSViewPager = null;
            mainActivity.mBottomNavigationView = null;
            mainActivity.mContinueReadLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
