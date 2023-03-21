package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.CheckBox;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.ClearEditText;
import com.biquge.ebook.app.widget.MessageTimerView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MessageCodeLoginActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MessageCodeLoginActivity f6706do;

    /* renamed from: for  reason: not valid java name */
    public View f6707for;

    /* renamed from: if  reason: not valid java name */
    public View f6708if;

    /* renamed from: new  reason: not valid java name */
    public View f6709new;

    /* renamed from: com.biquge.ebook.app.ui.activity.MessageCodeLoginActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MessageCodeLoginActivity f6710do;

        public Cdo(MessageCodeLoginActivity_ViewBinding messageCodeLoginActivity_ViewBinding, MessageCodeLoginActivity messageCodeLoginActivity) {
            this.f6710do = messageCodeLoginActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6710do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MessageCodeLoginActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MessageCodeLoginActivity f6711do;

        public Cfor(MessageCodeLoginActivity_ViewBinding messageCodeLoginActivity_ViewBinding, MessageCodeLoginActivity messageCodeLoginActivity) {
            this.f6711do = messageCodeLoginActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6711do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.MessageCodeLoginActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MessageCodeLoginActivity f6712do;

        public Cif(MessageCodeLoginActivity_ViewBinding messageCodeLoginActivity_ViewBinding, MessageCodeLoginActivity messageCodeLoginActivity) {
            this.f6712do = messageCodeLoginActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6712do.menuClick(view);
        }
    }

    @UiThread
    public MessageCodeLoginActivity_ViewBinding(MessageCodeLoginActivity messageCodeLoginActivity, View view) {
        this.f6706do = messageCodeLoginActivity;
        messageCodeLoginActivity.mAccountET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.register_account_et, "field 'mAccountET'", ClearEditText.class);
        messageCodeLoginActivity.mVCodeET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.register_vcode_et, "field 'mVCodeET'", ClearEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_messageTimerTv, "field 'mMessageTimerView' and method 'menuClick'");
        messageCodeLoginActivity.mMessageTimerView = (MessageTimerView) Utils.castView(findRequiredView, R.id.view_messageTimerTv, "field 'mMessageTimerView'", MessageTimerView.class);
        this.f6708if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, messageCodeLoginActivity));
        messageCodeLoginActivity.mServiceCheckBox = (CheckBox) Utils.findRequiredViewAsType(view, R.id.privacy_agreement_cb, "field 'mServiceCheckBox'", CheckBox.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.register_register_bt, "method 'menuClick'");
        this.f6707for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, messageCodeLoginActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.login_countriescode_tv, "method 'menuClick'");
        this.f6709new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, messageCodeLoginActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MessageCodeLoginActivity messageCodeLoginActivity = this.f6706do;
        if (messageCodeLoginActivity != null) {
            this.f6706do = null;
            messageCodeLoginActivity.mAccountET = null;
            messageCodeLoginActivity.mVCodeET = null;
            messageCodeLoginActivity.mMessageTimerView = null;
            messageCodeLoginActivity.mServiceCheckBox = null;
            this.f6708if.setOnClickListener(null);
            this.f6708if = null;
            this.f6707for.setOnClickListener(null);
            this.f6707for = null;
            this.f6709new.setOnClickListener(null);
            this.f6709new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
