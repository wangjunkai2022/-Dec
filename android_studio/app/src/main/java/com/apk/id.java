package com.apk;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.biquge.ebook.app.ui.view.WebReadMenuPopup;
import com.biquge.ebook.app.ui.webread.ui.WebHistoryActivity;
import com.biquge.ebook.app.ui.webread.view.WebContentView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import kimi.wuhends.ebooks.R;

/* compiled from: WebReadMenuPopup.java */
/* loaded from: classes8.dex */
public class id implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebReadMenuPopup f2073do;

    public id(WebReadMenuPopup webReadMenuPopup) {
        this.f2073do = webReadMenuPopup;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        String q;
        WebReadMenuPopup.Cfor cfor = this.f2073do.f7807new;
        if (cfor != null) {
            WebContentView.Cdo cdo = (WebContentView.Cdo) cfor;
            try {
                if (i == 0) {
                    try {
                        if (WebContentView.this.f7917if) {
                            q = ze.q(R.string.webview_forbid_js_txt);
                        } else {
                            q = ze.q(R.string.webview_open_js_txt);
                        }
                        eg.i(WebContentView.this.getContext(), q, new ne(cdo), null, false);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (i == 1) {
                    WebHistoryActivity.j(WebContentView.this.getContext());
                    if (WebContentView.this.f7916goto != null) {
                        WebContentView.this.f7916goto.dismiss();
                    }
                } else if (i == 2) {
                    ze.m3160class(WebContentView.this.getCurUrl());
                    Toast.makeText(AppContext.f6392case, "链接已复制到粘贴版!", 0).show();
                    if (WebContentView.this.f7916goto != null) {
                        WebContentView.this.f7916goto.dismiss();
                    }
                } else if (i != 3) {
                    if (i == 4) {
                        if (WebContentView.this.f7916goto != null) {
                            WebContentView.this.f7916goto.dismiss();
                        }
                        if (WebContentView.this.f7908case != null) {
                            WebContentView.this.f7908case.mo1188continue();
                        }
                    }
                } else if (WebContentView.this.mWebBookDetailView.getVisibility() == 0) {
                    TextView textView = WebContentView.this.mWebBookDetailView.mShelfBtn;
                    if (textView != null) {
                        textView.performClick();
                    }
                    if (WebContentView.this.f7916goto != null) {
                        WebContentView.this.f7916goto.dismiss();
                    }
                } else if (!n2.g(WebContentView.this.getCurUrl())) {
                    WebContentView.m3443new(WebContentView.this);
                } else {
                    Intent intent = new Intent(WebContentView.this.getContext(), MainActivity.class);
                    intent.putExtra("type", 1001);
                    intent.putExtra("source", hf.BOOK);
                    WebContentView.this.getContext().startActivity(intent);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
