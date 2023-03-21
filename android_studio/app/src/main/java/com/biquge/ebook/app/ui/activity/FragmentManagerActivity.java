package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import com.apk.f6;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.biquge.ebook.app.ui.fragment.BookListFragment;
import com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment;
import com.biquge.ebook.app.ui.fragment.BookStoreRankFragment;
import com.biquge.ebook.app.ui.fragment.LocalWebShareFragment;
import com.biquge.ebook.app.ui.fragment.NewShareDeviceFragment;
import com.biquge.ebook.app.ui.fragment.ShareLogFragment;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class FragmentManagerActivity extends f6 {
    public static void i(Context context, String str, String str2) {
        Intent intent = new Intent(context, FragmentManagerActivity.class);
        intent.putExtra("KEY_TITLE", str);
        intent.putExtra("KEY_TYPE", str2);
        intent.putExtra("KEY_RANKTYPENAME", (String) null);
        context.startActivity(intent);
    }

    public static void j(Context context, String str, String str2, String str3, boolean z) {
        Intent intent = new Intent(context, FragmentManagerActivity.class);
        intent.putExtra("KEY_TITLE", str);
        intent.putExtra("KEY_TYPE", str2);
        intent.putExtra("KEY_RANKTYPENAME", str3);
        intent.putExtra("KEY_SEX", z);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_fragment_layout;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return 10;
    }

    @Override // com.apk.f6
    public void initData() {
    }

    @Override // com.apk.f6
    public void initView() {
        String str;
        String str2;
        String str3;
        Intent intent = getIntent();
        boolean z = true;
        if (intent != null) {
            str2 = intent.getStringExtra("KEY_TITLE");
            str3 = intent.getStringExtra("KEY_TYPE");
            str = intent.getStringExtra("KEY_RANKTYPENAME");
            z = intent.getBooleanExtra("KEY_SEX", true);
        } else {
            str = null;
            str2 = "";
            str3 = "1";
        }
        initTopBarOnlyTitle(R.id.framelayout_toolbar, str2);
        if ("1".equals(str3)) {
            getSupportFragmentManager().beginTransaction().add(R.id.framelayout, new BookStoreCategoryFragment()).commit();
        } else if ("2".equals(str3)) {
            getSupportFragmentManager().beginTransaction().add(R.id.framelayout, BookStoreRankFragment.m3374synchronized(str, 0, z)).commit();
        } else if ("3".equals(str3)) {
            getSupportFragmentManager().beginTransaction().add(R.id.framelayout, new BookListFragment()).commit();
        } else if (RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE.equals(str3)) {
            getSupportFragmentManager().beginTransaction().add(R.id.framelayout, BookStoreRankFragment.m3374synchronized(str, 2, z)).commit();
        } else if ("9".equals(str3)) {
            getSupportFragmentManager().beginTransaction().add(R.id.framelayout, new LocalWebShareFragment()).commit();
        } else if ("10".equals(str3)) {
            getSupportFragmentManager().beginTransaction().add(R.id.framelayout, new NewShareDeviceFragment()).commit();
        } else if ("101".equals(str3)) {
            getSupportFragmentManager().beginTransaction().add(R.id.framelayout, new ShareLogFragment()).commit();
        }
    }
}
