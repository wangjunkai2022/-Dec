package com.manhua.adapter;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import com.apk.gg;
import com.apk.gz;
import com.apk.u;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.bean.ComicStoreBean;
import com.biquge.ebook.app.widget.ComicStoreRankLayout;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicNewStoreAdapter extends BaseMultiItemQuickAdapter<ComicBean, BaseViewHolder> {

    /* renamed from: case  reason: not valid java name */
    public boolean f9619case;

    /* renamed from: do  reason: not valid java name */
    public final Activity f9620do;

    /* renamed from: else  reason: not valid java name */
    public boolean f9621else;

    /* renamed from: for  reason: not valid java name */
    public boolean f9622for;

    /* renamed from: goto  reason: not valid java name */
    public List<ComicStoreBean.TopTabsBean> f9623goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f9624if;

    /* renamed from: new  reason: not valid java name */
    public gg<String, AdViewRectangle> f9625new;

    /* renamed from: this  reason: not valid java name */
    public boolean f9626this;

    /* renamed from: try  reason: not valid java name */
    public final ComicStoreRankLayout f9627try;

    public ComicNewStoreAdapter(Activity activity, List<ComicBean> list, int i) {
        super(list);
        this.f9626this = true;
        this.f9620do = activity;
        addItemType(1, R.layout.item_new_store_title_layout);
        addItemType(2, R.layout.item_new_store_list_score_layout);
        addItemType(21, R.layout.item_new_store_list_hot_layout);
        addItemType(3, R.layout.item_new_store_grid_hot_view);
        addItemType(20, R.layout.item_new_store_grid_author_view);
        addItemType(5, R.layout.item_new_store_grid_only_name_view);
        addItemType(6, R.layout.item_new_store_grid_rcc_view);
        addItemType(7, R.layout.item_new_store_otto);
        addItemType(8, R.layout.item_new_store_grid_two_hot_view);
        addItemType(9, R.layout.item_new_store_list_r_layout);
        addItemType(10, R.layout.item_new_store_grid_two_hot_score_view);
        addItemType(11, R.layout.item_new_store_grid_card_tag_view);
        addItemType(15, R.layout.item_new_store_bottom_layout);
        addItemType(16, R.layout.item_new_store_item_grid_score_view);
        addItemType(17, R.layout.item_new_store_grid_score_tag_view);
        addItemType(18, R.layout.item_new_store_list_score_tag_layout);
        addItemType(19, R.layout.item_new_store_grid_four_ccc_view);
        addItemType(22, R.layout.item_new_store_grid_four_hot_view);
        addItemType(24, R.layout.item_new_store_grid_four_score_view);
        addItemType(25, R.layout.item_new_store_grid_two_score_view);
        ComicStoreRankLayout comicStoreRankLayout = new ComicStoreRankLayout(this.f9620do);
        this.f9627try = comicStoreRankLayout;
        addItemType(12, comicStoreRankLayout);
        addItemType(4, R.layout.comic_include_store_item_gridview);
        if (i > 0) {
            if (this.f9625new == null) {
                this.f9625new = new gg<>();
            }
            for (int i2 = 0; i2 < i; i2++) {
                AdViewRectangle adViewRectangle = new AdViewRectangle(activity, null);
                adViewRectangle.m3274for(activity, null, "rectbsy1");
                int i3 = i2 + 100;
                addItemType(i3, adViewRectangle);
                gg<String, AdViewRectangle> ggVar = this.f9625new;
                ggVar.put(i3 + "", adViewRectangle);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x04fd, code lost:
        if (r8 == false) goto L67;
     */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void convert(com.chad.library.adapter.base.BaseViewHolder r17, java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 1694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.manhua.adapter.ComicNewStoreAdapter.convert(com.chad.library.adapter.base.BaseViewHolder, java.lang.Object):void");
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3612do(ComicBean comicBean, ImageView imageView) {
        if (comicBean.isCartton()) {
            u.m2650import(comicBean.getImg(), imageView);
        } else {
            u.m2653public(comicBean.getImg(), imageView);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3613for() {
        gg<String, AdViewRectangle> ggVar = this.f9625new;
        if (ggVar != null) {
            Iterator it = ((HashSet) ggVar.entrySet()).iterator();
            while (it.hasNext()) {
                AdViewRectangle adViewRectangle = (AdViewRectangle) ((Map.Entry) it.next()).getValue();
                if (adViewRectangle != null) {
                    adViewRectangle.f6316break = false;
                }
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m3614if() {
        gg<String, AdViewRectangle> ggVar = this.f9625new;
        if (ggVar != null) {
            Iterator it = ((HashSet) ggVar.entrySet()).iterator();
            while (it.hasNext()) {
                AdViewRectangle adViewRectangle = (AdViewRectangle) ((Map.Entry) it.next()).getValue();
                if (adViewRectangle != null) {
                    adViewRectangle.f6316break = true;
                }
            }
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3615new(View view, ComicBean comicBean) {
        view.setOnClickListener(new gz(this, comicBean));
    }
}
