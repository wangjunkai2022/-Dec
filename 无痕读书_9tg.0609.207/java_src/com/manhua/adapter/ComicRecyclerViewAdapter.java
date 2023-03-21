package com.manhua.adapter;

import android.app.Activity;
import android.graphics.Color;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.apk.Cimport;
import com.apk.ca;
import com.apk.d;
import com.apk.eg;
import com.apk.hz;
import com.apk.iz;
import com.apk.j1;
import com.apk.jz;
import com.apk.kz;
import com.apk.l00;
import com.apk.mu;
import com.apk.u;
import com.apk.w0;
import com.apk.ze;
import com.biquge.ebook.app.bean.BookChapter;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.ui.widget.ComicImageLayout;
import com.manhua.ui.widget.barrage.BarrageView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicRecyclerViewAdapter extends BaseMultiItemQuickAdapter<BookChapter, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final Activity f9633do;

    /* renamed from: for  reason: not valid java name */
    public l00 f9634for;

    /* renamed from: if  reason: not valid java name */
    public final Cimport f9635if;

    /* renamed from: com.manhua.adapter.ComicRecyclerViewAdapter$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements j1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicImageLayout f9636do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ TextView f9637for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ LinearLayout f9638if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ ProgressBar f9639new;

        public Cdo(ComicRecyclerViewAdapter comicRecyclerViewAdapter, ComicImageLayout comicImageLayout, LinearLayout linearLayout, TextView textView, ProgressBar progressBar) {
            this.f9636do = comicImageLayout;
            this.f9638if = linearLayout;
            this.f9637for = textView;
            this.f9639new = progressBar;
        }

        @Override // com.apk.j1
        /* renamed from: do */
        public void mo445do() {
            if (this.f9636do.getVisibility() != 0) {
                this.f9636do.setVisibility(0);
            }
            if (this.f9638if.getVisibility() != 8) {
                this.f9638if.setVisibility(8);
            }
            if (this.f9637for.getVisibility() != 8) {
                this.f9637for.setVisibility(8);
            }
            if (this.f9639new.getVisibility() != 8) {
                this.f9639new.setVisibility(8);
            }
        }

        @Override // com.apk.j1
        /* renamed from: if */
        public void mo446if() {
            if (this.f9636do.getVisibility() != 4) {
                this.f9636do.setVisibility(4);
            }
            if (this.f9638if.getVisibility() != 0) {
                this.f9638if.setVisibility(0);
            }
            if (this.f9637for.getVisibility() != 8) {
                this.f9637for.setVisibility(8);
            }
            if (this.f9639new.getVisibility() != 8) {
                this.f9639new.setVisibility(8);
            }
        }
    }

    public ComicRecyclerViewAdapter(Activity activity, Cimport cimport) {
        super(null);
        this.f9633do = activity;
        this.f9635if = cimport;
        addItemType(1, R.layout.comic_item_comic_reader);
        if (cimport != null && cimport.f2191try) {
            addItemType(2, R.layout.readd_chapter_mid_wrap_layout);
        } else {
            addItemType(2, R.layout.readd_chapter_mid_layout);
        }
        addItemType(3, R.layout.readd_chapter_mid_wrap_layout);
        addItemType(4, R.layout.comic_item_comic_reader_jq_failed);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        BookChapter bookChapter = (BookChapter) obj;
        String m1760continue = mu.m1760continue(bookChapter);
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType == 1) {
            ComicImageLayout comicImageLayout = (ComicImageLayout) baseViewHolder.getView(R.id.pv_comic_imagelayout);
            if (w0.m2890static()) {
                BarrageView danmakuView = comicImageLayout.getDanmakuView();
                danmakuView.setTag(m1760continue);
                danmakuView.setChapterId(bookChapter.getChapterId(), bookChapter.getReadPage());
            }
            TextView textView = (TextView) baseViewHolder.getView(R.id.pv_comic_loading_index_tv);
            ProgressBar progressBar = (ProgressBar) baseViewHolder.getView(R.id.pv_comic_loading_pv);
            LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R.id.comic_item_failed_layout);
            textView.setText(String.valueOf(bookChapter.getReadPage()));
            if ("MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY".equals(bookChapter.getImageUrl())) {
                comicImageLayout.getImageView().setImageResource(R.drawable.shape_default_mh_item);
            } else {
                m3619do(false, bookChapter, comicImageLayout, textView, progressBar, linearLayout);
            }
            linearLayout.setOnClickListener(new hz(this, bookChapter, comicImageLayout, textView, progressBar, linearLayout));
        } else if (itemViewType != 2) {
            if (itemViewType == 3) {
                if (this.f9635if != null) {
                    LinearLayout linearLayout2 = (LinearLayout) baseViewHolder.getView(R.id.item_read_ad_layout);
                    linearLayout2.setBackgroundColor(Color.parseColor("#08000000"));
                    linearLayout2.removeAllViews();
                    d.Cdo.f803do.m400do(this.f9633do, linearLayout2, false);
                    baseViewHolder.setGone(R.id.item_read_ad_continue_view, false);
                    baseViewHolder.setGone(R.id.item_read_ad_tips_view, false);
                }
            } else if (itemViewType != 4) {
            } else {
                String imageUrl = bookChapter.getImageUrl();
                if ("MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY".equals(imageUrl)) {
                    baseViewHolder.setGone(R.id.comic_jq_login_layout, true);
                    baseViewHolder.setGone(R.id.comic_jq_failed_layout, false);
                    baseViewHolder.getView(R.id.comic_jq_need_login_btn).setOnClickListener(new iz(this));
                } else if ("MH_UNLOCK_CHAPTER_FALIED_TAG_KEY".equals(imageUrl)) {
                    baseViewHolder.setGone(R.id.comic_jq_login_layout, false);
                    baseViewHolder.setGone(R.id.comic_jq_failed_layout, true);
                    baseViewHolder.getView(R.id.comic_jq_error_refresh_btn).setOnClickListener(new jz(this));
                    baseViewHolder.getView(R.id.comic_jq_error_feed_callback_btn).setOnClickListener(new kz(this));
                }
            }
        } else {
            Cimport cimport = this.f9635if;
            if (cimport != null) {
                if (cimport.m1257try()) {
                    this.f9635if.m1253goto(this.f9633do);
                    if (this.f9635if.f2191try) {
                        baseViewHolder.setVisible(R.id.item_read_ad_tips_txt, false);
                        baseViewHolder.setGone(R.id.item_read_ad_layout, false);
                        baseViewHolder.setGone(R.id.item_read_ad_continue_view, false);
                        baseViewHolder.setGone(R.id.item_read_ad_tips_view, false);
                        return;
                    }
                    TextView textView2 = (TextView) baseViewHolder.getView(R.id.item_read_ad_continue_view);
                    textView2.setText(ze.r(R.string.app_ad_to_read_txt, ""));
                    textView2.setTag(m1760continue + "ContinueReadTView");
                    baseViewHolder.setGone(R.id.item_read_ad_tips_view, false);
                    try {
                        LinearLayout linearLayout3 = (LinearLayout) baseViewHolder.getView(R.id.item_read_ad_layout);
                        String str = this.f9635if.f2177for;
                        if (TextUtils.isEmpty(str)) {
                            str = ze.q(R.string.read_reward_video_desc_txt);
                        }
                        TextView textView3 = new TextView(this.f9633do);
                        textView3.setTextSize(2, 17.0f);
                        textView3.setTextColor(ca.m315do().f542do.getColor());
                        textView3.setText(str);
                        linearLayout3.removeAllViews();
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        int m587catch = eg.m587catch(15.0f);
                        layoutParams.leftMargin = m587catch;
                        layoutParams.rightMargin = m587catch;
                        linearLayout3.addView(textView3, layoutParams);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                TextView textView4 = (TextView) baseViewHolder.getView(R.id.item_read_ad_continue_view);
                textView4.setText(ze.r(R.string.app_ad_to_read_txt, ""));
                textView4.setTag(m1760continue + "ContinueReadTView");
                d.Cdo.f803do.m400do(this.f9633do, (LinearLayout) baseViewHolder.getView(R.id.item_read_ad_layout), false);
                if (baseViewHolder.getItemViewType() == 3) {
                    baseViewHolder.setGone(R.id.item_read_ad_tips_txt, false);
                    baseViewHolder.setGone(R.id.item_read_ad_tips_view, false);
                }
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3619do(boolean z, BookChapter bookChapter, ComicImageLayout comicImageLayout, TextView textView, ProgressBar progressBar, LinearLayout linearLayout) {
        if (z) {
            if (progressBar.getVisibility() != 0) {
                progressBar.setVisibility(0);
            }
            if (linearLayout.getVisibility() != 8) {
                linearLayout.setVisibility(8);
            }
            if (textView.getVisibility() != 8) {
                textView.setVisibility(8);
            }
        } else {
            if (progressBar.getVisibility() != 8) {
                progressBar.setVisibility(8);
            }
            if (comicImageLayout.getVisibility() != 0) {
                comicImageLayout.setVisibility(0);
            }
            if (linearLayout.getVisibility() != 8) {
                linearLayout.setVisibility(8);
            }
            if (textView.getVisibility() != 0) {
                textView.setVisibility(0);
            }
        }
        u.m2658this(z, bookChapter.getImageUrl(), comicImageLayout, new Cdo(this, comicImageLayout, linearLayout, textView, progressBar));
    }
}
