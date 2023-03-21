package com.biquge.ebook.app.ui.activity;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.core.app.NotificationCompat;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.g5;
import com.apk.h5;
import com.apk.w;
import com.apk.x4;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CompleteInfoForeignActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public CompleteInfoForeignActivity f6586do;

    /* renamed from: if  reason: not valid java name */
    public View f6587if;

    /* renamed from: com.biquge.ebook.app.ui.activity.CompleteInfoForeignActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ CompleteInfoForeignActivity f6588do;

        public Cdo(CompleteInfoForeignActivity_ViewBinding completeInfoForeignActivity_ViewBinding, CompleteInfoForeignActivity completeInfoForeignActivity) {
            this.f6588do = completeInfoForeignActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            CompleteInfoForeignActivity completeInfoForeignActivity = this.f6588do;
            if (completeInfoForeignActivity != null) {
                if (view.getId() == R.id.comple_userinfo_bt) {
                    String m1006interface = Cgoto.m1006interface(completeInfoForeignActivity.mAccountET);
                    String m1006interface2 = Cgoto.m1006interface(completeInfoForeignActivity.mEmailET);
                    if (!TextUtils.isEmpty(m1006interface2) && eg.m608protected("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$", m1006interface2)) {
                        g5 g5Var = completeInfoForeignActivity.f6583do;
                        if (g5Var != null) {
                            x4.m2951default(w.m2846final(), Cgoto.m1012public("action", "bindrealemail", NotificationCompat.CATEGORY_EMAIL, m1006interface2), new h5(g5Var, m1006interface, m1006interface2));
                            return;
                        }
                        return;
                    }
                    ToastUtils.show((int) R.string.please_input_correct_email_number);
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @UiThread
    public CompleteInfoForeignActivity_ViewBinding(CompleteInfoForeignActivity completeInfoForeignActivity, View view) {
        this.f6586do = completeInfoForeignActivity;
        completeInfoForeignActivity.mAccountET = (EditText) Utils.findRequiredViewAsType(view, R.id.info_account_et, "field 'mAccountET'", EditText.class);
        completeInfoForeignActivity.mEmailET = (EditText) Utils.findRequiredViewAsType(view, R.id.info_email_et, "field 'mEmailET'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.comple_userinfo_bt, "method 'menuClick'");
        this.f6587if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, completeInfoForeignActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CompleteInfoForeignActivity completeInfoForeignActivity = this.f6586do;
        if (completeInfoForeignActivity != null) {
            this.f6586do = null;
            completeInfoForeignActivity.mAccountET = null;
            completeInfoForeignActivity.mEmailET = null;
            this.f6587if.setOnClickListener(null);
            this.f6587if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
