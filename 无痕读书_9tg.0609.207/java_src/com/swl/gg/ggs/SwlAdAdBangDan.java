package com.swl.gg.ggs;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.apk.k40;
import com.apk.kf;
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
public class SwlAdAdBangDan implements o40, View.OnClickListener {
    public final Activity mActivity;
    public final LayoutInflater mLayoutInflater;
    public final q40 mNativeAdListenner;

    public SwlAdAdBangDan(Activity activity, q40 q40Var) {
        this.mActivity = activity;
        this.mNativeAdListenner = q40Var;
        this.mLayoutInflater = LayoutInflater.from(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRectangle(SwlAdView swlAdView) {
        View inflate = this.mLayoutInflater.inflate(R.layout.swl_sdk_bangdan_layout, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.swl_ad_sdk_icon);
        TextView textView = (TextView) inflate.findViewById(R.id.swl_ad_sdk_name_tv);
        TextView textView2 = (TextView) inflate.findViewById(R.id.swl_ad_sdk_type_tv);
        TextView textView3 = (TextView) inflate.findViewById(R.id.swl_ad_sdk_author_tv);
        TextView textView4 = (TextView) inflate.findViewById(R.id.swl_ad_sdk_info_tv);
        r40 r40Var = k40.f2467do;
        if (r40Var != null) {
            ((y) r40Var).m3052do(this.mActivity, swlAdView.getImgurl(), imageView, this);
        }
        textView.setText(swlAdView.getAdtitle());
        textView4.setText(swlAdView.getAddesc());
        textView2.setText(swlAdView.getSubtitle());
        textView3.setText("唐家三少");
        inflate.setTag(swlAdView);
        inflate.setOnClickListener(this);
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
            new l40().m1613do(new m40<SwlAdView>() { // from class: com.swl.gg.ggs.SwlAdAdBangDan.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.apk.m40
                public SwlAdView doInBackground() {
                    return SwlAdHelper.getSwlAdView(str);
                }

                @Override // com.apk.m40
                public void onPostExecute(SwlAdView swlAdView) {
                    super.onPostExecute((AnonymousClass1) swlAdView);
                    if (swlAdView != null) {
                        SwlAdAdBangDan.this.setRectangle(swlAdView);
                    } else if (SwlAdAdBangDan.this.mNativeAdListenner != null) {
                        SwlAdAdBangDan.this.mNativeAdListenner.mo10if(ErrorCode.NETWORK_HTTP_STATUS_CODE, "加载失败，请重试？");
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
                try {
                    if ("1".equals(swlAdView.getBrowser())) {
                        if (!swlAdView.getAdurl().endsWith(".apk") && !swlAdView.getAdurl().endsWith(".APK")) {
                            SwlAdHelper.openBrowser(this.mActivity, swlAdView);
                        }
                        if (k40.f2467do != null) {
                            r40 r40Var = k40.f2467do;
                            Activity activity = this.mActivity;
                            String adtitle = swlAdView.getAdtitle();
                            String adurl = swlAdView.getAdurl();
                            if (((y) r40Var) == null) {
                                throw null;
                            }
                            kf.m1482for(activity, adurl, adtitle);
                        }
                    } else {
                        SwlAdHelper.openBrowser(this.mActivity, swlAdView.getAdurl(), false);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (this.mNativeAdListenner != null) {
                    this.mNativeAdListenner.onAdClick();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
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
