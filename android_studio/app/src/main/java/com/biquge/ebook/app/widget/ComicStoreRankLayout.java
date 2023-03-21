package com.biquge.ebook.app.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.apk.b40;
import com.apk.bg;
import com.apk.bh;
import com.apk.eg;
import com.apk.nz;
import com.apk.pg;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.ComicStoreBean;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicStoreRankLayout extends FrameLayout {

    /* renamed from: case  reason: not valid java name */
    public String[] f8022case;

    /* renamed from: do  reason: not valid java name */
    public TextView f8023do;

    /* renamed from: else  reason: not valid java name */
    public String f8024else;

    /* renamed from: for  reason: not valid java name */
    public TextView f8025for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f8026goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f8027if;
    @BindView(R.id.store_list_layout)
    @SuppressLint({"NonConstantResourceId"})
    public LinearLayout listLayout;

    /* renamed from: new  reason: not valid java name */
    public Cif f8028new;
    @BindView(R.id.store_top_indicator)
    @SuppressLint({"NonConstantResourceId"})
    public ScrollIndicatorView topIndicatorView;
    @BindView(R.id.store_top_rank_layout)
    @SuppressLint({"NonConstantResourceId"})
    public LinearLayout topRankLayout;
    @BindView(R.id.store_top_rv)
    @SuppressLint({"NonConstantResourceId"})
    public RecyclerView topRecyclerView;

    /* renamed from: try  reason: not valid java name */
    public Map<String, List<ComicBean>> f8029try;

    /* renamed from: com.biquge.ebook.app.widget.ComicStoreRankLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements b40.Cnew {
        public Cdo() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            try {
                if (ComicStoreRankLayout.this.f8028new != null) {
                    ComicStoreRankLayout.this.f8024else = ComicStoreRankLayout.this.f8022case[i];
                    ComicStoreRankLayout.this.f8028new.setNewData(ComicStoreRankLayout.this.f8029try.get(ComicStoreRankLayout.this.f8024else));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ComicStoreRankLayout$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends bg {

        /* renamed from: do  reason: not valid java name */
        public final int f8031do;

        public Cfor(int i, pg pgVar) {
            this.f8031do = i;
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            try {
                if (ComicStoreRankLayout.this.f8028new != null && ComicStoreRankLayout.this.f8022case != null && ComicStoreRankLayout.this.f8022case.length > this.f8031do) {
                    ComicStoreRankLayout.this.f8024else = ComicStoreRankLayout.this.f8022case[this.f8031do];
                    ComicStoreRankLayout.this.f8028new.setNewData(ComicStoreRankLayout.this.f8029try.get(ComicStoreRankLayout.this.f8024else));
                }
            } catch (Exception unused) {
            }
            ComicStoreRankLayout.this.m3473if(this.f8031do);
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ComicStoreRankLayout$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends BaseMultiItemQuickAdapter<ComicBean, BaseViewHolder> {
        public Cif() {
            super(null);
            addItemType(13, R.layout.item_store_top_rankn_list);
            addItemType(14, R.layout.item_store_top_ran_grid);
            addItemType(10, R.layout.item_store_top_rank_grid_two);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, Object obj) {
            ComicBean comicBean = (ComicBean) obj;
            int itemViewType = baseViewHolder.getItemViewType();
            if (itemViewType == 10) {
                m3474do(comicBean, (ImageView) baseViewHolder.getView(R.id.item_rank_img));
                baseViewHolder.setText(R.id.item_rank_index_tv, (baseViewHolder.getLayoutPosition() + 1) + "");
                baseViewHolder.setText(R.id.item_rank_book_name_tv, comicBean.getName());
                baseViewHolder.setText(R.id.item_rank_book_hot_tv, comicBean.getHot());
            } else if (itemViewType != 13) {
                if (itemViewType != 14) {
                    return;
                }
                m3474do(comicBean, (ImageView) baseViewHolder.getView(R.id.item_rank_img));
                baseViewHolder.setText(R.id.item_rank_book_name_tv, comicBean.getName());
            } else {
                baseViewHolder.setText(R.id.item_rank_index_tv, (baseViewHolder.getLayoutPosition() + 1) + ".");
                baseViewHolder.setText(R.id.item_rank_book_name_tv, comicBean.getName());
                u.m2654return(comicBean.getImg(), (ImageView) baseViewHolder.getView(R.id.item_rank_type_iv), 0, null, false);
            }
        }

        /* renamed from: do  reason: not valid java name */
        public final void m3474do(ComicBean comicBean, ImageView imageView) {
            if (comicBean.isCartton()) {
                u.m2650import(comicBean.getImg(), imageView);
            } else {
                u.m2653public(comicBean.getImg(), imageView);
            }
        }
    }

    public ComicStoreRankLayout(@NonNull Context context) {
        super(context, null, 0);
        LayoutInflater.from(getContext()).inflate(R.layout.include_store_rank_layout, this);
        ButterKnife.bind(this);
        this.topRecyclerView.setNestedScrollingEnabled(false);
        this.f8028new = new Cif();
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 12);
        gridLayoutManager.setSpanSizeLookup(new bh(this.f8028new, 12));
        this.topRecyclerView.setLayoutManager(gridLayoutManager);
        this.topRecyclerView.setAdapter(this.f8028new);
        this.f8028new.setOnItemClickListener(new pg(this));
    }

    /* renamed from: do  reason: not valid java name */
    public static String m3471do(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            stringBuffer.append(str.charAt(i));
            if (i != length - 1) {
                stringBuffer.append("\n");
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: for  reason: not valid java name */
    public void m3472for(boolean z, boolean z2, List<ComicStoreBean.TopTabsBean> list) {
        this.f8026goto = z;
        ScrollIndicatorView scrollIndicatorView = this.topIndicatorView;
        int currentItem = scrollIndicatorView != null ? scrollIndicatorView.getCurrentItem() : 0;
        if (currentItem < 0) {
            currentItem = 0;
        }
        try {
            if (this.f8029try == null) {
                this.f8029try = new HashMap();
            }
            if (this.topRankLayout.getVisibility() != 0) {
                this.topRankLayout.setVisibility(0);
            }
            for (ComicStoreBean.TopTabsBean topTabsBean : list) {
                String viewType = topTabsBean.getViewType();
                List<ComicBean> bookList = topTabsBean.getBookList();
                if ("2c".equals(viewType)) {
                    for (ComicBean comicBean : bookList) {
                        if (z2) {
                            comicBean.setItemType(14);
                        } else {
                            comicBean.setItemType(10);
                        }
                    }
                } else {
                    for (ComicBean comicBean2 : bookList) {
                        comicBean2.setItemType(13);
                    }
                }
                this.f8029try.put(topTabsBean.getCategory(), bookList);
            }
            this.f8022case = new String[list.size()];
            for (int i = 0; i < list.size(); i++) {
                this.f8022case[i] = list.get(i).getCategory();
            }
            this.topIndicatorView.setSplitAuto(true);
            ze.u(getContext(), this.topIndicatorView, 28, 14);
            this.topIndicatorView.setOnItemSelectListener(new Cdo());
            this.topIndicatorView.setAdapter(new nz(getContext(), this.f8022case, 0));
            if (this.f8028new != null) {
                String str = this.f8022case[currentItem];
                this.f8024else = str;
                this.f8028new.setNewData(this.f8029try.get(str));
            }
            this.topIndicatorView.setCurrentItem(currentItem);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (z2) {
                this.listLayout.setPadding(0, eg.m587catch(8.0f), 0, 0);
                this.topIndicatorView.setVisibility(8);
                findViewById(R.id.store_top_indicator_line).setVisibility(8);
                findViewById(R.id.store_style_left_layout).setVisibility(0);
                this.f8023do = (TextView) findViewById(R.id.store_style_left_one);
                this.f8027if = (TextView) findViewById(R.id.store_style_left_two);
                this.f8025for = (TextView) findViewById(R.id.store_style_left_three);
                this.f8023do.setText(m3471do(this.f8022case[0]));
                this.f8027if.setText(m3471do(this.f8022case[1]));
                this.f8025for.setText(m3471do(this.f8022case[2]));
                this.f8023do.setSelected(true);
                this.f8023do.setOnClickListener(new Cfor(0, null));
                this.f8027if.setOnClickListener(new Cfor(1, null));
                this.f8025for.setOnClickListener(new Cfor(2, null));
                m3473if(0);
            } else {
                this.listLayout.setPadding(0, 0, 0, 0);
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3473if(int i) {
        TextView textView = this.f8023do;
        if (textView == null || this.f8027if == null || this.f8025for == null) {
            return;
        }
        textView.setSelected(false);
        this.f8027if.setSelected(false);
        this.f8025for.setSelected(false);
        if (i == 0) {
            this.f8023do.setSelected(true);
        } else if (i == 1) {
            this.f8027if.setSelected(true);
        } else if (i != 2) {
        } else {
            this.f8025for.setSelected(true);
        }
    }
}
