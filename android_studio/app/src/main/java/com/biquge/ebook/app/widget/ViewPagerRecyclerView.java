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
import com.apk.dh;
import com.apk.eg;
import com.apk.eh;
import com.apk.sg;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.Book;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.youth.banner.view.BannerViewPager;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ViewPagerRecyclerView extends LinearLayout {

    /* renamed from: do  reason: not valid java name */
    public int f8290do;

    /* renamed from: for  reason: not valid java name */
    public Cdo f8291for;

    /* renamed from: if  reason: not valid java name */
    public BannerViewPager f8292if;

    /* renamed from: new  reason: not valid java name */
    public sg f8293new;

    /* renamed from: com.biquge.ebook.app.widget.ViewPagerRecyclerView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends PagerAdapter {

        /* renamed from: do  reason: not valid java name */
        public final Activity f8294do;

        /* renamed from: for  reason: not valid java name */
        public int f8295for;

        /* renamed from: if  reason: not valid java name */
        public List<List<Book>> f8296if;

        public Cdo(Context context, List list, int i, dh dhVar) {
            this.f8294do = (Activity) context;
            this.f8296if = list;
            this.f8295for = i;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f8296if.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            RecyclerView recyclerView = new RecyclerView(this.f8294do);
            recyclerView.setLayoutManager(new GridLayoutManager(this.f8294do, this.f8295for));
            recyclerView.setHasFixedSize(true);
            ze.m3165else(recyclerView);
            recyclerView.setAdapter(new Cif(this.f8294do, this.f8296if.get(i), null));
            viewGroup.addView(recyclerView);
            return recyclerView;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
            return view == obj;
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ViewPagerRecyclerView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends BaseQuickAdapter<Book, BaseViewHolder> {

        /* renamed from: do  reason: not valid java name */
        public final Context f8297do;

        public Cif(Context context, List list, dh dhVar) {
            super(R.layout.item_new_store_item_grid_score_view, list);
            this.f8297do = context;
            setOnItemClickListener(new eh(this));
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(BaseViewHolder baseViewHolder, Book book) {
            Book book2 = book;
            try {
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_simple_book_image);
                if (book2.isNovel()) {
                    u.m2653public(book2.getImg(), imageView);
                } else {
                    u.m2650import(book2.getImg(), imageView);
                }
                baseViewHolder.setText(R.id.item_simple_book_name_txt, book2.getName());
                baseViewHolder.setText(R.id.item_simple_book_score_txt, ze.r(R.string.xml_value_score_txt, book2.getScore() + ""));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public ViewPagerRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(1);
        setGravity(1);
        this.f8292if = new BannerViewPager(getContext(), null);
        addView(this.f8292if, new LinearLayout.LayoutParams(-1, eg.m587catch(185.0f)));
        sg sgVar = new sg(getContext());
        this.f8293new = sgVar;
        addView(sgVar);
        this.f8292if.addOnPageChangeListener(new dh(this));
    }
}
