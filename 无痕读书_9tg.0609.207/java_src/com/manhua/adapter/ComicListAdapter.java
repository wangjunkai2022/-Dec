package com.manhua.adapter;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.ImageView;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicElement;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ComicListAdapter extends BaseMultiItemQuickAdapter<ComicElement, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final Activity f9616do;

    /* renamed from: for  reason: not valid java name */
    public AdViewBangDan f9617for;

    /* renamed from: if  reason: not valid java name */
    public final String f9618if;

    public ComicListAdapter(Activity activity, JSONObject jSONObject, String str) {
        super(null);
        this.f9616do = activity;
        this.f9618if = str;
        addItemType(1, R.layout.comic_item_list_view);
        addItemType(2, R.layout.comic_item_recomment_list_view);
        if (jSONObject != null) {
            AdViewBangDan adViewBangDan = new AdViewBangDan(activity, null);
            this.f9617for = adViewBangDan;
            adViewBangDan.setAutoRefresh(false);
            addItemType(3, this.f9617for);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        String q;
        String q2;
        AdViewBangDan adViewBangDan;
        ComicElement comicElement = (ComicElement) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType == 1) {
            try {
                u.m2650import(comicElement.getCover(), (ImageView) baseViewHolder.getView(R.id.comic_item_list_image));
                if (!TextUtils.isEmpty(comicElement.getTitle())) {
                    q = comicElement.getTitle();
                } else {
                    q = ze.q(R.string.element_create_element_defult_title_txt);
                }
                baseViewHolder.setText(R.id.comic_item_list_name_tv, q);
                baseViewHolder.setText(R.id.comic_item_list_info_tv, comicElement.getDescription());
                baseViewHolder.setText(R.id.comic_item_update_tv, comicElement.getUpdateTime());
                baseViewHolder.setText(R.id.comic_item_count_txt, ze.r(R.string.element_book_count_txt, String.valueOf(comicElement.getBookCount())));
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (itemViewType != 2) {
            if (itemViewType == 3 && (adViewBangDan = this.f9617for) != null) {
                if (!adViewBangDan.m3267for()) {
                    this.f9617for.m3268new(this.f9616do, this.f9618if);
                } else {
                    this.f9617for.mo139do();
                }
            }
        } else {
            try {
                u.m2651native(comicElement.getCommendImage(), (ImageView) baseViewHolder.getView(R.id.comic_item_list_image), R.drawable.shape_default_head_bg, false);
                if (!TextUtils.isEmpty(comicElement.getTitle())) {
                    q2 = comicElement.getTitle();
                } else {
                    q2 = ze.q(R.string.element_create_element_defult_title_txt);
                }
                baseViewHolder.setText(R.id.comic_item_list_name_tv, q2);
                baseViewHolder.setText(R.id.comic_item_list_info_tv, comicElement.getDescription());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
