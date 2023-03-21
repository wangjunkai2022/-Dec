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
public class DownloadManagerActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public DownloadManagerActivity f6619do;

    @UiThread
    public DownloadManagerActivity_ViewBinding(DownloadManagerActivity downloadManagerActivity, View view) {
        this.f6619do = downloadManagerActivity;
        downloadManagerActivity.mHeaderView = (HeaderView) Utils.findRequiredViewAsType(view, R.id.downloadmanager_actionbar, "field 'mHeaderView'", HeaderView.class);
        downloadManagerActivity.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.activity_download_viewPager, "field 'mViewPager'", SViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DownloadManagerActivity downloadManagerActivity = this.f6619do;
        if (downloadManagerActivity != null) {
            this.f6619do = null;
            downloadManagerActivity.mHeaderView = null;
            downloadManagerActivity.mViewPager = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
