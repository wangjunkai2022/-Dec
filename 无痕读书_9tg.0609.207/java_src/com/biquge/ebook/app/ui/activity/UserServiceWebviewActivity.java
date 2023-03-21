package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import butterknife.BindView;
import com.apk.b1;
import com.apk.f6;
import com.apk.q8;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class UserServiceWebviewActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public String f6852do;

    /* renamed from: if  reason: not valid java name */
    public int f6853if;
    @BindView(R.id.fragment_loadingview)
    public PublicLoadingView loadingView;

    /* renamed from: com.biquge.ebook.app.ui.activity.UserServiceWebviewActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PublicLoadingView.Cdo {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            UserServiceWebviewActivity.i(UserServiceWebviewActivity.this);
        }
    }

    public static void i(UserServiceWebviewActivity userServiceWebviewActivity) {
        if (userServiceWebviewActivity == null) {
            throw null;
        }
        new b1().m141do(new q8(userServiceWebviewActivity));
    }

    public static void j(Context context, String str, int i) {
        Intent intent = new Intent(context, UserServiceWebviewActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("WEBVIEW_TITLE_KEY", str);
        intent.putExtra("WEBVIEW_TYPE_KEY", i);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_userservice_webview;
    }

    @Override // com.apk.f6
    public void initData() {
        Intent intent = getIntent();
        if (intent != null) {
            this.f6852do = intent.getStringExtra("WEBVIEW_TITLE_KEY");
            this.f6853if = intent.getIntExtra("WEBVIEW_TYPE_KEY", 1);
        }
        initTopBarOnlyTitle(R.id.framelayout_toolbar, this.f6852do);
        new b1().m141do(new q8(this));
    }

    @Override // com.apk.f6
    public void initView() {
        this.loadingView.setReloadListener(new Cdo());
    }
}
