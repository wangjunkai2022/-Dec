package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class RewardVideoActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public RewardVideoActivity f6771do;

    @UiThread
    public RewardVideoActivity_ViewBinding(RewardVideoActivity rewardVideoActivity, View view) {
        this.f6771do = rewardVideoActivity;
        rewardVideoActivity.mLoadingView = Utils.findRequiredView(view, R.id.reward_video_loading_layout, "field 'mLoadingView'");
        rewardVideoActivity.mContentLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.reward_video_layout, "field 'mContentLayout'", LinearLayout.class);
        rewardVideoActivity.mStateIView = (ImageView) Utils.findRequiredViewAsType(view, R.id.reward_video_state_iv, "field 'mStateIView'", ImageView.class);
        rewardVideoActivity.mStateTView = (TextView) Utils.findRequiredViewAsType(view, R.id.reward_video_state_tv, "field 'mStateTView'", TextView.class);
        rewardVideoActivity.mMessageTView = (TextView) Utils.findRequiredViewAsType(view, R.id.reward_video_message_tv, "field 'mMessageTView'", TextView.class);
        rewardVideoActivity.mPublicTimeMessageTView = (TextView) Utils.findRequiredViewAsType(view, R.id.reward_video_message_public_time_tv, "field 'mPublicTimeMessageTView'", TextView.class);
        rewardVideoActivity.mButton = (TextView) Utils.findRequiredViewAsType(view, R.id.eward_video_submit, "field 'mButton'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RewardVideoActivity rewardVideoActivity = this.f6771do;
        if (rewardVideoActivity != null) {
            this.f6771do = null;
            rewardVideoActivity.mLoadingView = null;
            rewardVideoActivity.mContentLayout = null;
            rewardVideoActivity.mStateIView = null;
            rewardVideoActivity.mStateTView = null;
            rewardVideoActivity.mMessageTView = null;
            rewardVideoActivity.mPublicTimeMessageTView = null;
            rewardVideoActivity.mButton = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
