package com.swl.gg.ggs;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.apk.Cgoto;
import com.apk.k40;
import com.apk.l40;
import com.apk.m40;
import com.apk.o40;
import com.apk.r40;
import com.apk.s40;
import com.apk.y;
import com.qq.e.comm.constants.ErrorCode;
import com.swl.gg.bean.SwlAdView;
import java.lang.ref.WeakReference;
import kimi.wuhends.ebooks.R;
/* loaded from: classes7.dex */
public class SwlAdSplashView implements o40, View.OnClickListener {
    public static final long SPLASH_AD_TIMEOUT = 4000;
    public static final int WHAT_REFRESH_INTERVAL = 102;
    public static final int WHAT_START_TIMEOUT = 101;
    public final Activity mActivity;
    public ReferenceHandler mHandler;
    public int mInterval = 5;
    public TextView mSkipView;
    public final s40 mSplashAdListener;
    public l40 mSwlReqTask;
    public final ViewGroup mViewGroup;

    /* loaded from: classes7.dex */
    public static class ReferenceHandler extends Handler {
        public final WeakReference<SwlAdSplashView> reference;

        public ReferenceHandler(SwlAdSplashView swlAdSplashView) {
            super(Looper.getMainLooper());
            this.reference = new WeakReference<>(swlAdSplashView);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<SwlAdSplashView> weakReference = this.reference;
            if (weakReference != null) {
                try {
                    if (message.what == 101) {
                        if (weakReference.get() != null) {
                            this.reference.get().adTimeOut();
                        }
                    } else if (message.what == 102 && weakReference.get() != null) {
                        this.reference.get().refreshInterval();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public SwlAdSplashView(Activity activity, ViewGroup viewGroup, s40 s40Var) {
        this.mActivity = activity;
        this.mViewGroup = viewGroup;
        this.mSplashAdListener = s40Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adTimeOut() {
        l40 l40Var = this.mSwlReqTask;
        if (l40Var != null) {
            l40Var.cancel(true);
            this.mSwlReqTask = null;
        }
        s40 s40Var = this.mSplashAdListener;
        if (s40Var != null) {
            s40Var.mo2028if(ErrorCode.NETWORK_HTTP_STATUS_CODE, "加载失败，请重试？");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshInterval() {
        this.mHandler.sendEmptyMessageDelayed(102, 1000L);
        if (this.mInterval == 0) {
            TextView textView = this.mSkipView;
            if (textView != null) {
                textView.setText(k40.m1442continue().getString(R.string.swl_sdk_skip_txt, " "));
            }
            s40 s40Var = this.mSplashAdListener;
            if (s40Var != null) {
                s40Var.onAdDismiss();
                return;
            }
            return;
        }
        TextView textView2 = this.mSkipView;
        if (textView2 != null) {
            textView2.setText(k40.m1442continue().getString(R.string.swl_sdk_skip_txt, Cgoto.m1019this(new StringBuilder(), this.mInterval, "")));
        }
        this.mInterval--;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSplash(SwlAdView swlAdView) {
        Activity activity;
        if (swlAdView == null || (activity = this.mActivity) == null || activity.isFinishing() || this.mViewGroup == null) {
            return;
        }
        this.mHandler.removeMessages(101);
        View inflate = LayoutInflater.from(this.mActivity).inflate(R.layout.swl_sdk_splash_layout, (ViewGroup) null);
        this.mViewGroup.removeAllViews();
        this.mViewGroup.addView(inflate);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.swl_sdk_splash_adview);
        imageView.setTag(swlAdView);
        imageView.setOnClickListener(this);
        TextView textView = (TextView) inflate.findViewById(R.id.swl_sdk_splash_skipview);
        this.mSkipView = textView;
        textView.setOnClickListener(this);
        r40 r40Var = k40.f2467do;
        if (r40Var != null) {
            ((y) r40Var).m3052do(this.mActivity, swlAdView.getImgurl(), imageView, this);
        }
        this.mHandler.sendEmptyMessageDelayed(102, 1000L);
        s40 s40Var = this.mSplashAdListener;
        if (s40Var != null) {
            s40Var.onAdShow();
        }
    }

    @Override // com.apk.o40
    public void error() {
    }

    public void loadAd() {
    }

    public void loadAd(final String str) {
        if (this.mActivity != null && this.mViewGroup != null) {
            if (!k40.m1460strictfp()) {
                s40 s40Var = this.mSplashAdListener;
                if (s40Var != null) {
                    s40Var.mo2028if(ErrorCode.NETWORK_SSL_HANDSHAKE, "没有网络");
                    return;
                }
                return;
            }
            if (this.mHandler == null) {
                this.mHandler = new ReferenceHandler(this);
            }
            this.mHandler.removeMessages(101);
            this.mHandler.sendEmptyMessageDelayed(101, SPLASH_AD_TIMEOUT);
            l40 l40Var = new l40();
            l40Var.m1613do(new m40<SwlAdView>() { // from class: com.swl.gg.ggs.SwlAdSplashView.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.apk.m40
                public SwlAdView doInBackground() {
                    return SwlAdHelper.getSwlAdView(str, true);
                }

                @Override // com.apk.m40
                public void onPostExecute(SwlAdView swlAdView) {
                    super.onPostExecute((AnonymousClass1) swlAdView);
                    if (swlAdView != null) {
                        SwlAdSplashView.this.setSplash(swlAdView);
                    } else if (SwlAdSplashView.this.mSplashAdListener != null) {
                        SwlAdSplashView.this.mSplashAdListener.mo2028if(ErrorCode.NETWORK_HTTP_STATUS_CODE, "加载失败，请重试？");
                    }
                }
            });
            this.mSwlReqTask = l40Var;
            return;
        }
        s40 s40Var2 = this.mSplashAdListener;
        if (s40Var2 != null) {
            s40Var2.mo2028if(ErrorCode.NETWORK_TIMEOUT, "activity或者其它参数为空");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            if (view.getId() == R.id.swl_sdk_splash_adview) {
                SwlAdView swlAdView = (SwlAdView) view.getTag();
                if (swlAdView != null) {
                    if (this.mSplashAdListener != null) {
                        this.mSplashAdListener.onAdClick();
                    }
                    SwlAdHelper.openBrowser(this.mActivity, swlAdView);
                }
            } else if (view.getId() == R.id.swl_sdk_splash_skipview) {
                if (this.mHandler != null) {
                    this.mHandler.removeCallbacksAndMessages(null);
                }
                if (this.mSplashAdListener != null) {
                    this.mSplashAdListener.onAdDismiss();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onDestroy() {
        l40 l40Var = this.mSwlReqTask;
        if (l40Var != null) {
            l40Var.cancel(true);
            this.mSwlReqTask = null;
        }
        ViewGroup viewGroup = this.mViewGroup;
        if (viewGroup == null || viewGroup.getChildCount() <= 0) {
            return;
        }
        this.mViewGroup.removeAllViews();
    }

    @Override // com.apk.o40
    public void success() {
        s40 s40Var = this.mSplashAdListener;
        if (s40Var != null) {
            s40Var.mo2027do();
        }
    }
}
