package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.e60;
import com.apk.eg;
import com.apk.f6;
import com.apk.g;
import com.apk.i0;
import com.apk.lv;
import com.apk.m0;
import com.apk.n5;
import com.apk.n60;
import com.apk.o;
import com.apk.q5;
import com.apk.r8;
import com.apk.s8;
import com.apk.v;
import com.apk.w0;
import com.apk.y5;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.ui.activity.WelComeActivity;
import com.biquge.ebook.app.widget.SplashUserServiceDialog;
import com.swl.gg.ggs.SwlAdSplashView;
import com.swl.gg.sdk.TrAdSdk;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WelComeActivity extends f6 implements y5 {

    /* renamed from: case  reason: not valid java name */
    public e60 f6874case;
    @BindView(R.id.welcome_ad_layout)
    public FrameLayout container;

    /* renamed from: do  reason: not valid java name */
    public boolean f6875do;

    /* renamed from: else  reason: not valid java name */
    public boolean f6876else;

    /* renamed from: for  reason: not valid java name */
    public boolean f6877for;

    /* renamed from: goto  reason: not valid java name */
    public long f6878goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f6879if;

    /* renamed from: new  reason: not valid java name */
    public q5 f6880new;

    /* renamed from: this  reason: not valid java name */
    public SwlAdSplashView f6881this;

    /* renamed from: try  reason: not valid java name */
    public long f6882try;

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_wel_come;
    }

    @Override // com.apk.f6
    public void initData() {
        super.initData();
        q5 q5Var = new q5(this, this);
        this.f6880new = q5Var;
        boolean z = true;
        if (!Ccontinue.m379if().m381else() && !ze.B() && !ze.C()) {
            z = ze.m3179private("SP_SHOW_AGREENMENT_KEY", false);
        }
        if (!z) {
            if (v.m2734do() != null) {
                try {
                    lv lvVar = new lv();
                    lvVar.f2941throw = new n5(q5Var);
                    lvVar.f2924for = Boolean.FALSE;
                    lvVar.f2926if = Boolean.FALSE;
                    SplashUserServiceDialog splashUserServiceDialog = new SplashUserServiceDialog(q5Var.f3559do);
                    lvVar.f2917continue = zu.f6266try;
                    splashUserServiceDialog.popupInfo = lvVar;
                    splashUserServiceDialog.show();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                throw null;
            }
        } else {
            q5Var.m2107new();
        }
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.f6
    public void initView() {
        View decorView;
        super.initView();
        AppContext.f6392case.f6396new = 0;
        this.f6882try = System.currentTimeMillis();
        try {
            if (Build.VERSION.SDK_INT >= 28 && (decorView = getWindow().getDecorView()) != null) {
                try {
                    try {
                        WindowManager.LayoutParams attributes = getWindow().getAttributes();
                        attributes.layoutInDisplayCutoutMode = 1;
                        getWindow().setAttributes(attributes);
                        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1028);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
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

    public final void j() {
        if (v.m2734do() != null) {
            if (!this.f6877for) {
                this.f6877for = true;
                this.f6879if = true;
                if (this.f6875do) {
                    return;
                }
                k();
                return;
            } else if (v.m2734do() == null) {
                throw null;
            } else {
                return;
            }
        }
        throw null;
    }

    public final void k() {
        long abs = Math.abs(System.currentTimeMillis() - this.f6882try);
        if (abs > 1000) {
            m();
        } else {
            postDelayed(new Runnable() { // from class: com.apk.z6
                @Override // java.lang.Runnable
                public final void run() {
                    WelComeActivity.this.m();
                }
            }, 1000 - abs);
        }
    }

    public void l(boolean z, g gVar) {
        m0.m1682if(false);
        o m1921for = o.m1921for();
        i0 i0Var = i0.f2029do;
        ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(i0Var);
        }
        if (gVar != null) {
            if (v.m2734do() != null) {
                try {
                    if (w0.m2872default()) {
                        this.container.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                String m899if = gVar.m899if();
                String m898do = gVar.m898do();
                if (TrAdSdk.isTheAd(m899if)) {
                    int i = gVar.f1482for;
                    int i2 = gVar.f1484new;
                    this.f6876else = false;
                    if (v.m2734do() != null) {
                        if (v.m2734do() != null) {
                            this.f6878goto = System.currentTimeMillis();
                            this.f6874case = new e60(this, this.container, new r8(this, i2, i, m899if), "open_v");
                            if (!w0.m2872default()) {
                                e60 e60Var = this.f6874case;
                                int m611static = eg.m611static() - eg.m587catch(80.0f);
                                if (e60Var == null) {
                                    throw null;
                                }
                                if (m611static > 0) {
                                    n60.Cdo.f3196new = m611static;
                                }
                            } else if (this.f6874case != null) {
                                n60.Cdo.f3193do = true;
                            } else {
                                throw null;
                            }
                            int m3174instanceof = ze.m3174instanceof("SPLASH_AD_TIMEOUT_TIME_KEY", 0);
                            if (m3174instanceof != 0) {
                                if (this.f6874case == null) {
                                    throw null;
                                }
                                if (m3174instanceof > 0) {
                                    n60.Cdo.f3195if = m3174instanceof;
                                }
                            }
                            this.f6874case.m541try(m899if, m898do, i, i2, false);
                            return;
                        }
                        throw null;
                    }
                    throw null;
                } else if ("swl".equals(m899if)) {
                    SwlAdSplashView swlAdSplashView = new SwlAdSplashView(this, this.container, new s8(this));
                    this.f6881this = swlAdSplashView;
                    swlAdSplashView.loadAd(m898do);
                    return;
                } else if (v.m2734do() != null) {
                    j();
                    return;
                } else {
                    throw null;
                }
            }
            throw null;
        }
        j();
    }

    /* renamed from: n */
    public final void m() {
        if (eg.m598goto("SP_APP_AD_APPID_DATA_KEY")) {
            if (v.m2734do() == null) {
                throw null;
            }
            return;
        }
        startActivity(new Intent(this, MainActivity.class));
        overridePendingTransition(R.anim.in_to_down_alpha, R.anim.in_to_down);
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.f6875do = false;
            if (this.container != null && this.container.getChildCount() > 0) {
                this.container.removeAllViews();
            }
            if (this.f6874case != null) {
                this.f6874case.m539case();
                this.f6874case = null;
            }
            if (this.f6881this != null) {
                this.f6881this.onDestroy();
                this.f6881this = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f6875do = true;
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f6879if && this.f6875do) {
            k();
        }
        this.f6875do = false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.f6876else && v.m2734do() == null) {
            throw null;
        }
    }
}
