package com.biquge.ebook.app.ui.webread.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.apk.b1;
import com.apk.c1;
import com.apk.da;
import com.apk.hf;
import com.apk.jd;
import com.apk.lv;
import com.apk.n2;
import com.apk.nd;
import com.apk.qd;
import com.apk.u;
import com.apk.v;
import com.apk.w;
import com.apk.x4;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.biquge.ebook.app.ui.webread.ui.WebReadActivity;
import com.biquge.ebook.app.ui.webread.view.WebLoadingView;
import com.biquge.ebook.app.widget.ExpandableTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class WebBookDetailView extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public Activity f7856do;

    /* renamed from: for  reason: not valid java name */
    public WebSiteBean f7857for;

    /* renamed from: if  reason: not valid java name */
    public WebBook f7858if;
    @BindView(R.id.web_search_book_author)
    public TextView mBookAuthor;
    @BindView(R.id.web_search_book_cover)
    public ImageView mBookCover;
    @BindView(R.id.web_search_book_name)
    public TextView mBookName;
    @BindView(R.id.web_search_book_source)
    public TextView mBookSource;
    @BindView(R.id.web_search_book_chapter_rv)
    public RecyclerView mChapterRecyclerView;
    @BindView(R.id.book_detail_intro_text)
    public ExpandableTextView mDescTv;
    @BindView(R.id.web_search_book_save)
    public TextView mShelfBtn;
    @BindView(R.id.web_loading_view)
    public WebLoadingView mWebLoadingView;

    /* renamed from: new  reason: not valid java name */
    public jd f7859new;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDetailView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Cfor f7860do;

        public Cdo(Cfor cfor) {
            this.f7860do = cfor;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            WebBook.ChaptersBean item = this.f7860do.getItem(i);
            if (item != null) {
                WebBookDetailView webBookDetailView = WebBookDetailView.this;
                if (webBookDetailView.f7857for == null) {
                    webBookDetailView.f7857for = webBookDetailView.m3429for();
                }
                nd.m1858for(WebBookDetailView.this.f7857for.getNovelId(), WebBookDetailView.this.f7857for.getChapterUrl(), item.getName(), item.getUrl());
                WebBookDetailView.this.f7857for.setReadChapterUrl(item.getUrl());
                WebBookDetailView webBookDetailView2 = WebBookDetailView.this;
                NewBookReadActivity.c0(webBookDetailView2.f7856do, webBookDetailView2.f7857for);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDetailView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends BaseQuickAdapter<WebBook.ChaptersBean, BaseViewHolder> {
        public Cfor(@Nullable List<WebBook.ChaptersBean> list) {
            super(R.layout.item_web_book_chapter_layout, list);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, WebBook.ChaptersBean chaptersBean) {
            baseViewHolder.setText(R.id.item_web_book_chapter_name_tv, chaptersBean.getName());
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDetailView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends c1<Object> {
        public Cif() {
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            WebSiteBean webSiteBean = WebBookDetailView.this.f7857for;
            if (webSiteBean != null && !da.m421final(webSiteBean.getNovelId())) {
                new qd(WebBookDetailView.this.f7856do, null).m2120break(0, WebBookDetailView.this.f7857for.getChapterUrl(), WebBookDetailView.this.f7857for);
            }
            WebSiteBean webSiteBean2 = WebBookDetailView.this.f7857for;
            if (webSiteBean2 != null && webSiteBean2.isSearchBook()) {
                WebBookDetailView.m3428do(WebBookDetailView.this);
            }
            return super.doInBackground();
        }
    }

    public WebBookDetailView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R.layout.view_web_book_detail_view, this);
        ButterKnife.bind(this);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m3428do(WebBookDetailView webBookDetailView) {
        if (webBookDetailView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", webBookDetailView.getBookId().replace("search_", ""));
                x4.m2962switch(w.m2845extends() + "/api/v1/book/AddHits", jSONObject);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    private String getBookId() {
        WebBook webBook = this.f7858if;
        if (webBook != null) {
            return webBook.getBookId();
        }
        WebSiteBean webSiteBean = this.f7857for;
        return webSiteBean != null ? webSiteBean.getNovelId() : "";
    }

    /* renamed from: for  reason: not valid java name */
    public final WebSiteBean m3429for() {
        WebBook.ChaptersBean chaptersBean;
        if (this.f7857for == null && this.f7858if != null) {
            WebSiteBean webSiteBean = new WebSiteBean();
            this.f7857for = webSiteBean;
            webSiteBean.setNovelId(this.f7858if.getBookId());
            this.f7857for.setTitle(this.f7858if.getName());
            this.f7857for.setAuthor(this.f7858if.getAuthor());
            this.f7857for.setImg(this.f7858if.getImg());
            this.f7857for.setDesc(this.f7858if.getDesc());
            this.f7857for.setFirstChapterUrl(this.f7858if.getFirsturl());
            this.f7857for.setChapterUrl(this.f7858if.getUrl());
            this.f7857for.setSearchBook(true);
            this.f7857for.setLastChapterName(this.f7858if.getLatestName());
            this.f7857for.setLastChapterTime(this.f7858if.getLatestTime());
            List<WebBook.ChaptersBean> chapters = this.f7858if.getChapters();
            if (chapters != null && chapters.size() > 0 && (chaptersBean = chapters.get(0)) != null) {
                this.f7857for.setLastChapterName(chaptersBean.getName());
                this.f7857for.setLastChapterUrl(chaptersBean.getUrl());
            }
        }
        return this.f7857for;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3430if(boolean z) {
        if (z) {
            this.mShelfBtn.setText(ze.q(R.string.txt_open_bookshlef_txt));
        } else {
            this.mShelfBtn.setText(ze.q(R.string.txt_add_bookshlef_txt));
        }
    }

    @OnClick({R.id.web_search_book_back_btn, R.id.web_search_book_save, R.id.web_search_book_read, R.id.web_search_book_chapter_more, R.id.web_search_book_web_url})
    public void menuClick(View view) {
        if (view.getId() == R.id.web_search_book_back_btn) {
            jd jdVar = this.f7859new;
            if (jdVar != null) {
                jdVar.mo1188continue();
            }
        } else if (view.getId() == R.id.web_search_book_save) {
            if (!n2.f(getBookId())) {
                if (this.f7857for == null) {
                    this.f7857for = m3429for();
                }
                Book m1862native = nd.m1862native(this.f7857for);
                if (m1862native != null) {
                    n2.u(m1862native, true);
                    nd.m1861import(this.f7857for.getNovelId(), this.f7857for);
                    m3430if(true);
                    ze.V();
                    v m2734do = v.m2734do();
                    this.f7857for.getNovelId();
                    m1862native.getName();
                    if (m2734do == null) {
                        throw null;
                    }
                    return;
                }
                return;
            }
            Intent intent = new Intent(this.f7856do, MainActivity.class);
            intent.putExtra("type", 1001);
            intent.putExtra("source", hf.BOOK);
            this.f7856do.startActivity(intent);
        } else if (view.getId() == R.id.web_search_book_read) {
            if (this.f7857for == null) {
                this.f7857for = m3429for();
            }
            this.f7857for.setReadChapterUrl(null);
            NewBookReadActivity.c0(this.f7856do, this.f7857for);
        } else if (view.getId() == R.id.web_search_book_chapter_more) {
            if (this.f7857for == null) {
                this.f7857for = m3429for();
            }
            if (this.f7857for != null) {
                getContext();
                lv lvVar = new lv();
                WebBookDirPopView webBookDirPopView = new WebBookDirPopView(getContext(), this.f7857for);
                if (webBookDirPopView instanceof CenterPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (webBookDirPopView instanceof BottomPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (webBookDirPopView instanceof AttachPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (webBookDirPopView instanceof ImageViewerPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                } else if (webBookDirPopView instanceof PositionPopupView) {
                    lvVar.f2917continue = zu.f6266try;
                }
                webBookDirPopView.popupInfo = lvVar;
                webBookDirPopView.show();
            }
        } else if (view.getId() == R.id.web_search_book_web_url) {
            if (this.f7857for == null) {
                this.f7857for = m3429for();
            }
            WebSiteBean webSiteBean = this.f7857for;
            if (webSiteBean != null) {
                String openUrl = webSiteBean.getOpenUrl();
                if (TextUtils.isEmpty(openUrl)) {
                    openUrl = this.f7857for.getChapterUrl();
                }
                Context context = getContext();
                WebReadActivity.j(context, openUrl, false, false, this.f7857for.getTitle() + "-原网页");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    /* renamed from: new  reason: not valid java name */
    public final void m3431new() {
        WebBook webBook = this.f7858if;
        ?? r2 = 0;
        if (webBook != null) {
            u.m2656super(webBook.getImg(), this.mBookCover, R.drawable.shape_default_head_bg, null);
            this.mBookName.setText(this.f7858if.getName());
            this.mBookAuthor.setText(this.f7858if.getAuthor());
            this.mBookSource.setText(n2.m1846while(this.f7858if.getFirsturl()));
            this.mDescTv.setText(Html.fromHtml(this.f7858if.getDesc()));
            r2 = this.f7858if.getChapters();
        } else {
            WebSiteBean webSiteBean = this.f7857for;
            if (webSiteBean != null) {
                u.m2656super(webSiteBean.getImg(), this.mBookCover, R.drawable.shape_default_head_bg, null);
                this.mBookName.setText(this.f7857for.getTitle());
                this.mBookAuthor.setText(this.f7857for.getAuthor());
                this.mBookSource.setText(n2.m1846while(this.f7857for.getChapterUrl()));
                this.mDescTv.setText(Html.fromHtml(this.f7857for.getDesc()));
                r2 = new ArrayList();
                List<ChapterBean> lastList = this.f7857for.getLastList();
                if (lastList != null) {
                    for (ChapterBean chapterBean : lastList) {
                        r2.add(new WebBook.ChaptersBean(chapterBean.getName(), chapterBean.getUrl()));
                    }
                }
            }
        }
        this.mChapterRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mChapterRecyclerView.setHasFixedSize(true);
        this.mChapterRecyclerView.setNestedScrollingEnabled(false);
        ze.m3177new(getContext(), this.mChapterRecyclerView);
        Cfor cfor = new Cfor(r2);
        this.mChapterRecyclerView.setAdapter(cfor);
        cfor.setOnItemClickListener(new Cdo(cfor));
        new b1().m141do(new Cif());
        m3430if(n2.f(getBookId()));
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            try {
                if (this.f7857for == null) {
                    this.f7857for = m3429for();
                }
                if (this.f7857for != null) {
                    m3430if(n2.f(this.f7857for.getNovelId()));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setReloadListener(WebLoadingView.Cif cif) {
        WebLoadingView webLoadingView = this.mWebLoadingView;
        if (webLoadingView != null) {
            webLoadingView.setReloadListener(cif);
        }
    }

    public void setWebCodeCallback(jd jdVar) {
        this.f7859new = jdVar;
    }
}
