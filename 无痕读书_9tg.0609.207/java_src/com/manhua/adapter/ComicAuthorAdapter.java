package com.manhua.adapter;

import android.widget.ImageView;
import com.apk.u;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicAuthorAdapter extends BaseQuickAdapter<ComicBean.SameUserBooksNameBean, BaseViewHolder> {
    public ComicAuthorAdapter() {
        super((int) R.layout.item_grid_match_layout);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, ComicBean.SameUserBooksNameBean sameUserBooksNameBean) {
        ComicBean.SameUserBooksNameBean sameUserBooksNameBean2 = sameUserBooksNameBean;
        try {
            u.m2650import(sameUserBooksNameBean2.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            baseViewHolder.setText(R.id.item_simple_book_name_txt, sameUserBooksNameBean2.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
