package com.manhua.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.apk.b40;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicRankListWeekActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicRankListWeekActivity f9776do;

    @UiThread
    public ComicRankListWeekActivity_ViewBinding(ComicRankListWeekActivity comicRankListWeekActivity, View view) {
        this.f9776do = comicRankListWeekActivity;
        comicRankListWeekActivity.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.activity_booklist_indicator, "field 'mIndicator'", b40.class);
        comicRankListWeekActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.activity_booklist_viewPager, "field 'mViewPager'", ViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicRankListWeekActivity comicRankListWeekActivity = this.f9776do;
        if (comicRankListWeekActivity != null) {
            this.f9776do = null;
            comicRankListWeekActivity.mIndicator = null;
            comicRankListWeekActivity.mViewPager = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
