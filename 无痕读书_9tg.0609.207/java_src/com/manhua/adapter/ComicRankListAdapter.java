package com.manhua.adapter;

import android.app.Activity;
import android.widget.ImageView;
import android.widget.TextView;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ComicRankListAdapter extends BaseMultiItemQuickAdapter<ComicBean, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public int f9628do;

    /* renamed from: for  reason: not valid java name */
    public final String f9629for;

    /* renamed from: if  reason: not valid java name */
    public final Activity f9630if;

    /* renamed from: new  reason: not valid java name */
    public final boolean f9631new;

    /* renamed from: try  reason: not valid java name */
    public AdViewBangDan f9632try;

    public ComicRankListAdapter(Activity activity, JSONObject jSONObject, String str, boolean z, boolean z2) {
        super(null);
        this.f9628do = -1;
        this.f9630if = activity;
        this.f9629for = str;
        this.f9631new = z;
        addItemType(1, z2 ? R.layout.comic_item_simple_book_list_layout : R.layout.comic_item_list_match_layout_small);
        if (jSONObject != null) {
            AdViewBangDan adViewBangDan = new AdViewBangDan(activity, null);
            this.f9632try = adViewBangDan;
            adViewBangDan.setAutoRefresh(false);
            addItemType(2, this.f9632try);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        AdViewBangDan adViewBangDan;
        ComicBean comicBean = (ComicBean) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType != 1) {
            if (itemViewType == 2 && (adViewBangDan = this.f9632try) != null) {
                if (!adViewBangDan.m3267for()) {
                    this.f9632try.m3268new(this.f9630if, this.f9629for);
                    return;
                } else {
                    this.f9632try.mo139do();
                    return;
                }
            }
            return;
        }
        try {
            u.m2650import(comicBean.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            baseViewHolder.setText(R.id.item_simple_book_name_txt, comicBean.getName()).setText(R.id.item_simple_book_type_txt, comicBean.getCName()).setText(R.id.item_comic_author_tv, comicBean.getAuthor()).setText(R.id.item_simple_book_info_txt, comicBean.getDesc());
            if (this.f9631new) {
                TextView textView = (TextView) baseViewHolder.getView(R.id.item_simple_book_score_txt);
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_simple_book_rank_iv);
                int layoutPosition = baseViewHolder.getLayoutPosition();
                if (this.f9628do == -1) {
                    this.f9628do = layoutPosition;
                }
                if (layoutPosition == this.f9628do) {
                    imageView.setImageResource(R.drawable.comic_rank_a);
                    if (imageView.getVisibility() != 0) {
                        imageView.setVisibility(0);
                    }
                    if (textView.getVisibility() != 8) {
                        textView.setVisibility(8);
                        return;
                    }
                    return;
                } else if (layoutPosition == this.f9628do + 1) {
                    imageView.setImageResource(R.drawable.comic_rank_b);
                    if (imageView.getVisibility() != 0) {
                        imageView.setVisibility(0);
                    }
                    if (textView.getVisibility() != 8) {
                        textView.setVisibility(8);
                        return;
                    }
                    return;
                } else if (layoutPosition == this.f9628do + 2) {
                    imageView.setImageResource(R.drawable.comic_rank_c);
                    if (imageView.getVisibility() != 0) {
                        imageView.setVisibility(0);
                    }
                    if (textView.getVisibility() != 8) {
                        textView.setVisibility(8);
                        return;
                    }
                    return;
                } else {
                    if (imageView.getVisibility() != 8) {
                        imageView.setVisibility(8);
                    }
                    if (comicBean.getScore() != 0.0f) {
                        textView.setText(ze.r(R.string.xml_value_score_txt, Float.valueOf(comicBean.getScore())));
                        textView.setVisibility(0);
                        return;
                    }
                    textView.setVisibility(8);
                    return;
                }
            }
            TextView textView2 = (TextView) baseViewHolder.getView(R.id.item_simple_book_score_txt);
            if (comicBean.getScore() != 0.0f) {
                textView2.setText(ze.r(R.string.xml_value_score_txt, Float.valueOf(comicBean.getScore())));
                textView2.setVisibility(0);
                return;
            }
            textView2.setVisibility(8);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m3616do() {
        AdViewBangDan adViewBangDan = this.f9632try;
        if (adViewBangDan != null) {
            adViewBangDan.m3269try();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3617for() {
        AdViewBangDan adViewBangDan = this.f9632try;
        if (adViewBangDan != null) {
            adViewBangDan.f6294break = false;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m3618if() {
        AdViewBangDan adViewBangDan = this.f9632try;
        if (adViewBangDan != null) {
            adViewBangDan.f6294break = true;
        }
    }
}
