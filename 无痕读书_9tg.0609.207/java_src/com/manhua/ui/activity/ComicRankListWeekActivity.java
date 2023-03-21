package com.manhua.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import androidx.core.app.NotificationCompatJellybean;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.y30;
import com.apk.ze;
import com.google.gson.internal.bind.TypeAdapters;
import com.manhua.ui.fragment.ComicRankBookFragment;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicRankListWeekActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public static final String[] f9775do = {ze.q(R.string.rank_week_txt), ze.q(R.string.rank_month_txt), ze.q(R.string.rank_all_txt)};
    @BindView(R.id.activity_booklist_indicator)
    public b40 mIndicator;
    @BindView(R.id.activity_booklist_viewPager)
    public ViewPager mViewPager;

    public static void i(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, ComicRankListWeekActivity.class);
        intent.putExtra(NotificationCompatJellybean.KEY_TITLE, str);
        intent.putExtra("sex", str2);
        intent.putExtra("category", str3);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_activity_week_ranking;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return 10;
    }

    @Override // com.apk.f6
    public void initData() {
        String stringExtra = getIntent().getStringExtra("sex");
        String stringExtra2 = getIntent().getStringExtra("category");
        ArrayList arrayList = new ArrayList();
        arrayList.add(ComicRankBookFragment.i(stringExtra, stringExtra2, "week"));
        arrayList.add(ComicRankBookFragment.i(stringExtra, stringExtra2, TypeAdapters.AnonymousClass27.MONTH));
        arrayList.add(ComicRankBookFragment.i(stringExtra, stringExtra2, "total"));
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), f9775do, arrayList));
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_rank_list_toolbar, getIntent().getStringExtra(NotificationCompatJellybean.KEY_TITLE));
        ze.u(this, this.mIndicator, 45, 14);
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
    }
}
