package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.CircleImageView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MyAccountActivity_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f6717case;

    /* renamed from: do  reason: not valid java name */
    public MyAccountActivity f6718do;

    /* renamed from: else  reason: not valid java name */
    public View f6719else;

    /* renamed from: for  reason: not valid java name */
    public View f6720for;

    /* renamed from: if  reason: not valid java name */
    public View f6721if;

    /* renamed from: new  reason: not valid java name */
    public View f6722new;

    /* renamed from: try  reason: not valid java name */
    public View f6723try;

    /* renamed from: com.biquge.ebook.app.ui.activity.MyAccountActivity_ViewBinding$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MyAccountActivity f6724do;

        public Ccase(MyAccountActivity_ViewBinding myAccountActivity_ViewBinding, MyAccountActivity myAccountActivity) {
            this.f6724do = myAccountActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6724do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MyAccountActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MyAccountActivity f6725do;

        public Cdo(MyAccountActivity_ViewBinding myAccountActivity_ViewBinding, MyAccountActivity myAccountActivity) {
            this.f6725do = myAccountActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6725do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MyAccountActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MyAccountActivity f6726do;

        public Cfor(MyAccountActivity_ViewBinding myAccountActivity_ViewBinding, MyAccountActivity myAccountActivity) {
            this.f6726do = myAccountActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6726do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MyAccountActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MyAccountActivity f6727do;

        public Cif(MyAccountActivity_ViewBinding myAccountActivity_ViewBinding, MyAccountActivity myAccountActivity) {
            this.f6727do = myAccountActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6727do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MyAccountActivity_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MyAccountActivity f6728do;

        public Cnew(MyAccountActivity_ViewBinding myAccountActivity_ViewBinding, MyAccountActivity myAccountActivity) {
            this.f6728do = myAccountActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6728do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MyAccountActivity_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MyAccountActivity f6729do;

        public Ctry(MyAccountActivity_ViewBinding myAccountActivity_ViewBinding, MyAccountActivity myAccountActivity) {
            this.f6729do = myAccountActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6729do.menuClick(view);
        }
    }

    @UiThread
    public MyAccountActivity_ViewBinding(MyAccountActivity myAccountActivity, View view) {
        this.f6718do = myAccountActivity;
        myAccountActivity.mHeadView = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.fragment_info_headicon_login, "field 'mHeadView'", CircleImageView.class);
        myAccountActivity.mNickNameTView = (TextView) Utils.findRequiredViewAsType(view, R.id.fragment_info_nickname, "field 'mNickNameTView'", TextView.class);
        myAccountActivity.mLoginNameTView = (TextView) Utils.findRequiredViewAsType(view, R.id.fragment_info_loginname_login, "field 'mLoginNameTView'", TextView.class);
        myAccountActivity.mCompleInfoTitleTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.my_account_phone_title_txt, "field 'mCompleInfoTitleTxt'", TextView.class);
        myAccountActivity.mPhoneTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.my_account_phone_txt, "field 'mPhoneTxt'", TextView.class);
        myAccountActivity.mBandUserInfoTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.my_account_comple_email_txt, "field 'mBandUserInfoTxt'", TextView.class);
        myAccountActivity.mEmailTv = (TextView) Utils.findRequiredViewAsType(view, R.id.fragment_info_email, "field 'mEmailTv'", TextView.class);
        myAccountActivity.mUpdatePasswordTitleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.my_account_reset_pwd_title_txt, "field 'mUpdatePasswordTitleTv'", TextView.class);
        myAccountActivity.mUpdatePasswordBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.my_account_reset_pwd_btn, "field 'mUpdatePasswordBtn'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.my_account_band_email_layout, "method 'menuClick'");
        this.f6721if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, myAccountActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.my_account_reset_pwd_layout, "method 'menuClick'");
        this.f6720for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, myAccountActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.fragment_info_headicon_login_layout, "method 'menuClick'");
        this.f6722new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, myAccountActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.my_account_loginout_layout, "method 'menuClick'");
        this.f6723try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, myAccountActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.my_account_security_center_layout, "method 'menuClick'");
        this.f6717case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, myAccountActivity));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.fragment_info_nickname_login_layout, "method 'menuClick'");
        this.f6719else = findRequiredView6;
        findRequiredView6.setOnClickListener(new Ccase(this, myAccountActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyAccountActivity myAccountActivity = this.f6718do;
        if (myAccountActivity != null) {
            this.f6718do = null;
            myAccountActivity.mHeadView = null;
            myAccountActivity.mNickNameTView = null;
            myAccountActivity.mLoginNameTView = null;
            myAccountActivity.mCompleInfoTitleTxt = null;
            myAccountActivity.mPhoneTxt = null;
            myAccountActivity.mBandUserInfoTxt = null;
            myAccountActivity.mEmailTv = null;
            myAccountActivity.mUpdatePasswordTitleTv = null;
            myAccountActivity.mUpdatePasswordBtn = null;
            this.f6721if.setOnClickListener(null);
            this.f6721if = null;
            this.f6720for.setOnClickListener(null);
            this.f6720for = null;
            this.f6722new.setOnClickListener(null);
            this.f6722new = null;
            this.f6723try.setOnClickListener(null);
            this.f6723try = null;
            this.f6717case.setOnClickListener(null);
            this.f6717case = null;
            this.f6719else.setOnClickListener(null);
            this.f6719else = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
