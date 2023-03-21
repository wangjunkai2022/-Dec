package com.biquge.ebook.app.ui.fragment;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.Cgoto;
import com.apk.b1;
import com.apk.bg;
import com.apk.g6;
import com.apk.hf;
import com.apk.mf;
import com.apk.r5;
import com.apk.rz;
import com.apk.tt;
import com.apk.u;
import com.apk.u5;
import com.apk.v;
import com.apk.v0;
import com.apk.v3;
import com.apk.vb;
import com.apk.w0;
import com.apk.xp0;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.bean.MyInfoMsgBean;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.bean.WantBookBean;
import com.biquge.ebook.app.ui.activity.DownloadManagerActivity;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.ui.activity.MyAccountActivity;
import com.biquge.ebook.app.ui.activity.MyFootprintActivity;
import com.biquge.ebook.app.ui.activity.MyListActivity;
import com.biquge.ebook.app.ui.activity.MyNewsActivity;
import com.biquge.ebook.app.ui.activity.SetActivity;
import com.biquge.ebook.app.ui.activity.UploadBookActivity;
import com.biquge.ebook.app.ui.activity.WantProgressActivity;
import com.biquge.ebook.app.widget.CircleImageView;
import com.biquge.ebook.app.widget.NewShareEntranceView;
import com.biquge.ebook.app.widget.TopMsgView;
import com.biquge.ebook.app.widget.VideoFreeAdDialog;
import com.biquge.ebook.app.widget.marqueeview.MarqueeTextView;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class InfoFragment extends g6 implements rz {

    /* renamed from: break  reason: not valid java name */
    public int f7481break;

    /* renamed from: case  reason: not valid java name */
    public int f7482case;

    /* renamed from: catch  reason: not valid java name */
    public int f7483catch;

    /* renamed from: do  reason: not valid java name */
    public xp0 f7485do;

    /* renamed from: else  reason: not valid java name */
    public int f7486else;

    /* renamed from: for  reason: not valid java name */
    public xp0 f7487for;

    /* renamed from: if  reason: not valid java name */
    public View f7489if;
    @BindView(R.id.comple_user_info_red_tagview)
    public ImageView mCompleRedTagView;
    @BindView(R.id.myinfo_msg_view)
    public MarqueeTextView mMyInfoMsgView;
    @BindView(R.id.function_new_share_layout)
    public NewShareEntranceView mNewShareEntranceView;
    @BindView(R.id.fragment_info_nickname_tv)
    public TextView mNickNameTView;
    @BindView(R.id.function_upload_book)
    public TextView mUploadTv;
    @BindView(R.id.fragment_info_headicon)
    public CircleImageView mUserHeadView;
    @BindView(R.id.fragment_info_login)
    public TextView mUserNameTView;
    @BindView(R.id.function_want_book_layout)
    public FrameLayout mWantProgressLayout;
    @BindView(R.id.function_want_book_progress)
    public TextView mWantProgressTv;

    /* renamed from: new  reason: not valid java name */
    public xp0 f7490new;

    /* renamed from: this  reason: not valid java name */
    public v3 f7491this;

    /* renamed from: try  reason: not valid java name */
    public z2 f7492try;

    /* renamed from: goto  reason: not valid java name */
    public final r5 f7488goto = new Cif();

    /* renamed from: class  reason: not valid java name */
    public final u5 f7484class = new Cfor();

    /* renamed from: com.biquge.ebook.app.ui.fragment.InfoFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            MyInfoMsgBean myInfoMsgBean = Ccontinue.m379if().f727throws;
            if (myInfoMsgBean != null) {
                TopMsgView.m3527for(InfoFragment.this.getSupportActivity(), myInfoMsgBean.getUrl(), myInfoMsgBean.getPkg(), myInfoMsgBean.getLandingtype());
                InfoFragment.this.k(false);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.InfoFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends u5 {
        public Cfor() {
        }

        @Override // com.apk.u5
        /* renamed from: return */
        public void mo2684return(WantBookBean wantBookBean) {
            if (wantBookBean != null) {
                InfoFragment infoFragment = InfoFragment.this;
                infoFragment.f7481break = 0;
                infoFragment.f7483catch = 0;
                for (WantBookBean.WantProgressBean wantProgressBean : wantBookBean.getList()) {
                    if (wantProgressBean.getIsPass() != -1) {
                        if (wantProgressBean.getThreshold() == 100) {
                            InfoFragment.this.f7481break++;
                        } else {
                            InfoFragment.this.f7483catch++;
                        }
                    }
                }
            }
            InfoFragment.a(InfoFragment.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.InfoFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends r5 {
        public Cif() {
        }

        @Override // com.apk.r5
        /* renamed from: super */
        public void mo2240super(WantBookBean wantBookBean) {
            if (wantBookBean != null) {
                InfoFragment infoFragment = InfoFragment.this;
                infoFragment.f7482case = 0;
                infoFragment.f7486else = 0;
                for (WantBookBean.WantProgressBean wantProgressBean : wantBookBean.getList()) {
                    if (wantProgressBean.getIsPass() != -1) {
                        if (wantProgressBean.getThreshold() == 100) {
                            InfoFragment.this.f7482case++;
                        } else {
                            InfoFragment.this.f7486else++;
                        }
                    }
                }
            }
            InfoFragment.a(InfoFragment.this);
        }
    }

    public static void a(InfoFragment infoFragment) {
        if (infoFragment != null) {
            try {
                int i = infoFragment.f7482case + infoFragment.f7481break;
                int i2 = infoFragment.f7486else + infoFragment.f7483catch;
                if (i == 0 && i2 == 0) {
                    return;
                }
                TextView textView = infoFragment.mWantProgressTv;
                textView.setText(i + "/" + (i + i2));
                if (infoFragment.mWantProgressLayout.getVisibility() != 0) {
                    infoFragment.mWantProgressLayout.setVisibility(0);
                }
                tt.f4763do.putBoolean("SP_SHOW_INFO_WANT_BOOK_KEY", true);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public final void f() {
        try {
            if (v0.m2736try().m2741const()) {
                this.mUserNameTView.setText(v0.m2736try().m2747new());
                if (!TextUtils.isEmpty(v0.m2736try().m2749this())) {
                    this.mNickNameTView.setText(v0.m2736try().m2749this());
                    this.mNickNameTView.setVisibility(0);
                }
                if (!v0.m2736try().m2740class()) {
                    j(ze.m3179private("SP_SHOW_COMPLE_INFO_RED_TAG_KEY", true));
                    return;
                } else {
                    j(false);
                    return;
                }
            }
            j(false);
            this.mUserNameTView.setText(ze.q(R.string.info_login_register_title));
            this.mNickNameTView.setVisibility(8);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_myinfo;
    }

    public final void h() {
        MyInfoMsgBean myInfoMsgBean;
        MarqueeTextView marqueeTextView = this.mMyInfoMsgView;
        if (marqueeTextView == null || marqueeTextView.getVisibility() != 8 || (myInfoMsgBean = Ccontinue.m379if().f727throws) == null) {
            return;
        }
        this.mMyInfoMsgView.setText(myInfoMsgBean.getMsg());
        this.mMyInfoMsgView.setVisibility(0);
        k(ze.m3179private("SP_MYINFO_MSG_KEY", false));
        this.mMyInfoMsgView.setOnClickListener(new Cdo());
    }

    public final void i() {
        if (this.f7492try == null) {
            this.f7492try = new z2(getSupportActivity(), this.f7488goto);
        }
        this.f7492try.m3144static();
    }

    @Override // com.apk.g6
    public void initData() {
        f();
        n();
        l();
        new b1().m141do(new vb(this));
        NewShareDisBean m382for = Ccontinue.m379if().m382for();
        if (m382for != null && !m382for.isOnlyCheckTime()) {
            this.mNewShareEntranceView.m3479do();
            this.mNewShareEntranceView.setVisibility(0);
        }
        h();
    }

    @Override // com.apk.g6
    public void initView() {
        registerEventBus(this);
        if (w0.m2881import()) {
            return;
        }
        this.mUserHeadView.setImageResource(R.drawable.woman);
    }

    public final void j(boolean z) {
        if (z) {
            if (this.mCompleRedTagView.getVisibility() != 0) {
                this.mCompleRedTagView.setVisibility(0);
            }
        } else if (this.mCompleRedTagView.getVisibility() != 8) {
            this.mCompleRedTagView.setVisibility(8);
            tt.f4763do.putBoolean("SP_SHOW_COMPLE_INFO_RED_TAG_KEY", false);
        }
    }

    public final void k(boolean z) {
        if (z) {
            if (this.f7485do == null) {
                xp0 xp0Var = new xp0(getSupportActivity());
                this.f7485do = xp0Var;
                xp0Var.m3031do(this.mMyInfoMsgView);
                xp0Var.m3037this(0.0f, 10.0f, true);
                xp0Var.m3034goto(-1);
                return;
            }
            return;
        }
        xp0 xp0Var2 = this.f7485do;
        if (xp0Var2 != null) {
            xp0Var2.m3034goto(0);
            tt.f4763do.putBoolean("SP_MYINFO_MSG_KEY", false);
            mf.m1712do("REFRESH_CHECK_TASK_RED_KEY", null);
        }
    }

    public final void l() {
        if (ze.m3179private("SP_SHOW_INFO_WANT_BOOK_KEY", false)) {
            this.mWantProgressLayout.setVisibility(0);
        }
        hf hfVar = Ccontinue.m379if().f729while;
        if (hfVar == hf.BOOK) {
            m();
        } else if (hfVar == hf.COMIC) {
            i();
        } else {
            m();
            i();
        }
    }

    public final void m() {
        if (this.f7491this == null) {
            this.f7491this = new v3(getSupportActivity(), this.f7484class);
        }
        this.f7491this.m2773throws();
    }

    @OnClick({R.id.fragment_user_info_layout, R.id.function_navigation_myfootprint, R.id.function_navigation_mybooklist, R.id.function_navigation_cache_manager, R.id.function_navigation_share_friend, R.id.function_navigation_set, R.id.function_upload_book, R.id.function_want_book, R.id.function_navigation_mynews})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.fragment_user_info_layout /* 2131296837 */:
                if (v0.m2736try().m2741const()) {
                    getSupportActivity().startActivityForResult(new Intent(getSupportActivity(), MyAccountActivity.class), 103);
                    if (v.m2734do() != null) {
                        j(false);
                        return;
                    }
                    throw null;
                }
                ze.M(getSupportActivity());
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            case R.id.function_navigation_cache_manager /* 2131296851 */:
                startActivity(new Intent(getSupportActivity(), DownloadManagerActivity.class));
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            case R.id.function_navigation_mybooklist /* 2131296855 */:
                if (!v0.m2736try().m2741const()) {
                    LoginActivity.l(getSupportActivity());
                    return;
                }
                startActivity(new Intent(getSupportActivity(), MyListActivity.class));
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            case R.id.function_navigation_myfootprint /* 2131296857 */:
                startActivity(new Intent(getSupportActivity(), MyFootprintActivity.class));
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            case R.id.function_navigation_mynews /* 2131296858 */:
                startActivity(new Intent(getSupportActivity(), MyNewsActivity.class));
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            case R.id.function_navigation_set /* 2131296859 */:
                startActivity(new Intent(getSupportActivity(), SetActivity.class));
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            case R.id.function_navigation_share_friend /* 2131296860 */:
                if (this.f7489if == null) {
                    View inflate = ((ViewStub) findViewById(R.id.new_share_detail_layout)).inflate();
                    this.f7489if = inflate;
                    inflate.setVisibility(4);
                }
                w0.m2882interface(getSupportActivity(), this.f7489if, null, null);
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            case R.id.function_upload_book /* 2131296862 */:
                UploadBookActivity.i(getSupportActivity());
                xp0 xp0Var = this.f7490new;
                if (xp0Var != null) {
                    xp0Var.m3034goto(0);
                    tt.f4763do.putBoolean("SP_INFO_UPLOAD_BOOK_KEY", false);
                }
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            case R.id.function_want_book /* 2131296863 */:
                WantProgressActivity.i(getSupportActivity());
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            default:
                return;
        }
    }

    public void n() {
        if (this.mUserHeadView != null) {
            String m2620do = tt.m2620do("SP_SAVE_USER_HEADICON_KEY", "");
            if (TextUtils.isEmpty(m2620do) || !Cgoto.m1024volatile(m2620do)) {
                return;
            }
            u.m2660throws(m2620do, this.mUserHeadView);
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        NewShareEntranceView newShareEntranceView;
        TextView textView;
        TextView textView2;
        String str = mfVar.f3028do;
        if ("login_action_start".equals(str)) {
            this.mUserNameTView.setText(ze.q(R.string.info_login_in_title));
        } else if ("login_action".equals(str)) {
            f();
        } else if ("EVENT_COMPLE_USERINFO_KEY".equals(str)) {
            f();
        } else if ("REFRESH_CHECK_TASK_RED_KEY".equals(str)) {
            new b1().m141do(new vb(this));
        } else if ("REFRESH_WANTBOOK_KEY".equals(str)) {
            l();
        } else if ("REFRESH_NEW_SHARE_LINK_USEAR".equals(str)) {
            NewShareEntranceView newShareEntranceView2 = this.mNewShareEntranceView;
            if (newShareEntranceView2 != null) {
                newShareEntranceView2.m3479do();
            }
        } else if ("SP_MYINFO_MSG_KEY".equals(str)) {
            h();
        } else if (!"EVENT_REFRESH_GONE_FREE_AD_BTN_KEY".equals(str) || (newShareEntranceView = this.mNewShareEntranceView) == null) {
        } else {
            String m2879goto = w0.m2879goto();
            if (!TextUtils.isEmpty(m2879goto) && (textView2 = newShareEntranceView.f8089if) != null) {
                textView2.setText(ze.r(R.string.new_share_from_ad_endtime, m2879goto));
            }
            if (Cfinally.m800if() && (textView = newShareEntranceView.f8088for) != null) {
                textView.setVisibility(8);
            }
            VideoFreeAdDialog videoFreeAdDialog = newShareEntranceView.f8090new;
            if (videoFreeAdDialog != null) {
                videoFreeAdDialog.m3529if();
            }
        }
    }
}
