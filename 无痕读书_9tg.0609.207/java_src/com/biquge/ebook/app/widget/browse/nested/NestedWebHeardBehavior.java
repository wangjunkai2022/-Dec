package com.biquge.ebook.app.widget.browse.nested;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class NestedWebHeardBehavior extends AppBarLayout.Behavior {
    public NestedWebHeardBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        WebView webView = (WebView) coordinatorLayout.findViewById(R.id.activity_website_webview);
        webView.getScrollY();
        if (i4 >= 0 || webView.getScrollY() > 0) {
            return;
        }
        super.onNestedScroll(coordinatorLayout, appBarLayout, view2, i, i2, i3, i4, i5);
    }
}
