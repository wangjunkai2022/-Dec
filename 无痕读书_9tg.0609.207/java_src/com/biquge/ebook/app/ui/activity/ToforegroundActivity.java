package com.biquge.ebook.app.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import butterknife.BindView;
import com.apk.Cstatic;
import com.apk.e60;
import com.apk.eg;
import com.apk.f6;
import com.apk.n60;
import com.apk.p0;
import com.apk.p8;
import com.apk.w0;
import com.apk.y60;
import com.apk.ze;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.ui.activity.ToforegroundActivity;
import com.swl.gg.ggs.SwlAdSplashView;
import com.swl.gg.sdk.TrAdSdk;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ToforegroundActivity extends f6 {
    @BindView(R.id.welcome_ad_layout)
    public ViewGroup container;

    /* renamed from: do  reason: not valid java name */
    public long f6843do;

    /* renamed from: for  reason: not valid java name */
    public final y60 f6844for = new Cdo();

    /* renamed from: if  reason: not valid java name */
    public e60 f6845if;

    /* renamed from: new  reason: not valid java name */
    public SwlAdSplashView f6846new;

    /* renamed from: com.biquge.ebook.app.ui.activity.ToforegroundActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements y60 {
        public Cdo() {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
            ToforegroundActivity.i(ToforegroundActivity.this);
        }

        @Override // com.apk.y60
        /* renamed from: do */
        public void mo2249do() {
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
            ToforegroundActivity.i(ToforegroundActivity.this);
        }

        @Override // com.apk.y60
        /* renamed from: for */
        public void mo2250for() {
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            ToforegroundActivity.i(ToforegroundActivity.this);
        }

        @Override // com.apk.y60
        public void onAdClick() {
        }

        @Override // com.apk.y60
        public void onAdDismiss() {
            ToforegroundActivity.i(ToforegroundActivity.this);
        }

        @Override // com.apk.y60
        public void onAdShow() {
            try {
                if (ze.m3174instanceof("TOFORE_SPLASH_AD_SHOW_MAX_KEY", 0) > 0) {
                    w0.m2871continue("SP_SAVE_TOFORE_SPLASH_AD_SHOW_MAX_KEY");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.y60
        public void onZoomOut() {
            p0.m2011super("SPLASH_V_PLUS_ZOOMOUT_KEY", "");
            ToforegroundActivity.this.setResult(-1);
        }
    }

    public static void i(final ToforegroundActivity toforegroundActivity) {
        if (toforegroundActivity != null) {
            long abs = Math.abs(System.currentTimeMillis() - toforegroundActivity.f6843do);
            if (abs > 1000) {
                toforegroundActivity.finish();
                return;
            } else {
                new Handler().postDelayed(new Runnable() { // from class: com.apk.y6
                    @Override // java.lang.Runnable
                    public final void run() {
                        ToforegroundActivity.this.finish();
                    }
                }, 1000 - abs);
                return;
            }
        }
        throw null;
    }

    public static void j(Activity activity, String str, String str2) {
        Intent intent = new Intent(activity, ToforegroundActivity.class);
        intent.putExtra("adType", str);
        intent.putExtra("adId", str2);
        activity.startActivityForResult(intent, 10286);
        activity.overridePendingTransition(R.anim.in_from_up, R.anim.in_to_down);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_wel_come;
    }

    @Override // com.apk.f6
    public void initData() {
        e60 e60Var;
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("adType");
            String stringExtra2 = intent.getStringExtra("adId");
            try {
                if (w0.m2872default()) {
                    this.container.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (TrAdSdk.isTheAd(stringExtra)) {
                try {
                    AppContext appContext = AppContext.f6392case;
                    y60 y60Var = this.f6844for;
                    Cstatic cstatic = appContext.f6393do;
                    if (cstatic != null) {
                        if (cstatic.f4583case != null) {
                            cstatic.f4585else = y60Var;
                        }
                        e60Var = cstatic.f4583case;
                    } else {
                        e60Var = null;
                    }
                    this.f6845if = e60Var;
                    if (e60Var != null) {
                        e60Var.m540else(this.container);
                        return;
                    }
                    this.f6845if = new e60(this, this.container, this.f6844for, "toforeground");
                    if (!w0.m2872default()) {
                        e60 e60Var2 = this.f6845if;
                        int m611static = eg.m611static() - eg.m587catch(80.0f);
                        if (e60Var2 == null) {
                            throw null;
                        }
                        if (m611static > 0) {
                            n60.Cdo.f3196new = m611static;
                        }
                    } else if (this.f6845if != null) {
                        n60.Cdo.f3193do = true;
                    } else {
                        throw null;
                    }
                    int m3174instanceof = ze.m3174instanceof("SPLASH_AD_TIMEOUT_TIME_KEY", 0);
                    if (m3174instanceof > 0) {
                        if (this.f6845if == null) {
                            throw null;
                        }
                        if (m3174instanceof > 0) {
                            n60.Cdo.f3195if = m3174instanceof;
                        }
                    }
                    this.f6845if.m541try(stringExtra, stringExtra2, 0, 0, false);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            } else if ("swl".equals(stringExtra)) {
                SwlAdSplashView swlAdSplashView = new SwlAdSplashView(this, this.container, new p8(this));
                this.f6846new = swlAdSplashView;
                swlAdSplashView.loadAd(stringExtra2);
                return;
            } else {
                finish();
                return;
            }
        }
        finish();
    }

    @Override // com.apk.f6
    public void initView() {
        View decorView;
        this.f6843do = System.currentTimeMillis();
        try {
            if (Build.VERSION.SDK_INT >= 28 && (decorView = getWindow().getDecorView()) != null) {
                try {
                    WindowManager.LayoutParams attributes = getWindow().getAttributes();
                    attributes.layoutInDisplayCutoutMode = 1;
                    getWindow().setAttributes(attributes);
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1028);
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (NoSuchFieldError e2) {
                    e2.printStackTrace();
                } catch (NoSuchMethodError e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (this.f6846new != null) {
                this.f6846new.onDestroy();
                this.f6846new = null;
            }
            if (this.f6845if != null) {
                this.f6845if.m539case();
                this.f6845if = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
