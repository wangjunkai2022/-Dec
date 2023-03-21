package com.manhua.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.apk.f6;
import com.apk.x10;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicRankActivity extends f6 {
    public static void i(Context context) {
        Intent intent = new Intent(context, ComicRankActivity.class);
        if (!TextUtils.isEmpty(null)) {
            intent.putExtra("rankTypeName", (String) null);
        }
        context.startActivity(intent);
    }

    public static void j(Context context, String str) {
        Intent intent = new Intent(context, ComicRankActivity.class);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("rankTypeName", str);
        }
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_rank_activity;
    }

    @Override // com.apk.f6
    public void initData() {
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.comic_rank_actionbar, R.string.rank_title_txt);
        Intent intent = getIntent();
        getSupportFragmentManager().beginTransaction().add(R.id.framelayout, x10.i(intent != null ? intent.getStringExtra("rankTypeName") : null)).commit();
    }
}
