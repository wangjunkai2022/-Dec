package com.biquge.ebook.app.ui.activity;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import com.apk.eg;
import com.apk.f6;
import com.apk.ft;
import com.apk.g5;
import com.apk.lq0;
import com.apk.mf;
import com.apk.tr0;
import com.apk.tt;
import com.apk.v0;
import com.apk.x5;
import com.apk.ze;
import com.biquge.ebook.app.widget.ClearEditText;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SetNickNameActivity extends f6 implements TextWatcher {

    /* renamed from: do  reason: not valid java name */
    public g5 f6813do;

    /* renamed from: if  reason: not valid java name */
    public final x5 f6814if = new Cnew();
    @BindView(R.id.set_nickname_tv)
    public TextView mAuditNickNameTv;
    @BindView(R.id.set_nickname_et)
    public ClearEditText mNickNameET;
    @BindView(R.id.set_nickname_submit)
    public TextView mSubmitTView;
    @BindView(R.id.set_nickname_tips_tv)
    public TextView mTipsTv;

    /* renamed from: com.biquge.ebook.app.ui.activity.SetNickNameActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements View.OnClickListener {
        public Cdo(SetNickNameActivity setNickNameActivity) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ToastUtils.show((int) R.string.set_nickname_at_check_txt);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.SetNickNameActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ze.L(SetNickNameActivity.this);
            SetNickNameActivity.this.mNickNameET.requestFocus();
            SetNickNameActivity.this.mNickNameET.setFocusable(true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.SetNickNameActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements View.OnClickListener {
        public Cif(SetNickNameActivity setNickNameActivity) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ToastUtils.show((int) R.string.set_nickname_at_check_txt);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.SetNickNameActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends x5 {

        /* renamed from: com.biquge.ebook.app.ui.activity.SetNickNameActivity$new$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements ft {
            public Cdo() {
            }

            @Override // com.apk.ft
            public void onClick() {
                SetNickNameActivity.this.finish();
            }
        }

        public Cnew() {
        }

        @Override // com.apk.x5
        /* renamed from: this */
        public void mo2985this(String str, String str2) {
            eg.j(SetNickNameActivity.this, str, new Cdo(), false, false);
            tt.f4763do.putString("SP_SUBMIT_USER_AUDIT_NICKNAME_KEY", str2);
            mf.m1712do("EVENT_COMPLE_USERINFO_KEY", null);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        try {
            if (editable.toString().trim().length() == 0) {
                this.mSubmitTView.setEnabled(false);
            } else {
                this.mSubmitTView.setEnabled(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_set_nickname;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6813do = new g5(this, this.f6814if);
        String nickName = v0.m2736try().m2743else().getNickName();
        if (!TextUtils.isEmpty(nickName) && nickName.length() > 0) {
            this.mNickNameET.setText(nickName);
            ClearEditText clearEditText = this.mNickNameET;
            clearEditText.setSelection(clearEditText.getText().toString().trim().length());
        }
        String m2620do = tt.m2620do("SP_SUBMIT_USER_AUDIT_NICKNAME_KEY", "");
        if (!TextUtils.isEmpty(m2620do)) {
            this.mAuditNickNameTv.setText(m2620do);
            this.mNickNameET.setVisibility(8);
            this.mAuditNickNameTv.setVisibility(0);
            this.mSubmitTView.setEnabled(true);
            this.mSubmitTView.setBackgroundResource(R.drawable.shape_gray_bg);
            this.mAuditNickNameTv.setOnClickListener(new Cdo(this));
            this.mSubmitTView.setOnClickListener(new Cif(this));
        } else {
            this.mNickNameET.addTextChangedListener(this);
            this.mNickNameET.postDelayed(new Cfor(), 200L);
        }
        try {
            String q = ze.q(R.string.set_nickname_tips);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(q);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(lq0.m1660do(this, tr0.m2617do(R.color.color_000000))), q.indexOf("只可"), q.indexOf("修改！") + 3, 34);
            this.mTipsTv.setText(spannableStringBuilder);
        } catch (Exception unused) {
        }
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.set_nickname_actionbar, R.string.info_set_nickname_txt);
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ClearEditText clearEditText = this.mNickNameET;
        if (clearEditText != null) {
            clearEditText.removeTextChangedListener(this);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
