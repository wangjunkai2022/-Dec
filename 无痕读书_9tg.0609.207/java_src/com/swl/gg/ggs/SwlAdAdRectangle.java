package com.swl.gg.ggs;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.apk.k40;
import com.apk.l40;
import com.apk.m40;
import com.apk.o40;
import com.apk.q40;
import com.apk.r40;
import com.apk.y;
import com.qq.e.comm.constants.ErrorCode;
import com.swl.gg.bean.SwlAdView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes7.dex */
public class SwlAdAdRectangle implements o40, View.OnClickListener {
    public final Activity mActivity;
    public final LayoutInflater mLayoutInflater;
    public final q40 mNativeAdListenner;

    public SwlAdAdRectangle(Activity activity, q40 q40Var) {
        this.mActivity = activity;
        this.mNativeAdListenner = q40Var;
        this.mLayoutInflater = LayoutInflater.from(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRectangle(final SwlAdView swlAdView) {
        View inflate = this.mLayoutInflater.inflate(R.layout.swl_sdk_rectangle_layout, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.swl_sdk_ad_rectangle_layout);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.swl_sdk_ad_rectangle_top_icon);
        TextView textView = (TextView) inflate.findViewById(R.id.swl_sdk_ad_rectangle_top_title);
        TextView textView2 = (TextView) inflate.findViewById(R.id.swl_sdk_ad_rectangle_content_tv);
        ImageView imageView2 = (ImageView) inflate.findViewById(R.id.swl_sdk_ad_rectangle_content_image);
        ImageView imageView3 = (ImageView) inflate.findViewById(R.id.swl_sdk_ad_rectangle_content_video_image);
        TextView textView3 = (TextView) inflate.findViewById(R.id.swl_sdk_ad_rectangle_download_bt);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.swl_sdk_ad_rectangle_bottom_layout);
        TextView textView4 = (TextView) inflate.findViewById(R.id.swl_sdk_ad_rectangle_bottom_title_tv);
        TextView textView5 = (TextView) inflate.findViewById(R.id.swl_sdk_ad_rectangle_bottom_download_bt);
        String himgurl = swlAdView.getHimgurl();
        if (!TextUtils.isEmpty(himgurl)) {
            linearLayout.setVisibility(0);
            r40 r40Var = k40.f2467do;
            if (r40Var != null) {
                ((y) r40Var).m3052do(this.mActivity, himgurl, imageView, this);
            }
            textView.setText(swlAdView.getAdtitle());
            if (!TextUtils.isEmpty(swlAdView.getActionlab())) {
                textView3.setVisibility(0);
                textView3.setText(swlAdView.getActionlab());
            }
        } else {
            linearLayout2.setVisibility(0);
            textView4.setText(swlAdView.getAdtitle());
            if (!TextUtils.isEmpty(swlAdView.getActionlab())) {
                textView5.setVisibility(0);
                textView5.setText(swlAdView.getActionlab());
            }
        }
        if ("yes".equals(swlAdView.getIsvideo())) {
            imageView3.setVisibility(0);
        }
        textView2.setText(swlAdView.getAddesc());
        r40 r40Var2 = k40.f2467do;
        if (r40Var2 != null) {
            ((y) r40Var2).m3052do(this.mActivity, swlAdView.getImgurl(), imageView2, this);
        }
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.swl.gg.ggs.SwlAdAdRectangle.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SwlAdHelper.clickAd(SwlAdAdRectangle.this.mActivity, swlAdView);
            }
        });
        q40 q40Var = this.mNativeAdListenner;
        if (q40Var != null) {
            q40Var.mo11new(inflate);
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
            new l40().m1613do(new m40<SwlAdView>() { // from class: com.swl.gg.ggs.SwlAdAdRectangle.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.apk.m40
                public SwlAdView doInBackground() {
                    return SwlAdHelper.getSwlAdView(str);
                }

                @Override // com.apk.m40
                public void onPostExecute(SwlAdView swlAdView) {
                    super.onPostExecute((AnonymousClass1) swlAdView);
                    if (swlAdView != null) {
                        SwlAdAdRectangle.this.setRectangle(swlAdView);
                    } else if (SwlAdAdRectangle.this.mNativeAdListenner != null) {
                        SwlAdAdRectangle.this.mNativeAdListenner.mo10if(ErrorCode.NETWORK_HTTP_STATUS_CODE, "加载失败，请重试？");
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
