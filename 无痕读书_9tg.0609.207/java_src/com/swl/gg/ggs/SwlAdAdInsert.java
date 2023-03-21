package com.swl.gg.ggs;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import com.apk.Cextends;
import com.apk.k40;
import com.apk.l40;
import com.apk.lv;
import com.apk.m40;
import com.apk.o40;
import com.apk.p40;
import com.apk.r40;
import com.apk.y;
import com.apk.zu;
import com.lxj.xpopup.core.CenterPopupView;
import com.swl.gg.bean.SwlAdView;
import com.swl.gg.widget.SwlAdImageView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes7.dex */
public class SwlAdAdInsert {
    public final Activity mActivity;
    public final p40 mInsertListenner;

    /* loaded from: classes7.dex */
    public static class SwlSdkInsertScreenAd extends CenterPopupView implements o40, View.OnClickListener {
        public final Activity mActivity;
        public ImageView mCloseView;
        public final p40 mInsertListenner;
        public ProgressBar mProgressBar;
        public SwlAdImageView mSwlAdImageView;
        public final SwlAdView mSwlAdView;

        public SwlSdkInsertScreenAd(@NonNull Activity activity, SwlAdView swlAdView, p40 p40Var) {
            super(activity);
            this.mActivity = activity;
            this.mSwlAdView = swlAdView;
            this.mInsertListenner = p40Var;
        }

        private void initDate() {
            r40 r40Var = k40.f2467do;
            if (r40Var != null) {
                ((y) r40Var).m3052do(this.mActivity, this.mSwlAdView.getImgurl(), this.mSwlAdImageView, this);
            }
        }

        private void initView() {
            this.mSwlAdImageView = (SwlAdImageView) findViewById(R.id.swl_ad_sdk_insert_img);
            this.mCloseView = (ImageView) findViewById(R.id.swl_ad_sdk_insert_closeview);
            this.mProgressBar = (ProgressBar) findViewById(R.id.swl_ad_sdk_insert_loadingview);
            this.mSwlAdImageView.setOnClickListener(this);
            this.mCloseView.setOnClickListener(this);
        }

        @Override // com.apk.o40
        public void error() {
        }

        @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
        public int getImplLayoutId() {
            return R.layout.swl_sdk_insert_layout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.swl_ad_sdk_insert_img) {
                try {
                    if (this.mSwlAdView != null) {
                        if (this.mInsertListenner != null && ((Cextends) this.mInsertListenner) == null) {
                            throw null;
                        }
                        SwlAdHelper.openBrowser(this.mActivity, this.mSwlAdView);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (view.getId() == R.id.swl_ad_sdk_insert_closeview) {
                dismiss();
            }
        }

        @Override // com.lxj.xpopup.core.BasePopupView
        public void onCreate() {
            super.onCreate();
            initView();
            initDate();
        }

        @Override // com.apk.o40
        public void success() {
            p40 p40Var = this.mInsertListenner;
            if (p40Var != null && ((Cextends) p40Var) == null) {
                throw null;
            }
            this.mCloseView.setVisibility(0);
            this.mProgressBar.setVisibility(8);
        }
    }

    public SwlAdAdInsert(Activity activity, p40 p40Var) {
        this.mActivity = activity;
        this.mInsertListenner = p40Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInsert(SwlAdView swlAdView) {
        try {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return;
            }
            lv lvVar = new lv();
            lvVar.f2924for = Boolean.FALSE;
            SwlSdkInsertScreenAd swlSdkInsertScreenAd = new SwlSdkInsertScreenAd(this.mActivity, swlAdView, this.mInsertListenner);
            lvVar.f2917continue = zu.f6266try;
            swlSdkInsertScreenAd.popupInfo = lvVar;
            swlSdkInsertScreenAd.show();
            if (this.mInsertListenner != null && ((Cextends) this.mInsertListenner) == null) {
                throw null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void loadAd(final String str) {
        if (this.mActivity == null) {
            p40 p40Var = this.mInsertListenner;
            if (p40Var != null && ((Cextends) p40Var) == null) {
                throw null;
            }
        } else if (!k40.m1460strictfp()) {
            p40 p40Var2 = this.mInsertListenner;
            if (p40Var2 != null && ((Cextends) p40Var2) == null) {
                throw null;
            }
        } else {
            new l40().m1613do(new m40<SwlAdView>() { // from class: com.swl.gg.ggs.SwlAdAdInsert.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.apk.m40
                public SwlAdView doInBackground() {
                    return SwlAdHelper.getSwlAdView(str);
                }

                @Override // com.apk.m40
                public void onPostExecute(SwlAdView swlAdView) {
                    super.onPostExecute((AnonymousClass1) swlAdView);
                    if (swlAdView != null) {
                        SwlAdAdInsert.this.setInsert(swlAdView);
                    } else if (SwlAdAdInsert.this.mInsertListenner != null && ((Cextends) SwlAdAdInsert.this.mInsertListenner) == null) {
                        throw null;
                    }
                }
            });
        }
    }

    public void onDestroy() {
    }
}
