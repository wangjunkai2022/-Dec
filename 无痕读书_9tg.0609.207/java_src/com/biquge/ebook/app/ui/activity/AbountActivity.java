package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.TextView;
import com.apk.f6;
import com.apk.w;
import com.apk.ze;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class AbountActivity extends f6 implements View.OnClickListener {
    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_abount;
    }

    @Override // com.apk.f6
    public void initData() {
        ((TextView) findViewById(R.id.activity_draw_abount_version_txt)).setText(ze.m());
        ((TextView) findViewById(R.id.activity_draw_abount_email_txt)).setText("xiangwangxing888@gmail.com");
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_disclaimer_actionbar, "关于");
        findViewById(R.id.privacy_agreement_txt).setOnClickListener(this);
        findViewById(R.id.privacy_user_service_txt).setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String q;
        String m2862throws;
        if (view.getId() == R.id.privacy_agreement_txt) {
            q = ze.q(R.string.privacy_agreement_title);
            m2862throws = w.m2851import();
        } else {
            q = ze.q(R.string.privacy_user_service_title);
            m2862throws = w.m2862throws();
        }
        WebViewActivity.i(this, q, m2862throws);
    }
}
