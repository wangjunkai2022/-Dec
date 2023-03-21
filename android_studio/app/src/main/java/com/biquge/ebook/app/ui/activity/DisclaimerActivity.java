package com.biquge.ebook.app.ui.activity;

import android.text.TextUtils;
import android.widget.TextView;
import butterknife.BindView;
import com.apk.f6;
import com.apk.g5;
import com.apk.m5;
import com.apk.p0;
import com.apk.x4;
import com.apk.x5;
import com.apk.xw;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class DisclaimerActivity extends f6 {
    @BindView(R.id.disclaimer_content_txt)
    public TextView mContentTxt;

    /* renamed from: com.biquge.ebook.app.ui.activity.DisclaimerActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {
        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: for */
        public void mo2981for(String str) {
            if (DisclaimerActivity.this.mContentTxt == null || TextUtils.isEmpty(str)) {
                return;
            }
            DisclaimerActivity.this.mContentTxt.setText(str);
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_disclaimer;
    }

    @Override // com.apk.f6
    public void initData() {
        g5 g5Var = new g5(this, new Cdo());
        x4.m2957import(p0.m1999class() + "/ver9/base/copyright.html", 604800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new m5(g5Var, "SP_HOST_SHUC_XS_KEY"));
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_disclaimer_actionbar, R.string.set_disclaimer_txt);
    }
}
