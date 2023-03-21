package com.biquge.ebook.app.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.apk.Cgoto;
import com.apk.bg;
import com.apk.gg;
import com.apk.u;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.StoreBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.widget.StoreRankLayout;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class NewStoreAdapter extends BaseMultiItemQuickAdapter<Book, BaseViewHolder> {

    /* renamed from: case  reason: not valid java name */
    public boolean f6357case;

    /* renamed from: do  reason: not valid java name */
    public final Activity f6358do;

    /* renamed from: else  reason: not valid java name */
    public boolean f6359else;

    /* renamed from: for  reason: not valid java name */
    public boolean f6360for;

    /* renamed from: goto  reason: not valid java name */
    public List<StoreBean.TopTabsBean> f6361goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f6362if;

    /* renamed from: new  reason: not valid java name */
    public gg<String, AdViewRectangle> f6363new;

    /* renamed from: this  reason: not valid java name */
    public boolean f6364this;

    /* renamed from: try  reason: not valid java name */
    public final StoreRankLayout f6365try;

    /* renamed from: com.biquge.ebook.app.adapter.NewStoreAdapter$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Book f6366do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ int f6368if;

        public Cdo(Book book, int i) {
            this.f6366do = book;
            this.f6368if = i;
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (this.f6366do != null) {
                Context context = NewStoreAdapter.this.mContext;
                StringBuilder m1016super = Cgoto.m1016super("精选|");
                m1016super.append(this.f6368if + 1);
                BookDetailActivity.t(context, m1016super.toString(), this.f6366do);
            }
        }
    }

    public NewStoreAdapter(Activity activity, List<Book> list, int i) {
        super(list);
        this.f6364this = true;
        this.f6358do = activity;
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
        StoreRankLayout storeRankLayout = new StoreRankLayout(activity);
        this.f6365try = storeRankLayout;
        addItemType(12, storeRankLayout);
        addItemType(4, R.layout.include_new_store_item_gridview);
        if (i > 0) {
            if (this.f6363new == null) {
                this.f6363new = new gg<>();
            }
            for (int i2 = 0; i2 < i; i2++) {
                AdViewRectangle adViewRectangle = new AdViewRectangle(activity, null);
                int i3 = i2 + 100;
                addItemType(i3, adViewRectangle);
                gg<String, AdViewRectangle> ggVar = this.f6363new;
                ggVar.put(i3 + "", adViewRectangle);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x051a, code lost:
        if (r6 == false) goto L71;
     */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void convert(com.chad.library.adapter.base.BaseViewHolder r17, java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 1806
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.adapter.NewStoreAdapter.convert(com.chad.library.adapter.base.BaseViewHolder, java.lang.Object):void");
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3283do(Book book, ImageView imageView) {
        if (book.isNovel()) {
            u.m2653public(book.getImg(), imageView);
        } else {
            u.m2650import(book.getImg(), imageView);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3284for() {
        gg<String, AdViewRectangle> ggVar = this.f6363new;
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
    public void m3285if() {
        gg<String, AdViewRectangle> ggVar = this.f6363new;
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
    public final void m3286new(View view, Book book, int i) {
        view.setOnClickListener(new Cdo(book, i));
    }
}
