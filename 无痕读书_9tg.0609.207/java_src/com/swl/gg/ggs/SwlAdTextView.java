package com.swl.gg.ggs;

import android.app.Activity;
import android.graphics.Color;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import com.apk.k40;
import com.apk.l40;
import com.apk.m40;
import com.apk.q40;
import com.apk.r40;
import com.apk.y;
import com.biquge.ebook.app.ui.activity.RewardVideoActivity;
import com.qq.e.comm.constants.ErrorCode;
import com.swl.gg.bean.SwlAdView;
/* loaded from: classes7.dex */
public class SwlAdTextView implements View.OnClickListener {
    public final Activity mActivity;
    public final q40 mNativeAdListenner;
    public TextView mTextView;

    public SwlAdTextView(Activity activity, q40 q40Var) {
        this.mActivity = activity;
        this.mNativeAdListenner = q40Var;
        try {
            TextView textView = new TextView(activity);
            this.mTextView = textView;
            textView.setTextColor(Color.parseColor("#00ACF5"));
            this.mTextView.setTextSize(2, 16.0f);
            int i = (int) (k40.m1442continue().getResources().getDisplayMetrics().density * 20.0f);
            int i2 = (int) (k40.m1442continue().getResources().getDisplayMetrics().density * 5.0f);
            this.mTextView.setPadding(i, i2, i, i2);
            setTxtGravity(17);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextView(SwlAdView swlAdView) {
        try {
            if (this.mTextView != null) {
                this.mTextView.setText(Html.fromHtml(swlAdView.getAdtitle()));
                this.mTextView.setTag(swlAdView);
                this.mTextView.setOnClickListener(this);
                if (this.mNativeAdListenner != null) {
                    this.mNativeAdListenner.mo11new(this.mTextView);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
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
            new l40().m1613do(new m40<SwlAdView>() { // from class: com.swl.gg.ggs.SwlAdTextView.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.apk.m40
                public SwlAdView doInBackground() {
                    return SwlAdHelper.getSwlAdView(str);
                }

                @Override // com.apk.m40
                public void onPostExecute(SwlAdView swlAdView) {
                    super.onPostExecute((AnonymousClass1) swlAdView);
                    if (swlAdView != null) {
                        SwlAdTextView.this.setTextView(swlAdView);
                    } else if (SwlAdTextView.this.mNativeAdListenner != null) {
                        SwlAdTextView.this.mNativeAdListenner.mo10if(ErrorCode.NETWORK_HTTP_STATUS_CODE, "加载失败，请重试？");
                    }
                }
            });
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            SwlAdView swlAdView = (SwlAdView) view.getTag();
            if ("2".equals(swlAdView.getBrowser())) {
                if (k40.f2467do != null) {
                    r40 r40Var = k40.f2467do;
                    Activity activity = this.mActivity;
                    if (((y) r40Var) != null) {
                        RewardVideoActivity.p(activity, 11);
                    } else {
                        throw null;
                    }
                }
            } else {
                SwlAdHelper.openBrowser(this.mActivity, swlAdView);
            }
            if (this.mNativeAdListenner != null) {
                this.mNativeAdListenner.onAdClick();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onDestroy() {
    }

    public void setTxtGravity(int i) {
        TextView textView = this.mTextView;
        if (textView != null) {
            textView.setGravity(i);
        }
    }
}
