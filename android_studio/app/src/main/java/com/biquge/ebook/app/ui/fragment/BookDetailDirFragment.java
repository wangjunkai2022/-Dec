package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.c60;
import com.apk.g6;
import com.apk.k;
import com.apk.lv;
import com.apk.ov;
import com.apk.u5;
import com.apk.ua;
import com.apk.v;
import com.apk.v3;
import com.apk.va;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ad.AdRectanglePopupView;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.manhua.ui.widget.PublicLoadingView;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookDetailDirFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public Book f7207do;

    /* renamed from: for  reason: not valid java name */
    public v3 f7208for;

    /* renamed from: if  reason: not valid java name */
    public k f7209if;
    @BindView(R.id.novel_dirs_count_tv)
    public TextView mDirCountTv;
    @BindView(R.id.comic_novel_dirs_recyclerview)
    public SectionPinListView mDirListView;
    @BindView(R.id.novel_dirs_actionbar_collection)
    public ImageView mDirSortView;
    @BindView(R.id.public_loading_view)
    public PublicLoadingView mLoadingView;

    /* renamed from: new  reason: not valid java name */
    public c60 f7210new;

    /* renamed from: try  reason: not valid java name */
    public final u5 f7211try = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDetailDirFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {
        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: goto */
        public void mo2678goto(List<ChapterBean> list) {
            try {
                if (list != null) {
                    BookDetailDirFragment.this.mDirCountTv.setText(ze.r(R.string.book_detail_chapter_count_txt, Integer.valueOf(list.size())));
                    if (BookDetailDirFragment.this.f7209if != null) {
                        BookDetailDirFragment.this.f7209if.m1400for(list);
                    }
                    if (BookDetailDirFragment.this.mLoadingView != null) {
                        BookDetailDirFragment.this.mLoadingView.m3666for();
                    }
                } else if (BookDetailDirFragment.this.f7209if == null || BookDetailDirFragment.this.f7209if.getCount() != 0 || BookDetailDirFragment.this.mLoadingView == null) {
                } else {
                    BookDetailDirFragment.this.mLoadingView.setError(null);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_detail_dir;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7207do = (Book) arguments.getSerializable("book");
        }
        this.f7208for = new v3(getSupportActivity(), this.f7211try);
        k kVar = new k(getSupportActivity());
        this.f7209if = kVar;
        this.mDirListView.setAdapter((ListAdapter) kVar);
        this.mDirListView.setOnItemClickListener(new va(this));
        v3 v3Var = this.f7208for;
        if (v3Var != null) {
            Book book = this.f7207do;
            v3Var.m2770static(book != null ? book.getId() : "", false);
        }
        if (Cfinally.m797else().m823switch()) {
            c60 c60Var = new c60(getSupportActivity(), new ua(this, "dir_insert"), "dir_insert");
            this.f7210new = c60Var;
            c60Var.m314try();
            if (v.m2734do() == null) {
                throw null;
            }
        } else if (Cfinally.m797else().m827throws()) {
            getSupportActivity();
            lv lvVar = new lv();
            lvVar.f2940this = ov.NoAnimation;
            Boolean bool = Boolean.FALSE;
            lvVar.f2924for = bool;
            lvVar.f2926if = bool;
            AdRectanglePopupView adRectanglePopupView = new AdRectanglePopupView(getSupportActivity());
            lvVar.f2917continue = zu.f6266try;
            adRectanglePopupView.popupInfo = lvVar;
            adRectanglePopupView.show();
        }
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        this.mDirSortView.setTag("bottom");
        this.mDirListView.setNestedScrollingEnabled(true);
    }

    /* renamed from: synchronized  reason: not valid java name */
    public void m3364synchronized(int i) {
        try {
            if (i == 0) {
                this.mDirListView.setSelection(0);
            } else {
                this.mDirListView.setSelection(this.f7209if.getCount());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
