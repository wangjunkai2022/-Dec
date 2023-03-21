package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebView;
import butterknife.BindView;
import com.apk.f6;
import com.biquge.ebook.app.ui.fragment.WebViewFragment;
import com.biquge.ebook.app.widget.HeaderView;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebViewActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public WebViewFragment f6869do;

    /* renamed from: for  reason: not valid java name */
    public String f6870for;

    /* renamed from: if  reason: not valid java name */
    public String f6871if;
    @BindView(R.id.framelayout_toolbar)
    public HeaderView mHeaderView;

    /* renamed from: com.biquge.ebook.app.ui.activity.WebViewActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ProgressBarWebView.Cif {
        public Cdo() {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: for */
        public void mo1476for(WebView webView, String str, Bitmap bitmap) {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: goto */
        public void mo1477goto() {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: instanceof */
        public void mo1478instanceof(WebView webView, String str) {
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: interface */
        public void mo1479interface(String str) {
            HeaderView headerView;
            if (TextUtils.isEmpty(str) || !TextUtils.isEmpty(WebViewActivity.this.f6871if) || (headerView = WebViewActivity.this.mHeaderView) == null) {
                return;
            }
            headerView.setTitile(str);
        }

        @Override // com.biquge.ebook.app.widget.browse.ProgressBarWebView.Cif
        /* renamed from: static */
        public void mo1480static(WebView webView, String str) {
        }
    }

    public static void i(Context context, String str, String str2) {
        Intent intent = new Intent(context, WebViewActivity.class);
        intent.setFlags(268435456);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("WEBVIEW_TITLE_KEY", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("WEBVIEW_URL_KEY", str2);
        }
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_webview;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_public;
    }

    @Override // com.apk.f6
    public void initData() {
        String str = this.f6871if;
        String str2 = this.f6870for;
        if (str2 == null) {
            str2 = "";
        }
        WebViewFragment a2 = WebViewFragment.a(str, str2, false, false, false);
        this.f6869do = a2;
        a2.f7623try = new Cdo();
        getSupportFragmentManager().beginTransaction().add(R.id.framelayout, this.f6869do).commit();
    }

    @Override // com.apk.f6
    public void initView() {
        Intent intent = getIntent();
        this.f6871if = intent.getStringExtra("WEBVIEW_TITLE_KEY");
        this.f6870for = intent.getStringExtra("WEBVIEW_URL_KEY");
        HeaderView headerView = this.mHeaderView;
        String str = this.f6871if;
        if (str == null) {
            str = "";
        }
        initTopBarOnlyTitle(headerView, str);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // com.apk.f6, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            WebViewFragment webViewFragment = this.f6869do;
            if (webViewFragment != null) {
                ProgressBarWebView progressBarWebView = webViewFragment.mProgressBarWebView;
                if (progressBarWebView != null ? progressBarWebView.m3535if() : false) {
                    return true;
                }
                onBackPressed();
                return true;
            }
            return true;
        } else if (menuItem.getItemId() == R.id.book_detail_to_book_shelf) {
            onBackPressed();
            return true;
        } else {
            return true;
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.activity_public_toolbar_search).setVisible(false);
        MenuItem findItem = menu.findItem(R.id.book_detail_to_book_shelf);
        findItem.setIcon(R.drawable.white_close);
        findItem.setVisible(true);
        return super.onPrepareOptionsMenu(menu);
    }
}
