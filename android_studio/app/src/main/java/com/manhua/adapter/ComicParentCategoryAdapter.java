package com.manhua.adapter;

import android.widget.ImageView;
import com.apk.u;
import com.apk.ze;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicCategory;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicParentCategoryAdapter extends BaseMultiItemQuickAdapter<ComicCategory, BaseViewHolder> {
    public ComicParentCategoryAdapter() {
        super(null);
        addItemType(1, R.layout.comic_item_parent_category_view);
        addItemType(2, R.layout.item_parent_category_title_view);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        ComicCategory comicCategory = (ComicCategory) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType != 1) {
            if (itemViewType != 2) {
                return;
            }
            ((ImageView) baseViewHolder.getView(R.id.item_title_iv)).setImageResource(comicCategory.isMan() ? R.drawable.cartoon_category_title_man : R.drawable.cartoon_category_title_lady);
            return;
        }
        try {
            u.m2651native(comicCategory.getImage(), (ImageView) baseViewHolder.getView(R.id.item_category_img), comicCategory.isMan() ? R.drawable.cartoon_category_item_man : R.drawable.cartoon_category_item_lady, false);
            baseViewHolder.setText(R.id.item_category_name_txt, comicCategory.getName()).setText(R.id.item_category_count_txt, ze.r(R.string.rank_category_count, Integer.valueOf(comicCategory.getCount())));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
