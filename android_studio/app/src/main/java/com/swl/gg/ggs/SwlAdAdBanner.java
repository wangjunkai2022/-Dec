package com.swl.gg.ggs;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import com.apk.k40;
import com.apk.l40;
import com.apk.m40;
import com.apk.o40;
import com.apk.q40;
import com.apk.r40;
import com.apk.y;
import com.qq.e.comm.constants.ErrorCode;
import com.swl.gg.bean.SwlAdView;

/* loaded from: classes7.dex */
public class SwlAdAdBanner implements o40, View.OnClickListener {
    public final String mAadTagType;
    public final Activity mActivity;
    public final ImageView mImageView;
    public final q40 mNativeAdListenner;

    public SwlAdAdBanner(Activity activity, q40 q40Var, String str) {
        this.mActivity = activity;
        this.mNativeAdListenner = q40Var;
        this.mAadTagType = str;
        ImageView imageView = new ImageView(activity);
        this.mImageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        this.mImageView.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBanner(SwlAdView swlAdView) {
        ImageView imageView = this.mImageView;
        if (imageView != null) {
            imageView.setTag(swlAdView);
            r40 r40Var = k40.f2467do;
            if (r40Var != null) {
                ((y) r40Var).m3052do(this.mActivity, swlAdView.getImgurl(), this.mImageView, this);
            }
            q40 q40Var = this.mNativeAdListenner;
            if (q40Var != null) {
                q40Var.mo11new(this.mImageView);
            }
        }
    }

    @Override // com.apk.o40
    public void error() {
    }

    public void loadAd(final String str) {
        if (this.mActivity == null) {
            q40 q40Var = this.mNativeAdListenner;
            if (q40Var != null) {
                q40Var.mo10if(ErrorCode.NETWORK_TIMEOUT, "activity或者其它参数为空");
            }
        } else if (!k40.m1460strictfp()) {
            q40 q40Var2 = this.mNativeAdListenner;
            if (q40Var2 != null) {
                q40Var2.mo10if(ErrorCode.NETWORK_SSL_HANDSHAKE, "没有网络");
            }
        } else {
            new l40().m1613do(new m40<SwlAdView>() { // from class: com.swl.gg.ggs.SwlAdAdBanner.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.apk.m40
                public SwlAdView doInBackground() {
                    return SwlAdHelper.getSwlAdView(str);
                }

                @Override // com.apk.m40
                public void onPostExecute(SwlAdView swlAdView) {
                    super.onPostExecute((AnonymousClass1) swlAdView);
                    if (swlAdView != null) {
                        SwlAdAdBanner.this.setBanner(swlAdView);
                    } else if (SwlAdAdBanner.this.mNativeAdListenner != null) {
                        SwlAdAdBanner.this.mNativeAdListenner.mo10if(ErrorCode.NETWORK_HTTP_STATUS_CODE, "加载失败，请重试？");
                    }
                }
            });
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            SwlAdView swlAdView = (SwlAdView) view.getTag();
            if (swlAdView != null) {
                if (this.mNativeAdListenner != null) {
                    this.mNativeAdListenner.onAdClick();
                }
                SwlAdHelper.openBrowser(this.mActivity, swlAdView);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onDestroy() {
    }

    @Override // com.apk.o40
    public void success() {
        q40 q40Var = this.mNativeAdListenner;
        if (q40Var != null) {
            q40Var.mo9do();
        }
    }
}
