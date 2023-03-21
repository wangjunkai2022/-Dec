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
import com.apk.ah;
import com.apk.b40;
import com.apk.bg;
import com.apk.bh;
import com.apk.eg;
import com.apk.nz;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.StoreBean;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class StoreRankLayout extends FrameLayout {

    /* renamed from: case  reason: not valid java name */
    public String[] f8157case;

    /* renamed from: do  reason: not valid java name */
    public TextView f8158do;

    /* renamed from: else  reason: not valid java name */
    public String f8159else;

    /* renamed from: for  reason: not valid java name */
    public TextView f8160for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f8161goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f8162if;
    @BindView(R.id.store_list_layout)
    @SuppressLint({"NonConstantResourceId"})
    public LinearLayout listLayout;

    /* renamed from: new  reason: not valid java name */
    public Cfor f8163new;

    /* renamed from: this  reason: not valid java name */
    public int f8164this;
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
    public Map<String, List<Book>> f8165try;

    /* renamed from: com.biquge.ebook.app.widget.StoreRankLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements b40.Cnew {
        public Cdo() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            try {
                if (StoreRankLayout.this.f8163new != null) {
                    StoreRankLayout.this.f8159else = StoreRankLayout.this.f8157case[i];
                    StoreRankLayout.this.f8163new.setNewData(StoreRankLayout.this.f8165try.get(StoreRankLayout.this.f8159else));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.StoreRankLayout$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends BaseMultiItemQuickAdapter<Book, BaseViewHolder> {
        public Cfor() {
            super(null);
            addItemType(13, R.layout.item_store_top_rankn_list);
            addItemType(14, R.layout.item_store_top_ran_grid);
            addItemType(10, R.layout.item_store_top_rank_grid_two);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, Object obj) {
            Book book = (Book) obj;
            int itemViewType = baseViewHolder.getItemViewType();
            if (itemViewType == 10) {
                m3494do(book, (ImageView) baseViewHolder.getView(R.id.item_rank_img));
                baseViewHolder.setText(R.id.item_rank_index_tv, (baseViewHolder.getLayoutPosition() + 1) + "");
                baseViewHolder.setText(R.id.item_rank_book_name_tv, book.getName());
                baseViewHolder.setText(R.id.item_rank_book_hot_tv, book.getHot());
            } else if (itemViewType != 13) {
                if (itemViewType != 14) {
                    return;
                }
                m3494do(book, (ImageView) baseViewHolder.getView(R.id.item_rank_img));
                baseViewHolder.setText(R.id.item_rank_book_name_tv, book.getName());
            } else {
                baseViewHolder.setText(R.id.item_rank_index_tv, (baseViewHolder.getLayoutPosition() + 1) + ".");
                baseViewHolder.setText(R.id.item_rank_book_name_tv, book.getName());
                u.m2654return(book.getImg(), (ImageView) baseViewHolder.getView(R.id.item_rank_type_iv), 0, null, false);
            }
        }

        /* renamed from: do  reason: not valid java name */
        public final void m3494do(Book book, ImageView imageView) {
            if (book.isNovel()) {
                u.m2653public(book.getImg(), imageView);
            } else {
                u.m2650import(book.getImg(), imageView);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.StoreRankLayout$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends bg {

        /* renamed from: do  reason: not valid java name */
        public final int f8167do;

        public Cif(int i, ah ahVar) {
            this.f8167do = i;
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            try {
                if (StoreRankLayout.this.f8163new != null && StoreRankLayout.this.f8157case != null && StoreRankLayout.this.f8157case.length > this.f8167do) {
                    StoreRankLayout.this.f8159else = StoreRankLayout.this.f8157case[this.f8167do];
                    StoreRankLayout.this.f8163new.setNewData(StoreRankLayout.this.f8165try.get(StoreRankLayout.this.f8159else));
                }
            } catch (Exception unused) {
            }
            StoreRankLayout.this.m3493if(this.f8167do);
        }
    }

    public StoreRankLayout(@NonNull Context context) {
        super(context, null, 0);
        LayoutInflater.from(getContext()).inflate(R.layout.include_store_rank_layout, this);
        ButterKnife.bind(this);
        this.topRecyclerView.setNestedScrollingEnabled(false);
        this.f8163new = new Cfor();
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 12);
        gridLayoutManager.setSpanSizeLookup(new bh(this.f8163new, 12));
        this.topRecyclerView.setLayoutManager(gridLayoutManager);
        this.topRecyclerView.setAdapter(this.f8163new);
        this.f8163new.setOnItemClickListener(new ah(this));
    }

    /* renamed from: do  reason: not valid java name */
    public static String m3491do(String str) {
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
    public void m3492for(boolean z, boolean z2, List<StoreBean.TopTabsBean> list) {
        this.f8161goto = z;
        ScrollIndicatorView scrollIndicatorView = this.topIndicatorView;
        int currentItem = scrollIndicatorView != null ? scrollIndicatorView.getCurrentItem() : 0;
        if (currentItem < 0) {
            currentItem = 0;
        }
        try {
            if (this.f8165try == null) {
                this.f8165try = new HashMap();
            }
            if (this.topRankLayout.getVisibility() != 0) {
                this.topRankLayout.setVisibility(0);
            }
            for (StoreBean.TopTabsBean topTabsBean : list) {
                String viewType = topTabsBean.getViewType();
                List<Book> bookList = topTabsBean.getBookList();
                if ("2c".equals(viewType)) {
                    for (Book book : bookList) {
                        if (z2) {
                            book.setItemType(14);
                        } else {
                            book.setItemType(10);
                        }
                    }
                } else {
                    for (Book book2 : bookList) {
                        book2.setItemType(13);
                    }
                }
                this.f8165try.put(topTabsBean.getCategory(), bookList);
            }
            this.f8157case = new String[list.size()];
            for (int i = 0; i < list.size(); i++) {
                this.f8157case[i] = list.get(i).getCategory();
            }
            this.topIndicatorView.setSplitAuto(true);
            ze.u(getContext(), this.topIndicatorView, 28, 14);
            this.topIndicatorView.setOnItemSelectListener(new Cdo());
            this.topIndicatorView.setAdapter(new nz(getContext(), this.f8157case, 0));
            if (this.f8163new != null) {
                String str = this.f8157case[currentItem];
                this.f8159else = str;
                this.f8163new.setNewData(this.f8165try.get(str));
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
                this.f8158do = (TextView) findViewById(R.id.store_style_left_one);
                this.f8162if = (TextView) findViewById(R.id.store_style_left_two);
                this.f8160for = (TextView) findViewById(R.id.store_style_left_three);
                this.f8158do.setText(m3491do(this.f8157case[0]));
                this.f8162if.setText(m3491do(this.f8157case[1]));
                this.f8160for.setText(m3491do(this.f8157case[2]));
                this.f8158do.setSelected(true);
                this.f8158do.setOnClickListener(new Cif(0, null));
                this.f8162if.setOnClickListener(new Cif(1, null));
                this.f8160for.setOnClickListener(new Cif(2, null));
                m3493if(0);
            } else {
                this.listLayout.setPadding(0, 0, 0, 0);
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3493if(int i) {
        TextView textView = this.f8158do;
        if (textView == null || this.f8162if == null || this.f8160for == null) {
            return;
        }
        textView.setSelected(false);
        this.f8162if.setSelected(false);
        this.f8160for.setSelected(false);
        if (i == 0) {
            this.f8158do.setSelected(true);
        } else if (i == 1) {
            this.f8162if.setSelected(true);
        } else if (i != 2) {
        } else {
            this.f8160for.setSelected(true);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i2 > this.f8164this) {
            this.f8164this = i2;
            int minimumHeight = getMinimumHeight();
            int i5 = this.f8164this;
            if (minimumHeight < i5) {
                setMinimumHeight(i5);
            }
        }
    }
}
