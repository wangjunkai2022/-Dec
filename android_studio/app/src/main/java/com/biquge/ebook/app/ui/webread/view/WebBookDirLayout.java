package com.biquge.ebook.app.ui.webread.view;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.apk.fe;
import com.apk.ge;
import com.apk.h1;
import com.apk.he;
import com.apk.k;
import com.apk.lv;
import com.apk.md;
import com.apk.qd;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.webread.WebChapterBatchBean;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.lxj.xpopup.impl.CenterListPopupView;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebBookDirLayout extends FrameLayout implements View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public qd f7874break;

    /* renamed from: case  reason: not valid java name */
    public WebSiteBean f7875case;

    /* renamed from: catch  reason: not valid java name */
    public final md f7876catch;

    /* renamed from: do  reason: not valid java name */
    public k f7877do;

    /* renamed from: else  reason: not valid java name */
    public int f7878else;

    /* renamed from: for  reason: not valid java name */
    public String f7879for;

    /* renamed from: goto  reason: not valid java name */
    public List<WebBook.ChaptersBean> f7880goto;

    /* renamed from: if  reason: not valid java name */
    public WebChapterBatchBean f7881if;
    @BindView(R.id.batch_chapter_layout)
    public LinearLayout mBatchChapterLayout;
    @BindView(R.id.batch_chapter_list_btn)
    public TextView mBatchChapterListBtn;
    @BindView(R.id.batch_chapter_next_btn)
    public TextView mBatchChapterNextBtn;
    @BindView(R.id.batch_chapter_pre_btn)
    public TextView mBatchChapterPreBtn;
    @BindView(R.id.web_site_cate_rv)
    public SectionPinListView mDirListView;
    @BindView(R.id.novel_dirs_actionbar_collection)
    public ImageView mDirSortView;
    @BindView(R.id.web_book_dir_loadingview)
    public WebLoadingView mLoadingView;
    @BindView(R.id.web_site_cate_title_tv)
    public TextView mTitleTv;

    /* renamed from: new  reason: not valid java name */
    public String f7882new;

    /* renamed from: this  reason: not valid java name */
    public h1 f7883this;

    /* renamed from: try  reason: not valid java name */
    public String f7884try;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDirLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends md {
        public Cdo() {
        }

        @Override // com.apk.md
        /* renamed from: do */
        public void mo1690do(int i, WebChapterBatchBean webChapterBatchBean, List<ChapterBean> list) {
            try {
                WebBookDirLayout.this.mLoadingView.m3452if();
                try {
                    WebBookDirLayout.this.f7877do.m1400for(list);
                    if (!TextUtils.isEmpty(WebBookDirLayout.this.f7884try)) {
                        Iterator<ChapterBean> it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ChapterBean next = it.next();
                            if (WebBookDirLayout.this.f7884try.replace("正文", "").trim().equals(next.getName().replace("正文", "").trim())) {
                                WebBookDirLayout.this.f7882new = next.getOid();
                                break;
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(WebBookDirLayout.this.f7882new)) {
                        WebBookDirLayout.this.m3435new(WebBookDirLayout.this.f7882new);
                    }
                    if (webChapterBatchBean != null) {
                        WebBookDirLayout.this.f7881if = webChapterBatchBean;
                        boolean z = !TextUtils.isEmpty(WebBookDirLayout.this.f7881if.getPreUrl());
                        boolean z2 = !TextUtils.isEmpty(WebBookDirLayout.this.f7881if.getNextUrl());
                        WebBookDirLayout.this.mBatchChapterPreBtn.setEnabled(z);
                        WebBookDirLayout.this.mBatchChapterNextBtn.setEnabled(z2);
                        if (z || z2) {
                            WebBookDirLayout.m3432do(WebBookDirLayout.this);
                        }
                        if (i == 1) {
                            if (WebBookDirLayout.this.f7878else >= 0) {
                                WebBookDirLayout webBookDirLayout = WebBookDirLayout.this;
                                webBookDirLayout.f7878else--;
                                WebBookDirLayout.this.mBatchChapterListBtn.setText(WebBookDirLayout.this.f7880goto.get(WebBookDirLayout.this.f7878else).getName());
                            }
                        } else if (i == 2 && WebBookDirLayout.this.f7878else < WebBookDirLayout.this.f7880goto.size() - 1) {
                            WebBookDirLayout.this.f7878else++;
                            WebBookDirLayout.this.mBatchChapterListBtn.setText(WebBookDirLayout.this.f7880goto.get(WebBookDirLayout.this.f7878else).getName());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (WebBookDirLayout.this.f7883this != null) {
                    WebBookDirLayout.this.f7883this.mo1052new(WebBookDirLayout.this.f7877do.f2437do, WebBookDirLayout.this.f7882new);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public WebBookDirLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7876catch = new Cdo();
        LayoutInflater.from(getContext()).inflate(R.layout.view_web_book_dir_layout, this);
        ButterKnife.bind(this);
        this.mDirSortView.setTag("bottom");
        findViewById(R.id.novel_dirs_actionbar_collection).setOnClickListener(this);
        findViewById(R.id.web_site_cate_back_btn).setOnClickListener(this);
        this.mLoadingView.setReloadListener(new fe(this));
        this.f7874break = new qd((Activity) getContext(), this.f7876catch);
        k kVar = new k(getContext());
        this.f7877do = kVar;
        this.mDirListView.setAdapter((ListAdapter) kVar);
        this.mDirListView.setOnItemClickListener(new ge(this));
    }

    /* renamed from: do  reason: not valid java name */
    public static void m3432do(WebBookDirLayout webBookDirLayout) {
        if (webBookDirLayout != null) {
            try {
                List<WebBook.ChaptersBean> batchOptionList = webBookDirLayout.f7875case.getBatchOptionList();
                webBookDirLayout.f7880goto = batchOptionList;
                if (batchOptionList == null || batchOptionList.size() <= 0) {
                    return;
                }
                if (webBookDirLayout.f7878else == 0) {
                    webBookDirLayout.mBatchChapterListBtn.setText(webBookDirLayout.f7880goto.get(webBookDirLayout.f7878else).getName());
                }
                webBookDirLayout.mBatchChapterLayout.setVisibility(0);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3433for(int i) {
        qd qdVar = this.f7874break;
        if (qdVar != null) {
            qdVar.m2120break(i, this.f7879for, this.f7875case);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m3434if(WebSiteBean webSiteBean, String str, String str2, h1 h1Var) {
        if (webSiteBean == null) {
            return;
        }
        this.f7875case = webSiteBean;
        this.f7882new = str;
        this.f7884try = str2;
        this.f7883this = h1Var;
        this.f7879for = webSiteBean.getChapterUrl();
        this.mTitleTv.setText(webSiteBean.getTitle());
        if (h1Var == null) {
            findViewById(R.id.web_site_cate_back_btn).setVisibility(8);
        }
        setVisibility(0);
        m3433for(0);
    }

    @OnClick({R.id.batch_chapter_pre_btn, R.id.batch_chapter_list_btn, R.id.batch_chapter_next_btn})
    public void menuClick(View view) {
        WebChapterBatchBean webChapterBatchBean;
        if (view.getId() == R.id.batch_chapter_pre_btn) {
            WebChapterBatchBean webChapterBatchBean2 = this.f7881if;
            if (webChapterBatchBean2 != null) {
                String preUrl = webChapterBatchBean2.getPreUrl();
                if (TextUtils.isEmpty(preUrl)) {
                    return;
                }
                this.f7879for = preUrl;
                m3433for(1);
            }
        } else if (view.getId() == R.id.batch_chapter_list_btn) {
            String[] strArr = new String[this.f7880goto.size()];
            for (int i = 0; i < this.f7880goto.size(); i++) {
                strArr[i] = this.f7880goto.get(i).getName();
            }
            Context context = getContext();
            lv lvVar = new lv();
            String q = ze.q(R.string.please_select_bt_txt);
            int i2 = this.f7878else;
            he heVar = new he(this);
            lvVar.f2917continue = zu.f6266try;
            CenterListPopupView centerListPopupView = new CenterListPopupView(context, R.layout.web_trans_batch_chapter_list, R.layout.web_trans_batch_adapter_item_layout);
            centerListPopupView.f9562for = q;
            centerListPopupView.f9564new = strArr;
            centerListPopupView.f9565try = null;
            centerListPopupView.f9561else = i2;
            centerListPopupView.f9559case = heVar;
            centerListPopupView.popupInfo = lvVar;
            centerListPopupView.show();
        } else if (view.getId() == R.id.batch_chapter_next_btn && (webChapterBatchBean = this.f7881if) != null) {
            String nextUrl = webChapterBatchBean.getNextUrl();
            if (TextUtils.isEmpty(nextUrl)) {
                return;
            }
            this.f7879for = nextUrl;
            m3433for(2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m3435new(java.lang.String r5) {
        /*
            r4 = this;
            r4.f7882new = r5
            com.apk.k r0 = r4.f7877do
            if (r0 == 0) goto L42
            int r0 = r0.getCount()
            if (r0 <= 0) goto L42
            com.apk.k r0 = r4.f7877do
            r1 = 0
            r0.m1402new(r5, r1)
            com.apk.k r5 = r4.f7877do     // Catch: java.lang.Exception -> L34
            int r5 = r5.getCount()     // Catch: java.lang.Exception -> L34
            r0 = 0
        L19:
            if (r1 >= r5) goto L39
            com.apk.k r2 = r4.f7877do     // Catch: java.lang.Exception -> L31
            com.biquge.ebook.app.bean.ChapterBean r2 = r2.m1401if(r1)     // Catch: java.lang.Exception -> L31
            java.lang.String r2 = r2.getOid()     // Catch: java.lang.Exception -> L31
            java.lang.String r3 = r4.f7882new     // Catch: java.lang.Exception -> L31
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> L31
            if (r2 == 0) goto L2e
            r0 = r1
        L2e:
            int r1 = r1 + 1
            goto L19
        L31:
            r5 = move-exception
            r1 = r0
            goto L35
        L34:
            r5 = move-exception
        L35:
            r5.printStackTrace()
            r0 = r1
        L39:
            if (r0 <= 0) goto L42
            com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView r5 = r4.mDirListView
            int r0 = r0 + (-1)
            r5.setSelection(r0)
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.webread.view.WebBookDirLayout.m3435new(java.lang.String):void");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.web_site_cate_back_btn) {
            h1 h1Var = this.f7883this;
            if (h1Var != null) {
                h1Var.mo1049do();
            }
        } else if (view.getId() == R.id.novel_dirs_actionbar_collection) {
            if (this.mDirSortView.getTag().equals("top")) {
                setListSelection(0);
                this.mDirSortView.setImageResource(R.drawable.reader_category);
                this.mDirSortView.setTag("bottom");
            } else if (this.mDirSortView.getTag().equals("bottom")) {
                setListSelection(1);
                this.mDirSortView.setImageResource(R.drawable.reader_category_asc);
                this.mDirSortView.setTag("top");
            }
        }
    }

    public void setListSelection(int i) {
        try {
            if (i == 0) {
                this.mDirListView.setSelection(0);
            } else {
                this.mDirListView.setSelection(this.f7877do.getCount() - 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
