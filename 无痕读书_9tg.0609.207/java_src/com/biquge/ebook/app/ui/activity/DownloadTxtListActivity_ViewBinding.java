package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b40;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class DownloadTxtListActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public DownloadTxtListActivity f6627do;

    /* renamed from: for  reason: not valid java name */
    public View f6628for;

    /* renamed from: if  reason: not valid java name */
    public View f6629if;

    /* renamed from: com.biquge.ebook.app.ui.activity.DownloadTxtListActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ DownloadTxtListActivity f6630do;

        public Cdo(DownloadTxtListActivity_ViewBinding downloadTxtListActivity_ViewBinding, DownloadTxtListActivity downloadTxtListActivity) {
            this.f6630do = downloadTxtListActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6630do.onClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.DownloadTxtListActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ DownloadTxtListActivity f6631do;

        public Cif(DownloadTxtListActivity_ViewBinding downloadTxtListActivity_ViewBinding, DownloadTxtListActivity downloadTxtListActivity) {
            this.f6631do = downloadTxtListActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6631do.onClick(view);
        }
    }

    @UiThread
    public DownloadTxtListActivity_ViewBinding(DownloadTxtListActivity downloadTxtListActivity, View view) {
        this.f6627do = downloadTxtListActivity;
        downloadTxtListActivity.mMoreTagView = Utils.findRequiredView(view, R.id.activity_txt_download_toolbar_more_tag, "field 'mMoreTagView'");
        downloadTxtListActivity.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.activity_download_txt_viewPager, "field 'mViewPager'", SViewPager.class);
        downloadTxtListActivity.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.activity_download_txt_indicator, "field 'mIndicator'", b40.class);
        downloadTxtListActivity.mEditLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.edit_select_layout, "field 'mEditLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.edit_select_all_bt, "field 'mSelectBt' and method 'onClick'");
        Button button = (Button) Utils.castView(findRequiredView, R.id.edit_select_all_bt, "field 'mSelectBt'", Button.class);
        this.f6629if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, downloadTxtListActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.edit_delete_bt, "field 'mDelBt' and method 'onClick'");
        downloadTxtListActivity.mDelBt = (Button) Utils.castView(findRequiredView2, R.id.edit_delete_bt, "field 'mDelBt'", Button.class);
        this.f6628for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, downloadTxtListActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DownloadTxtListActivity downloadTxtListActivity = this.f6627do;
        if (downloadTxtListActivity != null) {
            this.f6627do = null;
            downloadTxtListActivity.mMoreTagView = null;
            downloadTxtListActivity.mViewPager = null;
            downloadTxtListActivity.mIndicator = null;
            downloadTxtListActivity.mEditLayout = null;
            downloadTxtListActivity.mDelBt = null;
            this.f6629if.setOnClickListener(null);
            this.f6629if = null;
            this.f6628for.setOnClickListener(null);
            this.f6628for = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
