package com.manhua.ui.fragment;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.c60;
import com.apk.ez;
import com.apk.g6;
import com.apk.lv;
import com.apk.ov;
import com.apk.p10;
import com.apk.q10;
import com.apk.r5;
import com.apk.v;
import com.apk.z2;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ad.AdRectanglePopupView;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.ui.widget.PublicLoadingView;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicDetailDirFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public ComicBean f9910do;

    /* renamed from: for  reason: not valid java name */
    public z2 f9911for;

    /* renamed from: if  reason: not valid java name */
    public ez f9912if;
    @BindView(R.id.novel_dirs_count_tv)
    public TextView mDirCountTv;
    @BindView(R.id.comic_novel_dirs_recyclerview)
    public SectionPinListView mDirListView;
    @BindView(R.id.novel_dirs_actionbar_collection)
    public ImageView mDirSortView;
    @BindView(R.id.public_loading_view)
    public PublicLoadingView mLoadingView;

    /* renamed from: new  reason: not valid java name */
    public c60 f9913new;

    /* renamed from: try  reason: not valid java name */
    public final r5 f9914try = new Cdo();

    /* renamed from: com.manhua.ui.fragment.ComicDetailDirFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends r5 {
        public Cdo() {
        }

        @Override // com.apk.r5
        /* renamed from: else */
        public void mo2234else(List<ComicChapterBean> list) {
            if (list != null) {
                try {
                    if (list.size() > 0) {
                        ComicDetailDirFragment.this.mDirCountTv.setText(ze.r(R.string.book_detail_chapter_count_txt, Integer.valueOf(list.size())));
                        if (ComicDetailDirFragment.this.f9912if != null) {
                            ez ezVar = ComicDetailDirFragment.this.f9912if;
                            ezVar.f1147do = list;
                            ezVar.notifyDataSetChanged();
                        }
                        if (ComicDetailDirFragment.this.mLoadingView != null) {
                            ComicDetailDirFragment.this.mLoadingView.m3666for();
                            return;
                        }
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            if (ComicDetailDirFragment.this.f9912if == null || ComicDetailDirFragment.this.f9912if.getCount() != 0 || ComicDetailDirFragment.this.mLoadingView == null) {
                return;
            }
            ComicDetailDirFragment.this.mLoadingView.setError(null);
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_comic_detail_dir;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f9910do = (ComicBean) arguments.getSerializable("comicBean");
        }
        this.f9911for = new z2(getSupportActivity(), this.f9914try);
        ez ezVar = new ez(getSupportActivity(), this.mDirListView);
        this.f9912if = ezVar;
        this.mDirListView.setAdapter((ListAdapter) ezVar);
        this.mDirListView.setOnItemClickListener(new q10(this));
        z2 z2Var = this.f9911for;
        if (z2Var != null) {
            ComicBean comicBean = this.f9910do;
            z2Var.m3140import(comicBean != null ? comicBean.getId() : "", false);
        }
        if (Cfinally.m797else().m823switch()) {
            c60 c60Var = new c60(getSupportActivity(), new p10(this, "dir_insert"), "dir_insert");
            this.f9913new = c60Var;
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
    public void m3623synchronized(int i) {
        try {
            if (i == 0) {
                this.mDirListView.setSelection(0);
            } else {
                this.mDirListView.setSelection(this.f9912if.getCount());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
