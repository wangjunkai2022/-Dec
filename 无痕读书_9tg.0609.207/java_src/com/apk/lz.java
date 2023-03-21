package com.apk;

import android.app.Activity;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
import com.apk.d;
import com.apk.f00;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.ui.activity.FeedBackActivity;
import com.manhua.ui.widget.barrage.BarrageView;
import com.manhua.ui.widget.photoview.PhotoView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicViewPagerAdapter.java */
/* loaded from: classes8.dex */
public class lz extends PagerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final Activity f2949do;

    /* renamed from: else  reason: not valid java name */
    public int f2950else;

    /* renamed from: for  reason: not valid java name */
    public final LayoutInflater f2951for;

    /* renamed from: goto  reason: not valid java name */
    public gg<String, BarrageView> f2952goto;

    /* renamed from: if  reason: not valid java name */
    public final Cimport f2953if;

    /* renamed from: new  reason: not valid java name */
    public final l30 f2954new;

    /* renamed from: this  reason: not valid java name */
    public l00 f2955this;

    /* renamed from: try  reason: not valid java name */
    public final Queue<View> f2956try = new LinkedList();

    /* renamed from: case  reason: not valid java name */
    public List<BookChapter> f2948case = new ArrayList();

    /* compiled from: ComicViewPagerAdapter.java */
    /* renamed from: com.apk.lz$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ccase {

        /* renamed from: case  reason: not valid java name */
        public BarrageView f2957case;

        /* renamed from: new  reason: not valid java name */
        public FrameLayout f2961new;

        /* renamed from: try  reason: not valid java name */
        public LinearLayout f2962try;

        /* renamed from: do  reason: not valid java name */
        public PhotoView f2958do = null;

        /* renamed from: if  reason: not valid java name */
        public ProgressBar f2960if = null;

        /* renamed from: for  reason: not valid java name */
        public TextView f2959for = null;
    }

    /* compiled from: ComicViewPagerAdapter.java */
    /* renamed from: com.apk.lz$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            l00 l00Var = lz.this.f2955this;
            if (l00Var != null) {
                ze.M(f00.this.f3971if);
            }
        }
    }

    /* compiled from: ComicViewPagerAdapter.java */
    /* renamed from: com.apk.lz$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends bg {
        public Cfor() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            l00 l00Var = lz.this.f2955this;
            if (l00Var != null) {
                FeedBackActivity.i(f00.this.f3971if, hf.COMIC, FeedBackActivity.f6632new[4], "我的账号当前处于封禁状态，请帮我查询状态。");
            }
        }
    }

    /* compiled from: ComicViewPagerAdapter.java */
    /* renamed from: com.apk.lz$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends bg {
        public Cif() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            l00 l00Var = lz.this.f2955this;
            if (l00Var != null) {
                ((f00.Celse) l00Var).m735do();
            }
        }
    }

    /* compiled from: ComicViewPagerAdapter.java */
    /* renamed from: com.apk.lz$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements g30 {
        public Cnew() {
        }
    }

    /* compiled from: ComicViewPagerAdapter.java */
    /* renamed from: com.apk.lz$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements j1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ FrameLayout f2967do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ LinearLayout f2968for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ProgressBar f2969if;

        public Ctry(lz lzVar, FrameLayout frameLayout, ProgressBar progressBar, LinearLayout linearLayout) {
            this.f2967do = frameLayout;
            this.f2969if = progressBar;
            this.f2968for = linearLayout;
        }

        @Override // com.apk.j1
        /* renamed from: do */
        public void mo445do() {
            if (this.f2967do.getVisibility() != 0) {
                this.f2967do.setVisibility(0);
            }
            if (this.f2969if.getVisibility() != 8) {
                this.f2969if.setVisibility(8);
            }
            if (this.f2968for.getVisibility() != 8) {
                this.f2968for.setVisibility(8);
            }
        }

        @Override // com.apk.j1
        /* renamed from: if */
        public void mo446if() {
            if (this.f2967do.getVisibility() != 8) {
                this.f2967do.setVisibility(8);
            }
            if (this.f2969if.getVisibility() != 8) {
                this.f2969if.setVisibility(8);
            }
            if (this.f2968for.getVisibility() != 0) {
                this.f2968for.setVisibility(0);
            }
        }
    }

    public lz(Activity activity, int i, l30 l30Var, Cimport cimport) {
        this.f2949do = activity;
        this.f2950else = i;
        this.f2954new = l30Var;
        this.f2953if = cimport;
        this.f2951for = LayoutInflater.from(activity);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = (View) obj;
        viewGroup.removeView(view);
        if (!"AD".equals(view.getTag())) {
            this.f2956try.offer(view);
        }
        gg<String, BarrageView> ggVar = this.f2952goto;
        if (ggVar != null) {
            ggVar.remove(mu.m1760continue(m1671do(i)));
        }
    }

    /* renamed from: do  reason: not valid java name */
    public BookChapter m1671do(int i) {
        if (i >= this.f2948case.size() || i < 0) {
            return null;
        }
        return this.f2948case.get(i);
    }

    /* renamed from: for  reason: not valid java name */
    public final void m1672for(boolean z, BookChapter bookChapter, PhotoView photoView, BarrageView barrageView, ProgressBar progressBar, FrameLayout frameLayout, LinearLayout linearLayout) {
        if (frameLayout.getVisibility() != 0) {
            frameLayout.setVisibility(0);
        }
        if (progressBar.getVisibility() != 0) {
            progressBar.setVisibility(0);
        }
        if (linearLayout.getVisibility() != 8) {
            linearLayout.setVisibility(8);
        }
        u.m2641catch(z, bookChapter.getImageUrl(), photoView, barrageView, new Ctry(this, frameLayout, progressBar, linearLayout));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f2948case.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(@NonNull Object obj) {
        return super.getItemPosition(obj);
    }

    /* renamed from: if  reason: not valid java name */
    public void m1673if(String str) {
        gg<String, BarrageView> ggVar = this.f2952goto;
        if (ggVar != null) {
            Iterator it = ((HashSet) ggVar.entrySet()).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((String) entry.getKey()).equals(str)) {
                    ((BarrageView) entry.getValue()).reloadSync();
                } else {
                    ((BarrageView) entry.getValue()).destory();
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        BookChapter bookChapter;
        View inflate;
        Ccase ccase;
        if (this.f2950else == 0) {
            List<BookChapter> list = this.f2948case;
            bookChapter = list.get((list.size() - i) - 1);
        } else {
            bookChapter = this.f2948case.get(i);
        }
        String m1760continue = mu.m1760continue(bookChapter);
        if (bookChapter.getItemType() == 2) {
            View inflate2 = this.f2951for.inflate(R.layout.include_bookread_ad_page_layout, viewGroup, false);
            inflate2.setTag("AD");
            TextView textView = (TextView) inflate2.findViewById(R.id.item_read_ad_continue_view);
            textView.setText(ze.r(R.string.app_ad_to_read_txt, ""));
            textView.setTag(m1760continue + "ContinueReadTView");
            textView.setTextColor(ca.m315do().f542do.getColor());
            textView.setVisibility(0);
            inflate2.findViewById(R.id.item_read_ad_tips_view).setVisibility(8);
            Cimport cimport = this.f2953if;
            if (cimport != null && cimport.m1257try()) {
                this.f2953if.m1253goto(this.f2949do);
                try {
                    LinearLayout linearLayout = (LinearLayout) inflate2.findViewById(R.id.item_read_ad_layout);
                    String str = this.f2953if.f2177for;
                    if (TextUtils.isEmpty(str)) {
                        str = ze.q(R.string.read_reward_video_desc_txt);
                    }
                    TextView textView2 = new TextView(this.f2949do);
                    textView2.setTextSize(2, 17.0f);
                    textView2.setTextColor(ca.m315do().f542do.getColor());
                    textView2.setText(str);
                    linearLayout.removeAllViews();
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    int m587catch = eg.m587catch(15.0f);
                    layoutParams.leftMargin = m587catch;
                    layoutParams.rightMargin = m587catch;
                    linearLayout.addView(textView2, layoutParams);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                LinearLayout linearLayout2 = (LinearLayout) inflate2.findViewById(R.id.item_read_ad_layout);
                linearLayout2.setBackgroundColor(Color.parseColor("#08000000"));
                linearLayout2.removeAllViews();
                d.Cdo.f803do.m400do(this.f2949do, linearLayout2, false);
            }
            viewGroup.addView(inflate2);
            return inflate2;
        } else if (bookChapter.getItemType() == 3) {
            View inflate3 = this.f2951for.inflate(R.layout.include_bookread_ad_page_layout, viewGroup, false);
            inflate3.setTag("AD");
            inflate3.findViewById(R.id.item_read_ad_continue_view).setVisibility(8);
            inflate3.findViewById(R.id.item_read_ad_tips_view).setVisibility(0);
            LinearLayout linearLayout3 = (LinearLayout) inflate3.findViewById(R.id.item_read_ad_layout);
            linearLayout3.setBackgroundColor(Color.parseColor("#08000000"));
            linearLayout3.removeAllViews();
            d.Cdo.f803do.m400do(this.f2949do, linearLayout3, false);
            viewGroup.addView(inflate3);
            return inflate3;
        } else if (bookChapter.getItemType() == 4) {
            View inflate4 = View.inflate(this.f2949do, R.layout.comic_item_comic_reader_jq_failed, null);
            inflate4.setTag("AD");
            LinearLayout linearLayout4 = (LinearLayout) inflate4.findViewById(R.id.comic_jq_login_layout);
            LinearLayout linearLayout5 = (LinearLayout) inflate4.findViewById(R.id.comic_jq_failed_layout);
            String imageUrl = bookChapter.getImageUrl();
            if ("MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY".equals(imageUrl)) {
                linearLayout4.setVisibility(0);
                linearLayout5.setVisibility(8);
                inflate4.findViewById(R.id.comic_jq_need_login_btn).setOnClickListener(new Cdo());
            } else if ("MH_UNLOCK_CHAPTER_FALIED_TAG_KEY".equals(imageUrl)) {
                linearLayout4.setVisibility(8);
                linearLayout5.setVisibility(0);
                inflate4.findViewById(R.id.comic_jq_error_refresh_btn).setOnClickListener(new Cif());
                inflate4.findViewById(R.id.comic_jq_error_feed_callback_btn).setOnClickListener(new Cfor());
            }
            viewGroup.addView(inflate4);
            return inflate4;
        } else {
            if (this.f2956try.size() > 0) {
                inflate = this.f2956try.poll();
                ccase = (Ccase) inflate.getTag();
            } else {
                inflate = this.f2951for.inflate(R.layout.comic_item_chapters, viewGroup, false);
                ccase = new Ccase();
                ccase.f2958do = (PhotoView) inflate.findViewById(R.id.pv_comic);
                ccase.f2960if = (ProgressBar) inflate.findViewById(R.id.pv_comic_loading_pv);
                ccase.f2959for = (TextView) inflate.findViewById(R.id.pv_comic_loading_index_tv);
                ccase.f2961new = (FrameLayout) inflate.findViewById(R.id.comic_item_content_layout);
                ccase.f2962try = (LinearLayout) inflate.findViewById(R.id.comic_item_failed_layout);
                ccase.f2957case = (BarrageView) inflate.findViewById(R.id.pv_comic_barrageview);
                inflate.setTag(ccase);
            }
            View view = inflate;
            Ccase ccase2 = ccase;
            TextView textView3 = ccase2.f2959for;
            textView3.setText(bookChapter.getReadPage() + "");
            if ("MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY".equals(bookChapter.getImageUrl())) {
                ccase2.f2958do.setImageResource(R.drawable.shape_default_mh_item);
            } else {
                PhotoView photoView = ccase2.f2958do;
                BarrageView barrageView = ccase2.f2957case;
                ProgressBar progressBar = ccase2.f2960if;
                FrameLayout frameLayout = ccase2.f2961new;
                LinearLayout linearLayout6 = ccase2.f2962try;
                BookChapter bookChapter2 = bookChapter;
                m1672for(false, bookChapter2, photoView, barrageView, progressBar, frameLayout, linearLayout6);
                linearLayout6.setOnClickListener(new mz(this, bookChapter2, photoView, barrageView, progressBar, frameLayout, linearLayout6));
            }
            if (w0.m2890static()) {
                ccase2.f2957case.setTag(m1760continue);
                ccase2.f2957case.setChapterId(bookChapter.getChapterId(), bookChapter.getReadPage());
                if (this.f2952goto == null) {
                    this.f2952goto = new gg<>();
                }
                this.f2952goto.put(m1760continue, ccase2.f2957case);
            }
            ccase2.f2958do.setOnViewTapListener(new Cnew());
            viewGroup.addView(view);
            return view;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    /* renamed from: new  reason: not valid java name */
    public void m1674new(String str) {
        gg<String, BarrageView> ggVar = this.f2952goto;
        if (ggVar != null) {
            Iterator it = ((HashSet) ggVar.entrySet()).iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((String) entry.getKey()).equals(str)) {
                    ((BarrageView) entry.getValue()).initBarrageView();
                } else {
                    ((BarrageView) entry.getValue()).pause();
                }
            }
        }
    }
}
