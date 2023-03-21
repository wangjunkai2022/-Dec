package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.b40;
import com.apk.e40;
import com.apk.f6;
import com.apk.q0;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.bean.NovelCategory;
import com.biquge.ebook.app.ui.fragment.BookCategoryRankFragment;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookListCategoryActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public NovelCategory f6484do;
    @BindView(R.id.activity_booklist_indicator)
    public b40 mIndicator;
    @BindView(R.id.activity_booklist_viewPager)
    public ViewPager mViewPager;

    public static void i(Context context, NovelCategory novelCategory) {
        Intent intent = new Intent(context, BookListCategoryActivity.class);
        intent.putExtra("classify", novelCategory);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_ranking_list;
    }

    @Override // com.apk.f6
    public void initData() {
        NovelCategory novelCategory = this.f6484do;
        String cId = novelCategory != null ? novelCategory.getCId() : "";
        ArrayList arrayList = new ArrayList();
        arrayList.add(BookCategoryRankFragment.h(cId, "hot"));
        arrayList.add(BookCategoryRankFragment.h(cId, "new"));
        arrayList.add(BookCategoryRankFragment.h(cId, "vote"));
        arrayList.add(BookCategoryRankFragment.h(cId, "over"));
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getSupportFragmentManager(), q0.m2099for(), arrayList));
    }

    @Override // com.apk.f6
    public void initView() {
        NovelCategory novelCategory = (NovelCategory) getIntent().getSerializableExtra("classify");
        this.f6484do = novelCategory;
        initTopBarOnlyTitle(R.id.activity_rank_list_toolbar, novelCategory != null ? novelCategory.getName() : "");
        ze.u(this, this.mIndicator, 30, 14);
    }
}
