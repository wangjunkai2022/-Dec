package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import androidx.core.app.NotificationCompatJellybean;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.q0;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.ui.fragment.RankBookFragment;
import com.google.gson.internal.bind.TypeAdapters;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class RankListWeekActivity extends f6 {
    @BindView(R.id.activity_booklist_indicator)
    public b40 mIndicator;
    @BindView(R.id.activity_booklist_viewPager)
    public ViewPager mViewPager;

    public static void i(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, RankListWeekActivity.class);
        intent.putExtra(NotificationCompatJellybean.KEY_TITLE, str);
        intent.putExtra("category", str2);
        intent.putExtra("type", str3);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_ranking_list;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return 10;
    }

    @Override // com.apk.f6
    public void initData() {
        String stringExtra = getIntent().getStringExtra("category");
        String stringExtra2 = getIntent().getStringExtra("type");
        ArrayList arrayList = new ArrayList();
        arrayList.add(RankBookFragment.i(stringExtra, stringExtra2, "week"));
        arrayList.add(RankBookFragment.i(stringExtra, stringExtra2, TypeAdapters.AnonymousClass27.MONTH));
        arrayList.add(RankBookFragment.i(stringExtra, stringExtra2, "total"));
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), q0.m2102try(), arrayList));
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_rank_list_toolbar, getIntent().getStringExtra(NotificationCompatJellybean.KEY_TITLE));
        ze.u(this, this.mIndicator, 50, 14);
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
    }
}
