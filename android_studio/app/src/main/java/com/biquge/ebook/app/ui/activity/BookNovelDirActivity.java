package com.biquge.ebook.app.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.f6;
import com.apk.k;
import com.apk.u5;
import com.apk.v3;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.manhua.ui.widget.PublicLoadingView;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookNovelDirActivity extends f6 {

    /* renamed from: case  reason: not valid java name */
    public final u5 f6504case = new Cif();

    /* renamed from: do  reason: not valid java name */
    public k f6505do;

    /* renamed from: for  reason: not valid java name */
    public CollectBook f6506for;

    /* renamed from: if  reason: not valid java name */
    public Book f6507if;
    @BindView(R.id.comic_novel_dirs_recyclerview)
    public SectionPinListView mDirListView;
    @BindView(R.id.novel_dirs_actionbar_collection)
    public ImageView mDirSortView;
    @BindView(R.id.novel_dirs_title_txt)
    public TextView mDirTitleTView;
    @BindView(R.id.public_loadingview)
    public PublicLoadingView mLoadingView;

    /* renamed from: new  reason: not valid java name */
    public String f6508new;

    /* renamed from: try  reason: not valid java name */
    public v3 f6509try;

    /* renamed from: com.biquge.ebook.app.ui.activity.BookNovelDirActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PublicLoadingView.Cdo {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            BookNovelDirActivity.this.i();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookNovelDirActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends u5 {
        public Cif() {
        }

        @Override // com.apk.u5
        /* renamed from: goto */
        public void mo2678goto(List<ChapterBean> list) {
            if (list != null) {
                PublicLoadingView publicLoadingView = BookNovelDirActivity.this.mLoadingView;
                if (publicLoadingView != null) {
                    publicLoadingView.m3666for();
                }
                k kVar = BookNovelDirActivity.this.f6505do;
                if (kVar != null) {
                    kVar.m1400for(list);
                    return;
                }
                return;
            }
            PublicLoadingView publicLoadingView2 = BookNovelDirActivity.this.mLoadingView;
            if (publicLoadingView2 != null) {
                publicLoadingView2.setError(null);
            }
        }
    }

    public static void j(Activity activity, CollectBook collectBook, String str) {
        Intent intent = new Intent(activity, BookNovelDirActivity.class);
        intent.putExtra("collectBook", collectBook);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("readChapterId", str);
        }
        activity.startActivity(intent);
        activity.overridePendingTransition(R.anim.in_from_up, R.anim.in_to_down);
    }

    @Override // com.apk.f6, android.app.Activity
    public void finish() {
        super.finish();
        if (this.f6506for != null) {
            overridePendingTransition(R.anim.in_to_down, R.anim.out_to_down);
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_novel_dirs_layout;
    }

    public void i() {
        v3 v3Var = this.f6509try;
        if (v3Var != null) {
            Book book = this.f6507if;
            String id = book != null ? book.getId() : "";
            if (TextUtils.isEmpty(id)) {
                CollectBook collectBook = this.f6506for;
                id = collectBook != null ? collectBook.getCollectId() : "";
            }
            v3Var.m2770static(id, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007a A[Catch: Exception -> 0x0082, TRY_LEAVE, TryCatch #2 {Exception -> 0x0082, blocks: (B:13:0x003f, B:15:0x004b, B:29:0x007a, B:27:0x0074), top: B:39:0x003f }] */
    @Override // com.apk.f6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void initData() {
        /*
            r5 = this;
            android.widget.TextView r0 = r5.mDirTitleTView
            com.biquge.ebook.app.bean.Book r1 = r5.f6507if
            java.lang.String r2 = ""
            if (r1 == 0) goto Ld
            java.lang.String r1 = r1.getName()
            goto Le
        Ld:
            r1 = r2
        Le:
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L1d
            com.biquge.ebook.app.bean.CollectBook r1 = r5.f6506for
            if (r1 == 0) goto L1c
            java.lang.String r2 = r1.getName()
        L1c:
            r1 = r2
        L1d:
            r0.setText(r1)
            com.apk.v3 r0 = new com.apk.v3
            com.apk.u5 r1 = r5.f6504case
            r0.<init>(r5, r1)
            r5.f6509try = r0
            com.apk.k r0 = new com.apk.k
            r0.<init>(r5)
            r5.f6505do = r0
            com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView r1 = r5.mDirListView
            r1.setAdapter(r0)
            com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView r0 = r5.mDirListView
            com.apk.n7 r1 = new com.apk.n7
            r1.<init>(r5)
            r0.setOnItemClickListener(r1)
            com.apk.k r0 = r5.f6505do     // Catch: java.lang.Exception -> L82
            java.lang.String r1 = r5.f6508new     // Catch: java.lang.Exception -> L82
            r2 = 0
            r0.m1402new(r1, r2)     // Catch: java.lang.Exception -> L82
            com.apk.k r0 = r5.f6505do     // Catch: java.lang.Exception -> L82
            if (r0 == 0) goto L86
            int r0 = r0.getCount()     // Catch: java.lang.Exception -> L82
            if (r0 <= 0) goto L86
            com.apk.k r0 = r5.f6505do     // Catch: java.lang.Exception -> L73
            int r0 = r0.getCount()     // Catch: java.lang.Exception -> L73
            r1 = 0
        L58:
            if (r2 >= r0) goto L78
            com.apk.k r3 = r5.f6505do     // Catch: java.lang.Exception -> L70
            com.biquge.ebook.app.bean.ChapterBean r3 = r3.m1401if(r2)     // Catch: java.lang.Exception -> L70
            java.lang.String r3 = r3.getOid()     // Catch: java.lang.Exception -> L70
            java.lang.String r4 = r5.f6508new     // Catch: java.lang.Exception -> L70
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L70
            if (r3 == 0) goto L6d
            r1 = r2
        L6d:
            int r2 = r2 + 1
            goto L58
        L70:
            r0 = move-exception
            r2 = r1
            goto L74
        L73:
            r0 = move-exception
        L74:
            r0.printStackTrace()     // Catch: java.lang.Exception -> L82
            r1 = r2
        L78:
            if (r1 <= 0) goto L86
            com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView r0 = r5.mDirListView     // Catch: java.lang.Exception -> L82
            int r1 = r1 + (-1)
            r0.setSelection(r1)     // Catch: java.lang.Exception -> L82
            goto L86
        L82:
            r0 = move-exception
            r0.printStackTrace()
        L86:
            r5.i()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.activity.BookNovelDirActivity.initData():void");
    }

    @Override // com.apk.f6
    public void initView() {
        Intent intent = getIntent();
        if (intent != null) {
            if (intent.hasExtra("book")) {
                this.f6507if = (Book) intent.getSerializableExtra("book");
            }
            if (intent.hasExtra("collectBook")) {
                this.f6506for = (CollectBook) intent.getSerializableExtra("collectBook");
            }
            if (intent.hasExtra("readChapterId")) {
                this.f6508new = intent.getStringExtra("readChapterId");
            }
        }
        this.mLoadingView.setReloadListener(new Cdo());
        this.mDirSortView.setTag("bottom");
    }

    @Override // com.apk.f6
    public boolean isDarkFont() {
        return true;
    }

    public void k(int i) {
        try {
            if (i == 0) {
                this.mDirListView.setSelection(0);
            } else {
                this.mDirListView.setSelection(this.f6505do.getCount());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnClick({R.id.novel_dirs_back_image, R.id.novel_dirs_actionbar_collection})
    public void menuClick(View view) {
        if (view.getId() == R.id.novel_dirs_back_image) {
            onBackPressed();
        } else if (view.getId() == R.id.novel_dirs_actionbar_collection) {
            if (this.mDirSortView.getTag().equals("top")) {
                k(0);
                this.mDirSortView.setImageResource(R.drawable.reader_category);
                this.mDirSortView.setTag("bottom");
            } else if (this.mDirSortView.getTag().equals("bottom")) {
                k(1);
                this.mDirSortView.setImageResource(R.drawable.reader_category_asc);
                this.mDirSortView.setTag("top");
            }
        }
    }
}
