package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.AppProgressBar;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class LocalWebShareFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public LocalWebShareFragment f7525do;

    /* renamed from: for  reason: not valid java name */
    public View f7526for;

    /* renamed from: if  reason: not valid java name */
    public View f7527if;

    /* renamed from: new  reason: not valid java name */
    public View f7528new;

    /* renamed from: com.biquge.ebook.app.ui.fragment.LocalWebShareFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LocalWebShareFragment f7529do;

        public Cdo(LocalWebShareFragment_ViewBinding localWebShareFragment_ViewBinding, LocalWebShareFragment localWebShareFragment) {
            this.f7529do = localWebShareFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7529do.menuClk(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.LocalWebShareFragment_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LocalWebShareFragment f7530do;

        public Cfor(LocalWebShareFragment_ViewBinding localWebShareFragment_ViewBinding, LocalWebShareFragment localWebShareFragment) {
            this.f7530do = localWebShareFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7530do.menuClk(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.LocalWebShareFragment_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LocalWebShareFragment f7531do;

        public Cif(LocalWebShareFragment_ViewBinding localWebShareFragment_ViewBinding, LocalWebShareFragment localWebShareFragment) {
            this.f7531do = localWebShareFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7531do.menuClk(view);
        }
    }

    @UiThread
    public LocalWebShareFragment_ViewBinding(LocalWebShareFragment localWebShareFragment, View view) {
        this.f7525do = localWebShareFragment;
        localWebShareFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.activity_share_refresh_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        localWebShareFragment.mScrollView = (ScrollView) Utils.findRequiredViewAsType(view, R.id.activity_share_scrollview, "field 'mScrollView'", ScrollView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.share_code, "field 'share_code' and method 'menuClk'");
        localWebShareFragment.share_code = (TextView) Utils.castView(findRequiredView, R.id.share_code, "field 'share_code'", TextView.class);
        this.f7527if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, localWebShareFragment));
        localWebShareFragment.dialog_qrcode_imageview = (ImageView) Utils.findRequiredViewAsType(view, R.id.dialog_qrcode_imageview, "field 'dialog_qrcode_imageview'", ImageView.class);
        localWebShareFragment.tips_title1 = (TextView) Utils.findRequiredViewAsType(view, R.id.tips_title1, "field 'tips_title1'", TextView.class);
        localWebShareFragment.tp_number = (TextView) Utils.findRequiredViewAsType(view, R.id.tp_number, "field 'tp_number'", TextView.class);
        localWebShareFragment.ad_number = (TextView) Utils.findRequiredViewAsType(view, R.id.ad_number, "field 'ad_number'", TextView.class);
        localWebShareFragment.dialog_qrcode_progress_view = (AppProgressBar) Utils.findRequiredViewAsType(view, R.id.dialog_qrcode_progress_view, "field 'dialog_qrcode_progress_view'", AppProgressBar.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.yaoqing_number, "field 'yaoqing_number' and method 'menuClk'");
        localWebShareFragment.yaoqing_number = (TextView) Utils.castView(findRequiredView2, R.id.yaoqing_number, "field 'yaoqing_number'", TextView.class);
        this.f7526for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, localWebShareFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.share_task, "method 'menuClk'");
        this.f7528new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, localWebShareFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LocalWebShareFragment localWebShareFragment = this.f7525do;
        if (localWebShareFragment != null) {
            this.f7525do = null;
            localWebShareFragment.mPtrClassicFrameLayout = null;
            localWebShareFragment.mScrollView = null;
            localWebShareFragment.share_code = null;
            localWebShareFragment.dialog_qrcode_imageview = null;
            localWebShareFragment.tips_title1 = null;
            localWebShareFragment.tp_number = null;
            localWebShareFragment.ad_number = null;
            localWebShareFragment.dialog_qrcode_progress_view = null;
            localWebShareFragment.yaoqing_number = null;
            this.f7527if.setOnClickListener(null);
            this.f7527if = null;
            this.f7526for.setOnClickListener(null);
            this.f7526for = null;
            this.f7528new.setOnClickListener(null);
            this.f7528new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
