package com.apk;

import android.app.Activity;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
import com.apk.d;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.widget.BookPageTextView;
import com.biquge.ebook.app.widget.BookTitleTextView;
import com.biquge.ebook.app.widget.ReadContentLayout;
import com.manhua.ui.widget.barrage.BarrageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import kimi.wuhends.ebooks.R;

/* compiled from: BookViewPagerAdapter.java */
/* loaded from: classes8.dex */
public class v9 extends PagerAdapter {

    /* renamed from: break  reason: not valid java name */
    public final int f5033break;

    /* renamed from: case  reason: not valid java name */
    public int f5034case;

    /* renamed from: catch  reason: not valid java name */
    public final int f5035catch;

    /* renamed from: class  reason: not valid java name */
    public final boolean f5036class;

    /* renamed from: const  reason: not valid java name */
    public gg<String, BarrageView> f5037const;

    /* renamed from: do  reason: not valid java name */
    public final Activity f5038do;

    /* renamed from: else  reason: not valid java name */
    public boolean f5039else;

    /* renamed from: final  reason: not valid java name */
    public LinearLayout.LayoutParams f5040final;

    /* renamed from: for  reason: not valid java name */
    public final LayoutInflater f5041for;

    /* renamed from: goto  reason: not valid java name */
    public final boolean f5042goto;

    /* renamed from: if  reason: not valid java name */
    public final Cimport f5043if;

    /* renamed from: import  reason: not valid java name */
    public View.OnClickListener f5044import;

    /* renamed from: native  reason: not valid java name */
    public boolean f5045native;

    /* renamed from: super  reason: not valid java name */
    public LinearLayout.LayoutParams f5047super;

    /* renamed from: this  reason: not valid java name */
    public boolean f5048this;

    /* renamed from: while  reason: not valid java name */
    public View.OnTouchListener f5051while;

    /* renamed from: throw  reason: not valid java name */
    public final View.OnClickListener f5049throw = new Cdo();

    /* renamed from: try  reason: not valid java name */
    public List<BookChapter> f5050try = new ArrayList();

    /* renamed from: new  reason: not valid java name */
    public final Queue<View> f5046new = new LinkedList();

    /* compiled from: BookViewPagerAdapter.java */
    /* renamed from: com.apk.v9$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View.OnClickListener onClickListener = v9.this.f5044import;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* compiled from: BookViewPagerAdapter.java */
    /* renamed from: com.apk.v9$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public BookTitleTextView f5053do;

        /* renamed from: for  reason: not valid java name */
        public BookPageTextView f5054for;

        /* renamed from: if  reason: not valid java name */
        public ReadContentLayout f5055if;

        public Cif() {
        }

