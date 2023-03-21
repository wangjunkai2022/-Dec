package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.MessageTimerView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ChangePhoneActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ChangePhoneActivity f6540do;

    /* renamed from: for  reason: not valid java name */
    public View f6541for;

    /* renamed from: if  reason: not valid java name */
    public View f6542if;

    /* renamed from: new  reason: not valid java name */
    public View f6543new;

    /* renamed from: com.biquge.ebook.app.ui.activity.ChangePhoneActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ChangePhoneActivity f6544do;

        public Cdo(ChangePhoneActivity_ViewBinding changePhoneActivity_ViewBinding, ChangePhoneActivity changePhoneActivity) {
            this.f6544do = changePhoneActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6544do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.ChangePhoneActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ChangePhoneActivity f6545do;

        public Cfor(ChangePhoneActivity_ViewBinding changePhoneActivity_ViewBinding, ChangePhoneActivity changePhoneActivity) {
            this.f6545do = changePhoneActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6545do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.ChangePhoneActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ChangePhoneActivity f6546do;

        public Cif(ChangePhoneActivity_ViewBinding changePhoneActivity_ViewBinding, ChangePhoneActivity changePhoneActivity) {
            this.f6546do = changePhoneActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6546do.menuClick(view);
        }
    }

    @UiThread
    public ChangePhoneActivity_ViewBinding(ChangePhoneActivity changePhoneActivity, View view) {
        this.f6540do = changePhoneActivity;
        changePhoneActivity.mAccountTv = (TextView) Utils.findRequiredViewAsType(view, R.id.user_account_tv, "field 'mAccountTv'", TextView.class);
        changePhoneActivity.mOldPhoneET = (EditText) Utils.findRequiredViewAsType(view, R.id.user_old_phone_et, "field 'mOldPhoneET'", EditText.class);
        changePhoneActivity.mNewPhoneET = (EditText) Utils.findRequiredViewAsType(view, R.id.user_new_phone_et, "field 'mNewPhoneET'", EditText.class);
        LinearLayout linearLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.message_code_layout, "field 'mMsgCodeLayout'", LinearLayout.class);
        changePhoneActivity.mMsgCodeET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.info_msgcode_et, "field 'mMsgCodeET'", ClearEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_messageTimerTv, "field 'mMessageTimerView' and method 'menuClick'");
        changePhoneActivity.mMessageTimerView = (MessageTimerView) Utils.castView(findRequiredView, R.id.view_messageTimerTv, "field 'mMessageTimerView'", MessageTimerView.class);
        this.f6542if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, changePhoneActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.comple_userinfo_bt, "field 'mSubmitBt' and method 'menuClick'");
        TextView textView = (TextView) Utils.castView(findRequiredView2, R.id.comple_userinfo_bt, "field 'mSubmitBt'", TextView.class);
        this.f6541for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, changePhoneActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.login_countriescode_tv, "method 'menuClick'");
        this.f6543new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, changePhoneActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChangePhoneActivity changePhoneActivity = this.f6540do;
        if (changePhoneActivity != null) {
            this.f6540do = null;
            changePhoneActivity.mAccountTv = null;
            changePhoneActivity.mOldPhoneET = null;
            changePhoneActivity.mNewPhoneET = null;
            changePhoneActivity.mMsgCodeET = null;
            changePhoneActivity.mMessageTimerView = null;
            this.f6542if.setOnClickListener(null);
            this.f6542if = null;
            this.f6541for.setOnClickListener(null);
            this.f6541for = null;
            this.f6543new.setOnClickListener(null);
            this.f6543new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
