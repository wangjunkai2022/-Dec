package com.expand.videoplayer.ui;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.AppProgressBar;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class PlayWebViewActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public PlayWebViewActivity f9433do;

    @UiThread
    public PlayWebViewActivity_ViewBinding(PlayWebViewActivity playWebViewActivity, View view) {
        this.f9433do = playWebViewActivity;
        playWebViewActivity.mFrameLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.activity_play_layout, "field 'mFrameLayout'", FrameLayout.class);
        playWebViewActivity.mLoadingView = (AppProgressBar) Utils.findRequiredViewAsType(view, R.id.activity_play_loadingview, "field 'mLoadingView'", AppProgressBar.class);
        playWebViewActivity.mProgressBarWebView = (ProgressBarWebView) Utils.findRequiredViewAsType(view, R.id.activity_play_webview_webview, "field 'mProgressBarWebView'", ProgressBarWebView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PlayWebViewActivity playWebViewActivity = this.f9433do;
        if (playWebViewActivity != null) {
            this.f9433do = null;
            playWebViewActivity.mFrameLayout = null;
            playWebViewActivity.mLoadingView = null;
            playWebViewActivity.mProgressBarWebView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
