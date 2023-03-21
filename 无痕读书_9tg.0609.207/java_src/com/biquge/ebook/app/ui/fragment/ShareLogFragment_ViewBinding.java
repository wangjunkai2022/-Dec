package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b1;
import com.apk.dc;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ShareLogFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ShareLogFragment f7589do;

    /* renamed from: if  reason: not valid java name */
    public View f7590if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.ShareLogFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ShareLogFragment f7591do;

        public Cdo(ShareLogFragment_ViewBinding shareLogFragment_ViewBinding, ShareLogFragment shareLogFragment) {
            this.f7591do = shareLogFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ShareLogFragment shareLogFragment = this.f7591do;
            if (shareLogFragment == null) {
                throw null;
            }
            new b1().m141do(new dc(shareLogFragment));
        }
    }

    @UiThread
    public ShareLogFragment_ViewBinding(ShareLogFragment shareLogFragment, View view) {
        this.f7589do = shareLogFragment;
        shareLogFragment.mDeviceTv = (TextView) Utils.findRequiredViewAsType(view, R.id.share_log_device_tv, "field 'mDeviceTv'", TextView.class);
        shareLogFragment.mValueTv = (TextView) Utils.findRequiredViewAsType(view, R.id.share_log_value_tv, "field 'mValueTv'", TextView.class);
        shareLogFragment.mFeedAdTv = (TextView) Utils.findRequiredViewAsType(view, R.id.share_log_feed_ad_tv, "field 'mFeedAdTv'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.share_log_btn, "method 'menuClick'");
        this.f7590if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, shareLogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ShareLogFragment shareLogFragment = this.f7589do;
        if (shareLogFragment != null) {
            this.f7589do = null;
            shareLogFragment.mDeviceTv = null;
            shareLogFragment.mValueTv = null;
            shareLogFragment.mFeedAdTv = null;
            this.f7590if.setOnClickListener(null);
            this.f7590if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
