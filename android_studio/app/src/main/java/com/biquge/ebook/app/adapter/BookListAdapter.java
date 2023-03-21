package com.biquge.ebook.app.adapter;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.ImageView;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.bean.BookElement;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class BookListAdapter extends BaseMultiItemQuickAdapter<BookElement, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final Activity f6337do;

    /* renamed from: for  reason: not valid java name */
    public AdViewBangDan f6338for;

    /* renamed from: if  reason: not valid java name */
    public final String f6339if;

    public BookListAdapter(Activity activity, JSONObject jSONObject, String str) {
        super(null);
        this.f6337do = activity;
        this.f6339if = str;
        addItemType(1, R.layout.item_element_book_list_view);
        addItemType(2, R.layout.item_recomment_book_list_view);
        if (jSONObject != null) {
            AdViewBangDan adViewBangDan = new AdViewBangDan(activity, null);
            this.f6338for = adViewBangDan;
            adViewBangDan.setAutoRefresh(false);
            addItemType(3, this.f6338for);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        String q;
        AdViewBangDan adViewBangDan;
        BookElement bookElement = (BookElement) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType == 1) {
            try {
                u.m2653public(bookElement.getCover(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
                baseViewHolder.setText(R.id.item_simple_book_name_txt, !TextUtils.isEmpty(bookElement.getTitle()) ? bookElement.getTitle() : ze.q(R.string.element_create_element_defult_title_txt));
                baseViewHolder.setText(R.id.item_simple_book_simple_info_txt, bookElement.getDescription());
                baseViewHolder.setText(R.id.item_simple_book_type_txt, ze.r(R.string.element_book_count_txt, String.valueOf(bookElement.getBookCount())));
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (itemViewType != 2) {
            if (itemViewType == 3 && (adViewBangDan = this.f6338for) != null) {
                if (!adViewBangDan.m3267for()) {
                    this.f6338for.m3268new(this.f6337do, this.f6339if);
                } else {
                    this.f6338for.mo139do();
                }
            }
        } else {
            try {
                u.m2659throw(bookElement.getCommendImage(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image), false);
                if (!TextUtils.isEmpty(bookElement.getTitle())) {
                    q = bookElement.getTitle();
                } else {
                    q = ze.q(R.string.element_create_element_defult_title_txt);
                }
                baseViewHolder.setText(R.id.item_simple_book_name_txt, q);
                baseViewHolder.setText(R.id.item_simple_book_simple_info_txt, bookElement.getDescription());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
