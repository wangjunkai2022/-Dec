package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import com.apk.f6;
import com.biquge.ebook.app.ui.fragment.ExternalSearchFragment;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ExternalSearchActivity extends f6 {
    public static void i(Context context) {
        context.startActivity(new Intent(context, ExternalSearchActivity.class));
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_external_search_layout;
    }

    @Override // com.apk.f6
    public void initData() {
    }

    @Override // com.apk.f6
    public void initView() {
        getSupportFragmentManager().beginTransaction().add(R.id.framelayout, new ExternalSearchFragment()).commit();
    }
}
