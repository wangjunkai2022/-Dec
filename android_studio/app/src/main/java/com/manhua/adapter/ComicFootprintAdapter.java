package com.manhua.adapter;

import android.app.Activity;
import android.widget.ImageView;
import com.apk.u;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicFootprint;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicFootprintAdapter extends BaseMultiItemQuickAdapter<ComicFootprint, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final Activity f9607do;

    /* renamed from: for  reason: not valid java name */
    public AdViewBangDan f9608for;

    /* renamed from: if  reason: not valid java name */
    public final String f9609if;

    public ComicFootprintAdapter(Activity activity, boolean z, String str) {
        super(null);
        this.f9607do = activity;
        this.f9609if = str;
        addItemType(1, R.layout.comic_item_simple_book_list_layout);
        if (z) {
            AdViewBangDan adViewBangDan = new AdViewBangDan(activity, null);
            this.f9608for = adViewBangDan;
            addItemType(2, adViewBangDan);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        AdViewBangDan adViewBangDan;
        ComicFootprint comicFootprint = (ComicFootprint) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType == 1) {
            u.m2650import(comicFootprint.getIcon(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            baseViewHolder.setText(R.id.item_simple_book_name_txt, comicFootprint.getName()).setText(R.id.item_simple_book_type_txt, comicFootprint.getCategory()).setText(R.id.item_comic_author_tv, comicFootprint.getAuthor()).setText(R.id.item_simple_book_info_txt, comicFootprint.getContent());
        } else if (itemViewType == 2 && (adViewBangDan = this.f9608for) != null) {
            if (!adViewBangDan.m3267for()) {
                this.f9608for.m3268new(this.f9607do, this.f9609if);
            } else {
                this.f9608for.mo139do();
            }
        }
    }
}
