package com.biquge.ebook.app.adapter;

import android.widget.ImageView;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.NovelCategory;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookParentCategoryAdapter extends BaseMultiItemQuickAdapter<NovelCategory, BaseViewHolder> {
    public BookParentCategoryAdapter() {
        super(null);
        addItemType(1, R.layout.item_parent_category_view);
        addItemType(2, R.layout.item_parent_category_view);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        NovelCategory novelCategory = (NovelCategory) obj;
        if (baseViewHolder.getItemViewType() != 1) {
            return;
        }
        try {
            u.m2654return(novelCategory.getImage(), (ImageView) baseViewHolder.getView(R.id.item_category_img), R.drawable.book_category_xuanhuan, null, false);
            baseViewHolder.setText(R.id.item_category_name_txt, novelCategory.getName()).setText(R.id.item_category_count_txt, ze.r(R.string.rank_category_count, Integer.valueOf(novelCategory.getCount())));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
