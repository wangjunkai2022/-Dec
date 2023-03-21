package com.manhua.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.q0;
import com.apk.y30;
import com.apk.ze;
import com.manhua.data.bean.ComicCategory;
import com.manhua.ui.fragment.ComicCategoryFragment;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicListCategoryActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public ComicCategory f9729do;
    @BindView(R.id.activity_booklist_indicator)
    public b40 mIndicator;
    @BindView(R.id.activity_booklist_viewPager)
    public ViewPager mViewPager;

    public static void i(Context context, ComicCategory comicCategory) {
        Intent intent = new Intent(context, ComicListCategoryActivity.class);
        intent.putExtra("comicCategory", comicCategory);
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
        ComicCategory comicCategory = this.f9729do;
        String cId = comicCategory != null ? comicCategory.getCId() : "";
        ArrayList arrayList = new ArrayList();
        arrayList.add(ComicCategoryFragment.f(cId, "hot"));
        arrayList.add(ComicCategoryFragment.f(cId, "new"));
        arrayList.add(ComicCategoryFragment.f(cId, "vote"));
        arrayList.add(ComicCategoryFragment.f(cId, "over"));
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), q0.m2099for(), arrayList));
    }

    @Override // com.apk.f6
    public void initView() {
        ComicCategory comicCategory = (ComicCategory) getIntent().getSerializableExtra("comicCategory");
        this.f9729do = comicCategory;
        initTopBarOnlyTitle(R.id.activity_rank_list_toolbar, comicCategory != null ? comicCategory.getName() : "");
        ze.u(this, this.mIndicator, 45, 14);
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
    }
}
