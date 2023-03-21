package com.manhua.adapter;

import android.widget.ImageView;
import com.apk.u;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicRecommendAdapter extends BaseQuickAdapter<ComicBean.SameCategoryBooksNameBean, BaseViewHolder> {
    public ComicRecommendAdapter() {
        super((int) R.layout.item_grid_match_layout);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, ComicBean.SameCategoryBooksNameBean sameCategoryBooksNameBean) {
        ComicBean.SameCategoryBooksNameBean sameCategoryBooksNameBean2 = sameCategoryBooksNameBean;
        try {
            u.m2650import(sameCategoryBooksNameBean2.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            baseViewHolder.setText(R.id.item_simple_book_name_txt, sameCategoryBooksNameBean2.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
