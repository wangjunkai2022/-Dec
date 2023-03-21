package com.expand.listen.adapter;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.apk.u;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.expand.listen.bean.ListenDetail;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ListenRankAdapter extends BaseQuickAdapter<ListenDetail, BaseViewHolder> {
    public ListenRankAdapter(Activity activity) {
        super(R.layout.item_simple_book_list_layout, null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, ListenDetail listenDetail) {
        ListenDetail listenDetail2 = listenDetail;
        try {
            u.m2646final(listenDetail2.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            BaseViewHolder text = baseViewHolder.setText(R.id.item_simple_book_name_txt, listenDetail2.getName());
            text.setText(R.id.item_simple_book_type_txt, listenDetail2.getCName() + "  |  " + listenDetail2.getAuthor()).setText(R.id.item_simple_book_simple_info_txt, listenDetail2.getDesc());
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_simple_book_score_txt);
            if (!TextUtils.isEmpty(listenDetail2.getScore())) {
                textView.setText(ze.r(R.string.xml_value_score_txt, listenDetail2.getScore()));
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
