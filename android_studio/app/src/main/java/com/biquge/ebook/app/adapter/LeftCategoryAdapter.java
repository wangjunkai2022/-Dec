package com.biquge.ebook.app.adapter;

import android.widget.TextView;
import com.biquge.ebook.app.bean.RankListBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class LeftCategoryAdapter extends BaseQuickAdapter<RankListBean, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public int f6356do;

    public LeftCategoryAdapter(List<RankListBean> list) {
        super(R.layout.item_book_city_rank_view, list);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, RankListBean rankListBean) {
        RankListBean rankListBean2 = rankListBean;
        try {
            boolean z = true;
            baseViewHolder.setVisible(R.id.item_book_rank_index_view, this.f6356do == baseViewHolder.getLayoutPosition());
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_book_rank_category_title);
            textView.setText(rankListBean2.getTitle());
            if (this.f6356do != baseViewHolder.getLayoutPosition()) {
                z = false;
            }
            textView.setSelected(z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
