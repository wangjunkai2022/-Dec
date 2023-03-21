package com.biquge.ebook.app.adapter;

import android.text.Html;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.biquge.ebook.app.bean.FastSearchWord;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class SearchFastResultAdapter extends BaseQuickAdapter<FastSearchWord, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public String f6372do;

    public SearchFastResultAdapter() {
        super((int) R.layout.item_search_fast_layout);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NonNull BaseViewHolder baseViewHolder, FastSearchWord fastSearchWord) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.item_search_fast_result_name_tv);
        String word = fastSearchWord.getWord();
        String str = this.f6372do;
        try {
            if (!TextUtils.isEmpty(str) && word.contains(str)) {
                String[] split = word.split(str);
                StringBuilder sb = new StringBuilder();
                sb.append(split.length > 0 ? split[0] : "");
                sb.append("<font color = \"#D81E06\">");
                sb.append(str);
                sb.append("</font>");
                sb.append(split.length > 1 ? split[1] : "");
                word = sb.toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        textView.setText(Html.fromHtml(word));
    }
}
