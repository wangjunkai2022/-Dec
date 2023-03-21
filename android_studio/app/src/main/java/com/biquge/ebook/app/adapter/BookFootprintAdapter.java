package com.biquge.ebook.app.adapter;

import android.app.Activity;
import android.widget.ImageView;
import com.apk.u;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.bean.Footprint;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookFootprintAdapter extends BaseMultiItemQuickAdapter<Footprint, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final Activity f6328do;

    /* renamed from: for  reason: not valid java name */
    public AdViewBangDan f6329for;

    /* renamed from: if  reason: not valid java name */
    public final String f6330if;

    public BookFootprintAdapter(Activity activity, boolean z, String str) {
        super(null);
        this.f6328do = activity;
        this.f6330if = str;
        addItemType(1, R.layout.item_simple_book_list_layout);
        if (z) {
            AdViewBangDan adViewBangDan = new AdViewBangDan(activity, null);
            this.f6329for = adViewBangDan;
            addItemType(2, adViewBangDan);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        AdViewBangDan adViewBangDan;
        Footprint footprint = (Footprint) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType != 1) {
            if (itemViewType == 2 && (adViewBangDan = this.f6329for) != null) {
                if (!adViewBangDan.m3267for()) {
                    this.f6329for.m3268new(this.f6328do, this.f6330if);
                    return;
                } else {
                    this.f6329for.mo139do();
                    return;
                }
            }
            return;
        }
        try {
            u.m2653public(footprint.getIcon(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            BaseViewHolder text = baseViewHolder.setText(R.id.item_simple_book_name_txt, footprint.getName());
            text.setText(R.id.item_simple_book_type_txt, footprint.getCategory() + "  |  " + footprint.getAuthor()).setText(R.id.item_simple_book_info_txt, footprint.getContent());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
