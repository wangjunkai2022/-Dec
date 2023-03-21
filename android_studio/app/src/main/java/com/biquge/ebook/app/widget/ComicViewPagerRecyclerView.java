package com.biquge.ebook.app.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.n2;
import com.apk.qg;
import com.apk.sg;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
import com.youth.banner.view.BannerViewPager;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicViewPagerRecyclerView extends LinearLayout {

    /* renamed from: do  reason: not valid java name */
    public int f8036do;

    /* renamed from: for  reason: not valid java name */
    public Cdo f8037for;

    /* renamed from: if  reason: not valid java name */
    public BannerViewPager f8038if;

    /* renamed from: new  reason: not valid java name */
    public sg f8039new;

    /* renamed from: com.biquge.ebook.app.widget.ComicViewPagerRecyclerView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends PagerAdapter {

        /* renamed from: do  reason: not valid java name */
        public final Activity f8040do;

        /* renamed from: for  reason: not valid java name */
        public int f8041for;

        /* renamed from: if  reason: not valid java name */
        public List<List<ComicBean>> f8042if;

        public Cdo(Context context, List<List<ComicBean>> list, int i) {
            this.f8040do = (Activity) context;
            this.f8042if = list;
            this.f8041for = i;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f8042if.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            RecyclerView recyclerView = new RecyclerView(this.f8040do);
            recyclerView.setLayoutManager(new GridLayoutManager(this.f8040do, this.f8041for));
            recyclerView.setHasFixedSize(true);
            ze.m3165else(recyclerView);
            recyclerView.setAdapter(new Cif(this.f8040do, this.f8042if.get(i)));
            viewGroup.addView(recyclerView);
            return recyclerView;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
            return view == obj;
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ComicViewPagerRecyclerView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends BaseQuickAdapter<ComicBean, BaseViewHolder> {

        /* renamed from: do  reason: not valid java name */
        public final Context f8043do;

        /* renamed from: com.biquge.ebook.app.widget.ComicViewPagerRecyclerView$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements BaseQuickAdapter.OnItemClickListener {
            public Cdo() {
            }

            @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ComicBean comicBean = (ComicBean) baseQuickAdapter.getItem(i);
                if (comicBean != null) {
                    if (comicBean.isCartton()) {
                        ComicDetailActivity.n(Cif.this.f8043do, comicBean);
                        return;
                    }
                    Book m1811catch = n2.m1811catch(comicBean.getId(), comicBean.getName(), comicBean.getImg());
                    m1811catch.setDesc(comicBean.getDesc());
                    Context context = Cif.this.f8043do;
                    StringBuilder m1016super = Cgoto.m1016super("重磅推荐|");
                    m1016super.append(i + 1);
                    BookDetailActivity.t(context, m1016super.toString(), m1811catch);
                }
            }
        }

        public Cif(Context context, @Nullable List<ComicBean> list) {
            super(R.layout.item_new_store_item_grid_score_view, list);
            this.f8043do = context;
            setOnItemClickListener(new Cdo());
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(BaseViewHolder baseViewHolder, ComicBean comicBean) {
            ComicBean comicBean2 = comicBean;
            try {
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_simple_book_image);
                if (comicBean2.isCartton()) {
                    u.m2650import(comicBean2.getImg(), imageView);
                } else {
                    u.m2653public(comicBean2.getImg(), imageView);
                }
                baseViewHolder.setText(R.id.item_simple_book_name_txt, comicBean2.getName());
                baseViewHolder.setText(R.id.item_simple_book_score_txt, ze.r(R.string.xml_value_score_txt, comicBean2.getScore() + ""));
            } catch (Exception unused) {
            }
        }
    }

    public ComicViewPagerRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(1);
        setGravity(1);
        this.f8038if = new BannerViewPager(getContext(), null);
        addView(this.f8038if, new LinearLayout.LayoutParams(-1, eg.m587catch(185.0f)));
        sg sgVar = new sg(getContext());
        this.f8039new = sgVar;
        addView(sgVar);
        this.f8038if.addOnPageChangeListener(new qg(this));
    }
}
