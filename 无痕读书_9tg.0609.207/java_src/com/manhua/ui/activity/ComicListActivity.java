package com.manhua.ui.activity;

import com.apk.f6;
import com.manhua.ui.fragment.ComicListFragment;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicListActivity extends f6 {
    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_activity_list;
    }

    @Override // com.apk.f6
    public void initData() {
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.comic_list_actionbar, R.string.main_tab_book_city_element_txt);
        getSupportFragmentManager().beginTransaction().add(R.id.framelayout, new ComicListFragment()).commit();
    }
}
