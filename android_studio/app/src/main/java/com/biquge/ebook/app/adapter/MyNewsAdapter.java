package com.biquge.ebook.app.adapter;

import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.apk.u;
import com.biquge.ebook.app.bean.InitConfNews;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MyNewsAdapter extends BaseQuickAdapter<InitConfNews, BaseViewHolder> {
    public MyNewsAdapter() {
        super((int) R.layout.item_my_news_layout);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, InitConfNews initConfNews) {
        InitConfNews initConfNews2 = initConfNews;
        ((TextView) baseViewHolder.getView(R.id.item_my_news_title_txt)).setText(initConfNews2.getTitle());
        baseViewHolder.setVisible(R.id.item_my_news_new_tag_image, !initConfNews2.isRead());
        baseViewHolder.setText(R.id.item_my_news_time_txt, initConfNews2.getDate());
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_my_news_pic_iv);
        if (!TextUtils.isEmpty(initConfNews2.getPic())) {
            u.m2646final(initConfNews2.getPic(), imageView);
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        baseViewHolder.setText(R.id.item_my_news_describe_txt, initConfNews2.getDesc());
        baseViewHolder.setText(R.id.item_my_news_author_txt, initConfNews2.getEditor());
        baseViewHolder.addOnClickListener(R.id.item_my_news_layout);
        baseViewHolder.addOnClickListener(R.id.item_my_news_delete_view);
    }
}