        public Cif(Cdo cdo) {
        }
    }

    public v9(Activity activity, int i, Cimport cimport) {
        this.f5038do = activity;
        this.f5034case = i;
        this.f5043if = cimport;
        this.f5041for = LayoutInflater.from(activity);
        this.f5042goto = Cfinally.m797else().m807extends() || Cfinally.m797else().m806default() || Cfinally.m797else().m826throw();
        this.f5033break = eg.m587catch(30.0f);
        this.f5035catch = Cfinally.m793case();
        this.f5036class = w0.m2890static();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, @NonNull Object obj) {
        View view = (View) obj;
        viewGroup.removeView(view);
        if (!"AD".equals(view.getTag())) {
            this.f5046new.offer(view);
        }
        gg<String, BarrageView> ggVar = this.f5037const;
        if (ggVar != null) {
            ggVar.remove(n2.m1842throws(m2783do(i)));
        }
    }

    /* renamed from: do  reason: not valid java name */
    public BookChapter m2783do(int i) {
        if (i >= this.f5050try.size() || i < 0) {
            return null;
        }
        return this.f5050try.get(i);
    }

    /* renamed from: for  reason: not valid java name */
    public void m2784for() {
        this.f5045native = true;
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f5050try.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(@NonNull Object obj) {
        if (this.f5045native) {
            return -2;
        }
        return super.getItemPosition(obj);
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m2785if(BookChapter bookChapter) {
        return bookChapter.getAllPage() > 1 && bookChapter.getReadPage() == bookChapter.getAllPage();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        View inflate;
        Cif cif;
        BarrageView barrageView;
        BookChapter bookChapter = this.f5050try.get(i);
        String m1842throws = n2.m1842throws(bookChapter);
        boolean z = true;
        if (bookChapter.getItemType() == 2) {
            View inflate2 = this.f5041for.inflate(R.layout.include_bookread_ad_page_layout, viewGroup, false);
            inflate2.setTag("AD");
            TextView textView = (TextView) inflate2.findViewById(R.id.item_read_ad_continue_view);
            textView.setText(ze.r(R.string.app_ad_to_read_txt, ""));
            textView.setTag(m1842throws + "ContinueReadTView");
            textView.setTextColor(ca.m315do().f542do.getColor());
            textView.setVisibility(0);
            inflate2.findViewById(R.id.item_read_ad_tips_view).setVisibility(8);
            Cimport cimport = this.f5043if;
            if (cimport != null && cimport.m1257try()) {
                this.f5043if.m1253goto(this.f5038do);
                try {
                    LinearLayout linearLayout = (LinearLayout) inflate2.findViewById(R.id.item_read_ad_layout);
                    String str = this.f5043if.f2177for;
                    if (TextUtils.isEmpty(str)) {
                        str = ze.q(R.string.read_reward_video_desc_txt);
                    }
                    TextView textView2 = new TextView(this.f5038do);
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
                d.Cdo.f803do.m400do(this.f5038do, linearLayout2, false);
            }
            viewGroup.addView(inflate2);
            return inflate2;
        } else if (bookChapter.getItemType() == 3) {
            View inflate3 = this.f5041for.inflate(R.layout.include_bookread_ad_page_layout, viewGroup, false);
            inflate3.setTag("AD");
            inflate3.findViewById(R.id.item_read_ad_continue_view).setVisibility(8);
            inflate3.findViewById(R.id.item_read_ad_tips_view).setVisibility(0);
            LinearLayout linearLayout3 = (LinearLayout) inflate3.findViewById(R.id.item_read_ad_layout);
            linearLayout3.setBackgroundColor(Color.parseColor("#08000000"));
            linearLayout3.removeAllViews();
            d.Cdo.f803do.m400do(this.f5038do, linearLayout3, false);
            viewGroup.addView(inflate3);
            return inflate3;
        } else {
            if (this.f5046new.size() > 0) {
                inflate = this.f5046new.poll();
                cif = (Cif) inflate.getTag();
            } else {
                inflate = this.f5041for.inflate(R.layout.item_read_list_content_layout, viewGroup, false);
                cif = new Cif(null);
                cif.f5053do = (BookTitleTextView) inflate.findViewById(R.id.book_read_chapter_name_txt);
                cif.f5055if = (ReadContentLayout) inflate.findViewById(R.id.book_read_content_layout);
                cif.f5054for = (BookPageTextView) inflate.findViewById(R.id.book_read_slide_page_txt);
                inflate.setTag(cif);
            }
            String chapterName = bookChapter.getChapterName();
            if (TextUtils.isEmpty(chapterName)) {
                chapterName = da.m419else().m443try(bookChapter.getNovelid(), bookChapter.getChapterId());
            }
            String m989case = Cgoto.m989case(m1842throws, "BookTitleTextView");
            BookTitleTextView bookTitleTextView = cif.f5053do;
            if (this.f5045native || TextUtils.isEmpty(bookTitleTextView.getText()) || !m989case.equals(bookTitleTextView.getTag())) {
                bookTitleTextView.setText(chapterName);
                bookTitleTextView.setTag(m989case);
            }
            z = (this.f5039else && this.f5034case != 2 && this.f5042goto && m2785if(bookChapter)) ? false : false;
            cif.f5055if.setTouchListener(this.f5051while);
            cif.f5055if.setReloadClickListener(this.f5049throw);
            cif.f5055if.m3481do(bookChapter, chapterName, z);
            if (this.f5034case != 2 && (barrageView = cif.f5055if.getBarrageView()) != null) {
                if (this.f5036class) {
                    barrageView.setChapterId(bookChapter.getChapterId(), bookChapter.getReadPage());
                    if (this.f5037const == null) {
                        this.f5037const = new gg<>();
                    }
                    this.f5037const.put(m1842throws, barrageView);
                    if (z) {
                        if (barrageView.getVisibility() != 8) {
                            barrageView.setVisibility(8);
                        }
                    } else if (barrageView.getVisibility() != 0) {
                        barrageView.setVisibility(0);
                    }
                } else if (barrageView.getVisibility() != 8) {
                    barrageView.setVisibility(8);
                }
            }
            String m989case2 = Cgoto.m989case(m1842throws, "BookPageTextView");
            BookPageTextView bookPageTextView = cif.f5054for;
            if (this.f5045native || !m989case2.equals(bookPageTextView.getTag())) {
                bookPageTextView.m3468if(bookChapter.getReadPage(), bookChapter.getAllPage());
                bookPageTextView.setTag(m989case2);
            }
            if (this.f5048this) {
                if (bookPageTextView.getHeight() != this.f5035catch + this.f5033break) {
                    if (this.f5040final == null) {
                        this.f5040final = new LinearLayout.LayoutParams(-1, this.f5035catch + this.f5033break);
                    }
                    bookPageTextView.setLayoutParams(this.f5040final);
                    bookPageTextView.setPadding(bookPageTextView.getPaddingLeft(), 0, bookPageTextView.getPaddingRight(), this.f5035catch);
                }
            } else if (bookPageTextView.getHeight() != this.f5033break) {
                if (this.f5047super == null) {
                    this.f5047super = new LinearLayout.LayoutParams(-1, this.f5033break);
                }
                bookPageTextView.setLayoutParams(this.f5047super);
                bookPageTextView.setPadding(bookPageTextView.getPaddingLeft(), 0, bookPageTextView.getPaddingRight(), 0);
            }
            this.f5045native = false;
            viewGroup.addView(inflate);
            return inflate;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    /* renamed from: new  reason: not valid java name */
    public void m2786new(String str) {
        gg<String, BarrageView> ggVar = this.f5037const;
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

    /* renamed from: try  reason: not valid java name */
    public void m2787try(String str) {
        gg<String, BarrageView> ggVar = this.f5037const;
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
