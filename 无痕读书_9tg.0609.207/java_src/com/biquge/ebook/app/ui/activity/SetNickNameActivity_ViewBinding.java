package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.Cgoto;
import com.apk.g5;
import com.apk.k5;
import com.apk.kg;
import com.apk.v0;
import com.apk.w;
import com.apk.x4;
import com.biquge.ebook.app.widget.ClearEditText;
import com.jni.crypt.project.CryptDesManager;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class SetNickNameActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public SetNickNameActivity f6818do;

    /* renamed from: if  reason: not valid java name */
    public View f6819if;

    /* renamed from: com.biquge.ebook.app.ui.activity.SetNickNameActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ SetNickNameActivity f6820do;

        public Cdo(SetNickNameActivity_ViewBinding setNickNameActivity_ViewBinding, SetNickNameActivity setNickNameActivity) {
            this.f6820do = setNickNameActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            SetNickNameActivity setNickNameActivity = this.f6820do;
            String m1022transient = Cgoto.m1022transient(setNickNameActivity.mNickNameET);
            g5 g5Var = setNickNameActivity.f6813do;
            if (g5Var != null) {
                HashMap m1007native = Cgoto.m1007native("action", "modifynickname");
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("userId", v0.m2736try().m2746goto());
                    jSONObject.put("nickname", m1022transient);
                    jSONObject.put("ts", kg.m1498if());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                m1007native.put("data", CryptDesManager.encodeContent(jSONObject.toString()));
                x4.m2951default(w.m2846final(), m1007native, new k5(g5Var, m1022transient));
            }
        }
    }

    @UiThread
    public SetNickNameActivity_ViewBinding(SetNickNameActivity setNickNameActivity, View view) {
        this.f6818do = setNickNameActivity;
        setNickNameActivity.mNickNameET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.set_nickname_et, "field 'mNickNameET'", ClearEditText.class);
        setNickNameActivity.mAuditNickNameTv = (TextView) Utils.findRequiredViewAsType(view, R.id.set_nickname_tv, "field 'mAuditNickNameTv'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.set_nickname_submit, "field 'mSubmitTView' and method 'menuClick'");
        setNickNameActivity.mSubmitTView = (TextView) Utils.castView(findRequiredView, R.id.set_nickname_submit, "field 'mSubmitTView'", TextView.class);
        this.f6819if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, setNickNameActivity));
        setNickNameActivity.mTipsTv = (TextView) Utils.findRequiredViewAsType(view, R.id.set_nickname_tips_tv, "field 'mTipsTv'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SetNickNameActivity setNickNameActivity = this.f6818do;
        if (setNickNameActivity != null) {
            this.f6818do = null;
            setNickNameActivity.mNickNameET = null;
            setNickNameActivity.mAuditNickNameTv = null;
            setNickNameActivity.mSubmitTView = null;
            setNickNameActivity.mTipsTv = null;
            this.f6819if.setOnClickListener(null);
            this.f6819if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
