package com.biquge.ebook.app.adapter;

import android.widget.TextView;
import com.apk.ze;
import com.biquge.ebook.app.bean.SearchTop;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class HotSearchAdapter extends BaseQuickAdapter<SearchTop, BaseViewHolder> {
    public HotSearchAdapter() {
        super((int) R.layout.item_simple_textview_layout);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, SearchTop searchTop) {
        SearchTop searchTop2 = searchTop;
        TextView textView = (TextView) baseViewHolder.getView(R.id.item_simple_index_txt);
        textView.setText(String.valueOf(baseViewHolder.getLayoutPosition() + 1));
        if (baseViewHolder.getLayoutPosition() < 3) {
            textView.setTextColor(ze.p(R.color.color_F7B11B));
        } else {
            textView.setTextColor(ze.p(R.color.color_666666));
        }
        baseViewHolder.setText(R.id.item_simple_txt, searchTop2.getName());
    }
}
