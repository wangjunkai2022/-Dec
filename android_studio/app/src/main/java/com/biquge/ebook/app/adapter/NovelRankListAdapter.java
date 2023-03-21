package com.biquge.ebook.app.adapter;

import android.app.Activity;
import android.widget.ImageView;
import android.widget.TextView;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.bean.Book;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class NovelRankListAdapter extends BaseMultiItemQuickAdapter<Book, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final Activity f6369do;

    /* renamed from: for  reason: not valid java name */
    public AdViewBangDan f6370for;

    /* renamed from: if  reason: not valid java name */
    public final String f6371if;

    public NovelRankListAdapter(Activity activity, JSONObject jSONObject, String str, boolean z) {
        super(null);
        this.f6369do = activity;
        this.f6371if = str;
        addItemType(1, z ? R.layout.item_simple_book_list_layout : R.layout.item_list_match_layout_small);
        if (jSONObject != null) {
            AdViewBangDan adViewBangDan = new AdViewBangDan(activity, null);
            this.f6370for = adViewBangDan;
            adViewBangDan.setAutoRefresh(false);
            addItemType(2, this.f6370for);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        AdViewBangDan adViewBangDan;
        Book book = (Book) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType != 1) {
            if (itemViewType == 2 && (adViewBangDan = this.f6370for) != null) {
                if (!adViewBangDan.m3267for()) {
                    this.f6370for.m3268new(this.f6369do, this.f6371if);
                    return;
                } else {
                    this.f6370for.mo139do();
                    return;
                }
            }
            return;
        }
        try {
            u.m2653public(book.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            BaseViewHolder text = baseViewHolder.setText(R.id.item_simple_book_name_txt, book.getName());
            text.setText(R.id.item_simple_book_type_txt, book.getCName() + "  |  " + book.getAuthor()).setText(R.id.item_simple_book_info_txt, book.getDesc());
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_simple_book_score_txt);
            if (book.getScore() != 0.0f) {
                textView.setText(ze.r(R.string.xml_value_score_txt, Float.valueOf(book.getScore())));
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m3287do() {
        AdViewBangDan adViewBangDan = this.f6370for;
        if (adViewBangDan != null) {
            adViewBangDan.m3269try();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3288for() {
        AdViewBangDan adViewBangDan = this.f6370for;
        if (adViewBangDan != null) {
            adViewBangDan.f6294break = false;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m3289if() {
        AdViewBangDan adViewBangDan = this.f6370for;
        if (adViewBangDan != null) {
            adViewBangDan.f6294break = true;
        }
    }
}
