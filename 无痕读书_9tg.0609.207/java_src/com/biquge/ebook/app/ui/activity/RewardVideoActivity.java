package com.biquge.ebook.app.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.a1;
import com.apk.bg;
import com.apk.c;
import com.apk.e;
import com.apk.f6;
import com.apk.g8;
import com.apk.hf;
import com.apk.k30;
import com.apk.kg;
import com.apk.mf;
import com.apk.r0;
import com.apk.s0;
import com.apk.tt;
import com.apk.v60;
import com.apk.w0;
import com.apk.z60;
import com.apk.ze;
import com.biquge.ebook.app.bean.NewShareDisBean;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class RewardVideoActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public boolean f6758do;

    /* renamed from: for  reason: not valid java name */
    public int f6760for;

    /* renamed from: goto  reason: not valid java name */
    public int f6761goto;

    /* renamed from: if  reason: not valid java name */
    public hf f6762if;
    @BindView(R.id.eward_video_submit)
    public TextView mButton;
    @BindView(R.id.reward_video_layout)
    public LinearLayout mContentLayout;
    @BindView(R.id.reward_video_loading_layout)
    public View mLoadingView;
    @BindView(R.id.reward_video_message_tv)
    public TextView mMessageTView;
    @BindView(R.id.reward_video_message_public_time_tv)
    public TextView mPublicTimeMessageTView;
    @BindView(R.id.reward_video_state_iv)
    public ImageView mStateIView;
    @BindView(R.id.reward_video_state_tv)
    public TextView mStateTView;

    /* renamed from: new  reason: not valid java name */
    public String f6763new;

    /* renamed from: try  reason: not valid java name */
    public boolean f6765try;

    /* renamed from: case  reason: not valid java name */
    public final z60 f6757case = new Cdo();

    /* renamed from: else  reason: not valid java name */
    public final v60 f6759else = new Cif();

    /* renamed from: this  reason: not valid java name */
    public final Runnable f6764this = new Cfor();

    /* renamed from: com.biquge.ebook.app.ui.activity.RewardVideoActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements z60 {
        public Cdo() {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
            RewardVideoActivity.this.u();
        }

        @Override // com.apk.z60
        /* renamed from: do */
        public void mo524do() {
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
            RewardVideoActivity.this.u();
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            RewardVideoActivity.this.s();
        }

        @Override // com.apk.z60
        public void onAdClick() {
        }

        @Override // com.apk.z60
        public void onAdClose() {
            if (ze.m3179private("SP_VIDEO_AD_REWARD_VALID_KEY", false)) {
                RewardVideoActivity rewardVideoActivity = RewardVideoActivity.this;
                if (rewardVideoActivity.f6760for == 12) {
                    rewardVideoActivity.u();
                    RewardVideoActivity.this.setResult(-1);
                    RewardVideoActivity.this.finish();
                    return;
                }
                rewardVideoActivity.u();
                return;
            }
            RewardVideoActivity rewardVideoActivity2 = RewardVideoActivity.this;
            if (rewardVideoActivity2.f6758do) {
                return;
            }
            rewardVideoActivity2.s();
        }

        @Override // com.apk.z60
        public void onAdLoaded() {
        }

        @Override // com.apk.z60
        public void onAdShow() {
            RewardVideoActivity.this.m3313for();
        }

        @Override // com.apk.z60
        public void onVideoCached() {
        }

        @Override // com.apk.z60
        /* renamed from: try */
        public void mo525try() {
            if (ze.m3179private("SP_VIDEO_AD_REWARD_VALID_KEY", false)) {
                return;
            }
            RewardVideoActivity rewardVideoActivity = RewardVideoActivity.this;
            rewardVideoActivity.f6758do = true;
            rewardVideoActivity.u();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.RewardVideoActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardVideoActivity.this.f6765try = false;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.RewardVideoActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements v60 {
        public Cif() {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
            RewardVideoActivity.this.u();
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
            RewardVideoActivity.this.u();
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            RewardVideoActivity.this.s();
        }

        @Override // com.apk.v60
        public void onAdClick() {
        }

        @Override // com.apk.v60
        public void onAdClose() {
            RewardVideoActivity rewardVideoActivity = RewardVideoActivity.this;
            if (rewardVideoActivity.f6760for == 12) {
                rewardVideoActivity.u();
                RewardVideoActivity.this.setResult(-1);
                RewardVideoActivity.this.finish();
                return;
            }
            rewardVideoActivity.u();
        }

        @Override // com.apk.v60
        public void onAdLoaded() {
        }

        @Override // com.apk.v60
        public void onAdShow() {
        }

        @Override // com.apk.v60
        public void onVideoCached() {
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.RewardVideoActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends bg {
        public Cnew() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            RewardVideoActivity.this.finish();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.RewardVideoActivity$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends bg {
        public Ctry() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            RewardVideoActivity.this.initData();
        }
    }

    public static void o(Activity activity, hf hfVar, int i) {
        Intent intent = new Intent(activity, RewardVideoActivity.class);
        intent.putExtra("sourceType", 12);
        intent.putExtra("sourceMocule", hfVar);
        activity.startActivityForResult(intent, i);
    }

    public static void p(Context context, int i) {
        Intent intent = new Intent(context, RewardVideoActivity.class);
        intent.putExtra("sourceType", i);
        context.startActivity(intent);
    }

    public static void q(Activity activity, int i, int i2) {
        Intent intent = new Intent(activity, RewardVideoActivity.class);
        intent.putExtra("sourceType", i);
        activity.startActivityForResult(intent, i2);
    }

    public static void r(Context context, int i) {
        Intent intent = new Intent(context, RewardVideoActivity.class);
        intent.putExtra("sourceType", i);
        context.startActivity(intent);
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3313for() {
        if (this.mLoadingView.getVisibility() != 8) {
            this.mLoadingView.setVisibility(8);
        }
        removeCallbacks(this.f6764this);
        post(this.f6764this);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_reward_video;
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            if (!isTaskRoot()) {
                String action = intent.getAction();
                if (intent.hasCategory("android.intent.category.LAUNCHER") && action != null && action.equals("android.intent.action.MAIN")) {
                    finish();
                    return;
                }
            }
            this.f6760for = intent.getIntExtra("sourceType", 11);
            hf hfVar = (hf) intent.getSerializableExtra("sourceMocule");
            this.f6762if = hfVar;
            if (hfVar == null) {
                this.f6762if = hf.BOOK;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0118  */
    @Override // com.apk.f6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initData() {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.activity.RewardVideoActivity.initData():void");
    }

    @Override // com.apk.f6
    public void initView() {
        int i = this.f6760for;
        if (i != 1) {
            if (i != 2 && i != 3) {
                switch (i) {
                    case 11:
                        initTopBarOnlyTitle(R.id.activity_reward_video_actionbar, R.string.reward_video_title_txt);
                        return;
                    case 12:
                    case 15:
                        initTopBarOnlyTitle(R.id.activity_reward_video_actionbar, R.string.read_reward_video_title_txt);
                        return;
                    case 13:
                        initTopBarOnlyTitle(R.id.activity_reward_video_actionbar, R.string.share_entrance_free_ad_btn_txt);
                        return;
                    case 14:
                        break;
                    default:
                        return;
                }
            }
            initTopBarOnlyTitle(R.id.activity_reward_video_actionbar, R.string.read_reward_download_title);
            return;
        }
        initTopBarOnlyTitle(R.id.activity_reward_video_actionbar, R.string.read_reward_tts_title);
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    public final void l(String str, String str2) {
        int i = this.f6760for;
        if (i == 1) {
            this.f6763new = "ts";
        } else if (i == 2 || i == 3 || i == 14) {
            this.f6763new = "xz";
        } else if (i != 12 && i != 15) {
            this.f6763new = "other";
        } else {
            this.f6763new = "read";
        }
        c.m286while().m291import(null, str, str2, this.f6759else, this.f6763new);
    }

    public final void m(String str, String str2) {
        int i = this.f6760for;
        e.m520while().m521import(str, str2, this.f6757case, i == 1 ? "ts" : (i == 2 || i == 3 || i == 14 || i == 15) ? "xz" : i == 12 ? "read" : "other");
    }

    public final void n() {
        m3313for();
        this.mStateIView.setVisibility(0);
        this.mStateTView.setText("");
        this.mMessageTView.setText(ze.q(R.string.reward_video_no_net_txt));
        this.mMessageTView.setVisibility(0);
        this.mButton.setText(ze.q(R.string.reward_video_reload_txt));
        this.mButton.setOnClickListener(new Ctry());
        t();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f6765try) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        c.m286while().m294throw(this.f6763new);
        e.m520while().m523throw(this.f6763new);
    }

    @Override // com.apk.f6, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (this.f6765try) {
                return false;
            }
            if (this.f6760for == 12) {
                setResult(-1);
            }
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public final void s() {
        int i = this.f6761goto + 1;
        this.f6761goto = i;
        if (i == ze.m3174instanceof("SP_VIDEO_AD_RETRY_COUNT_KEY", 3)) {
            if (this.f6760for == 12) {
                setResult(-1);
                finish();
                return;
            }
            u();
            return;
        }
        m3313for();
        this.mStateIView.setVisibility(4);
        this.mStateTView.setText("");
        this.mMessageTView.setText(ze.q(R.string.reward_video_from_ad_failed_txt));
        this.mMessageTView.setVisibility(0);
        this.mButton.setText(ze.q(R.string.reward_video_reload_txt));
        this.mButton.setOnClickListener(new g8(this));
        t();
    }

    public final void t() {
        if (this.mContentLayout.getVisibility() != 0) {
            this.mContentLayout.setVisibility(0);
        }
    }

    public final void u() {
        String str;
        m3313for();
        this.mStateIView.setVisibility(0);
        this.mPublicTimeMessageTView.setVisibility(8);
        int i = this.f6760for;
        String str2 = null;
        int i2 = 1;
        if (i == 1) {
            this.mStateTView.setText(ze.q(R.string.read_reward_video_from_ad_success_txt));
            this.mMessageTView.setText(ze.r(R.string.read_reward_tts_tips, ze.r(R.string.read_reward_tts_unit_m, Integer.valueOf(s0.m2367if().f4233goto))));
            if (s0.m2367if().f4226class) {
                this.mPublicTimeMessageTView.setText(ze.q(R.string.read_reward_public_time_tts_tips));
                this.mPublicTimeMessageTView.setVisibility(0);
            } else if (s0.m2367if().f4227const) {
                this.mMessageTView.setText(Html.fromHtml(s0.m2367if().f4225catch));
            }
            s0 m2367if = s0.m2367if();
            if (m2367if != null) {
                tt.f4763do.putInt("SP_TTS_USE_TIME_KEY", 0);
                if (m2367if.f4226class) {
                    tt.f4763do.putLong("SP_TTS_TIME_SAVE_KEY", System.currentTimeMillis());
                } else if (m2367if.f4227const) {
                    tt.f4763do.putString("SP_TSLIMIT_TODAT_REWARD_KEY", kg.m1498if());
                }
            } else {
                throw null;
            }
        } else if (i == 2) {
            this.mStateTView.setText(ze.q(R.string.read_reward_video_from_ad_success_txt));
            this.mMessageTView.setText(ze.r(R.string.read_reward_download_tips, String.valueOf(s0.m2367if().f4247while)));
            s0 m2367if2 = s0.m2367if();
            tt.f4763do.putInt("DB_VIDEO_REWARD_XZ_KEY_", m2367if2.f4247while);
            if (m2367if2.f4240static) {
                tt.f4763do.putString("SP_NOVEL_XZ_TODAY_KEY", kg.m1498if());
            }
            str2 = ze.q(R.string.reward_video_to_download_txt);
        } else if (i != 3) {
            switch (i) {
                case 12:
                    this.mStateTView.setText(ze.q(R.string.read_reward_video_from_ad_success_txt));
                    if (hf.COMIC == this.f6762if) {
                        this.mMessageTView.setText(Html.fromHtml(k30.m1427catch().m1430class()));
                    } else {
                        this.mMessageTView.setText(Html.fromHtml(r0.m2199catch().m2202class()));
                    }
                    setResult(-1);
                    finish();
                    return;
                case 13:
                    tt.f4763do.putInt("SP_VIDEO_FREE_AD_KEY", Cfinally.m792break() + 1);
                    String q = ze.q(R.string.main_confirm);
                    NewShareDisBean m382for = Ccontinue.m379if().m382for();
                    if (m382for == null) {
                        str = null;
                    } else if (Cfinally.m800if()) {
                        str = m382for.getOver_tips().replace("{next_noad_days}", m382for.getNext_noad_days() + "");
                    } else {
                        str = m382for.getAfter_fir_tips().replace("{result}", (Cfinally.m794catch() - Cfinally.m792break()) + "");
                    }
                    if (TextUtils.isEmpty(str)) {
                        str = ze.q(R.string.read_reward_video_from_ad_success_txt);
                    }
                    this.mMessageTView.setText(Html.fromHtml(str));
                    int m792break = Cfinally.m792break();
                    if (m792break == 1) {
                        if (m382for != null) {
                            i2 = m382for.getFir_spgg();
                        }
                    } else if (m792break != Cfinally.m794catch()) {
                        i2 = 0;
                    } else if (m382for != null) {
                        i2 = m382for.getNext_noad_days();
                    }
                    if (i2 > 0) {
                        Cfinally.m797else().f1346do = false;
                        String m2879goto = w0.m2879goto();
                        if (TextUtils.isEmpty(m2879goto)) {
                            m2879goto = kg.m1497goto(System.currentTimeMillis());
                        }
                        w0.m2885package(kg.m1500this(kg.m1493catch(m2879goto, kg.f2535do) + (i2 * 24 * 60 * 60 * 1000), kg.f2535do));
                        this.mStateTView.setVisibility(0);
                    } else {
                        this.mStateTView.setVisibility(4);
                    }
                    mf.m1712do("EVENT_REFRESH_GONE_FREE_AD_BTN_KEY", null);
                    finish();
                    str2 = q;
                    break;
                case 14:
                    mf.m1712do("CACHE_BATCH_AUTO_DOWNLOAD_KEY", null);
                    onBackPressed();
                    break;
                case 15:
                    this.mStateTView.setText(ze.q(R.string.read_reward_video_from_ad_success_txt));
                    this.mMessageTView.setText(Html.fromHtml(ze.r(R.string.read_reward_video_from_ad_tips_txt, a1.m12this().m1806try())));
                    setResult(-1);
                    finish();
                    break;
            }
        } else {
            this.mStateTView.setText(ze.q(R.string.read_reward_video_from_ad_success_txt));
            this.mMessageTView.setText(ze.r(R.string.read_reward_download_mh_tips, String.valueOf(s0.m2367if().f4238public)));
            s0 m2367if3 = s0.m2367if();
            tt.f4763do.putInt("DB_VIDEO_CHAPTER_REWARD_XZ_COMIC_KEY", m2367if3.f4238public);
            if (m2367if3.f4240static) {
                tt.f4763do.putString("SP_COMIC_XZ_TODAY_KEY", kg.m1498if());
            }
            str2 = ze.q(R.string.reward_video_to_download_txt);
        }
        this.mMessageTView.setVisibility(0);
        if (TextUtils.isEmpty(str2)) {
            str2 = ze.q(R.string.reward_video_from_ad_to_read_txt);
        }
        this.mButton.setText(str2);
        this.mButton.setOnClickListener(new Cnew());
        t();
    }
}
