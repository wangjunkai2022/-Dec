package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.apk.b40;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class RankListWeekActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public RankListWeekActivity f6746do;

    @UiThread
    public RankListWeekActivity_ViewBinding(RankListWeekActivity rankListWeekActivity, View view) {
        this.f6746do = rankListWeekActivity;
        rankListWeekActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.activity_booklist_viewPager, "field 'mViewPager'", ViewPager.class);
        rankListWeekActivity.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.activity_booklist_indicator, "field 'mIndicator'", b40.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RankListWeekActivity rankListWeekActivity = this.f6746do;
        if (rankListWeekActivity != null) {
            this.f6746do = null;
            rankListWeekActivity.mViewPager = null;
            rankListWeekActivity.mIndicator = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
