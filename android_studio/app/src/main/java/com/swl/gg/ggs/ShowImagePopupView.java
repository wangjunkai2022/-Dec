package com.swl.gg.ggs;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.apk.bg;
import com.apk.k40;
import com.apk.o40;
import com.apk.r40;
import com.apk.y;
import com.biquge.ebook.app.widget.AppProgressBar;
import com.lxj.xpopup.core.CenterPopupView;
import com.swl.gg.bean.SwlAdView;
import com.swl.gg.widget.SwlAdImageView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes7.dex */
public class ShowImagePopupView extends CenterPopupView implements o40 {
    public final bg listener;
    public ImageView mCloseView;
    public final boolean mIsClose;
    public AppProgressBar mLoadingView;
    public SwlAdImageView mSwlAdImageView;
    public final SwlAdView mSwlAdView;

    public ShowImagePopupView(@NonNull Context context, SwlAdView swlAdView, boolean z) {
        super(context);
        this.listener = new bg() { // from class: com.swl.gg.ggs.ShowImagePopupView.1
            @Override // com.apk.bg
            public void onNoDoubleClick(View view) {
                if (view != ShowImagePopupView.this.mCloseView) {
                    if (view == ShowImagePopupView.this.mSwlAdImageView) {
                        SwlAdHelper.clickAd(ShowImagePopupView.this.getContext(), ShowImagePopupView.this.mSwlAdView);
                        return;
                    }
                    return;
                }
                ShowImagePopupView.this.dismiss();
            }
        };
        this.mSwlAdView = swlAdView;
        this.mIsClose = z;
    }

    private void initData() {
        r40 r40Var;
        if (this.mSwlAdView == null || (r40Var = k40.f2467do) == null) {
            return;
        }
        ((y) r40Var).m3052do(getContext(), this.mSwlAdView.getImgurl(), this.mSwlAdImageView, this);
    }

    private void initView() {
        this.mSwlAdImageView = (SwlAdImageView) findViewById(R.id.popwindow_config_msg_view);
        if (this.mIsClose) {
            ImageView imageView = (ImageView) findViewById(R.id.popwindow_config_msg_closeview);
            this.mCloseView = imageView;
            imageView.setOnClickListener(this.listener);
        }
        this.mLoadingView = (AppProgressBar) findViewById(R.id.popwindow_config_progress_view);
        this.mSwlAdImageView.setOnClickListener(this.listener);
    }

    @Override // com.apk.o40
    public void error() {
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popwindow_config_image;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        initView();
        initData();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDismiss() {
        super.onDismiss();
    }

    @Override // com.apk.o40
    public void success() {
        AppProgressBar appProgressBar = this.mLoadingView;
        if (appProgressBar != null) {
            appProgressBar.setVisibility(8);
        }
        ImageView imageView = this.mCloseView;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }
}
