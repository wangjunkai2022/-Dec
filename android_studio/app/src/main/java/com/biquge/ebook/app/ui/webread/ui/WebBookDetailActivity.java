package com.biquge.ebook.app.ui.webread.ui;

import android.content.Context;
import android.content.Intent;
import butterknife.BindView;
import com.apk.f6;
import com.apk.jd;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.view.WebBookDetailView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebBookDetailActivity extends f6 implements jd {

    /* renamed from: do  reason: not valid java name */
    public WebBook f7817do;
    @BindView(R.id.web_book_detail_view)
    public WebBookDetailView mWebBookDetailView;

    public static void i(Context context, WebBook webBook) {
        Intent intent = new Intent(context, WebBookDetailActivity.class);
        intent.putExtra("EXTRA_WEB_BOOK_KEY", webBook);
        context.startActivity(intent);
    }

    @Override // com.apk.jd
    /* renamed from: continue */
    public void mo1188continue() {
        finish();
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_web_novel_detail_layout;
    }

    @Override // com.apk.f6
    public void initData() {
        super.initData();
        WebBook webBook = (WebBook) getIntent().getSerializableExtra("EXTRA_WEB_BOOK_KEY");
        this.f7817do = webBook;
        if (webBook == null) {
            return;
        }
        WebBookDetailView webBookDetailView = this.mWebBookDetailView;
        webBookDetailView.f7856do = this;
        webBookDetailView.f7858if = webBook;
        webBookDetailView.m3431new();
        this.mWebBookDetailView.setWebCodeCallback(this);
    }

    @Override // com.apk.f6
    public void initView() {
        super.initView();
    }

    @Override // com.apk.f6
    public boolean isDarkFont() {
        return true;
    }
}
