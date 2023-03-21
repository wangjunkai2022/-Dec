package com.manhua.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.ez;
import com.apk.f10;
import com.apk.f6;
import com.apk.r5;
import com.apk.z2;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.widget.PublicLoadingView;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicNovelDirActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public ez f9764do;

    /* renamed from: for  reason: not valid java name */
    public z2 f9765for;

    /* renamed from: if  reason: not valid java name */
    public ComicCollectBean f9766if;
    @BindView(R.id.comic_novel_dirs_recyclerview)
    public SectionPinListView mDirListView;
    @BindView(R.id.novel_dirs_actionbar_collection)
    public ImageView mDirSortView;
    @BindView(R.id.novel_dirs_title_txt)
    public TextView mDirTitleTView;
    @BindView(R.id.public_loadingview)
    public PublicLoadingView mLoadingView;

    /* renamed from: new  reason: not valid java name */
    public final r5 f9767new = new Cif();

    /* renamed from: com.manhua.ui.activity.ComicNovelDirActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PublicLoadingView.Cdo {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            ComicNovelDirActivity.this.i();
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicNovelDirActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends r5 {
        public Cif() {
        }

        @Override // com.apk.r5
        /* renamed from: else */
        public void mo2234else(List<ComicChapterBean> list) {
            if (list != null) {
                ez ezVar = ComicNovelDirActivity.this.f9764do;
                if (ezVar != null) {
                    ezVar.f1147do = list;
                    ezVar.notifyDataSetChanged();
                }
                PublicLoadingView publicLoadingView = ComicNovelDirActivity.this.mLoadingView;
                if (publicLoadingView != null) {
                    publicLoadingView.m3666for();
                    return;
                }
                return;
            }
            PublicLoadingView publicLoadingView2 = ComicNovelDirActivity.this.mLoadingView;
            if (publicLoadingView2 != null) {
                publicLoadingView2.setError(null);
            }
        }
    }

    public static void j(Context context, ComicCollectBean comicCollectBean) {
        Intent intent = new Intent(context, ComicNovelDirActivity.class);
        intent.putExtra("collectBean", comicCollectBean);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_novel_dirs_layout;
    }

    public void i() {
        z2 z2Var = this.f9765for;
        if (z2Var != null) {
            ComicCollectBean comicCollectBean = this.f9766if;
            z2Var.m3140import(comicCollectBean != null ? comicCollectBean.getCollectId() : "", false);
        }
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            this.f9766if = (ComicCollectBean) intent.getSerializableExtra("collectBean");
        }
    }

    @Override // com.apk.f6
    public void initData() {
        TextView textView = this.mDirTitleTView;
        ComicCollectBean comicCollectBean = this.f9766if;
        textView.setText(comicCollectBean != null ? comicCollectBean.getName() : "");
        this.f9765for = new z2(this, this.f9767new);
        ez ezVar = new ez(this, this.mDirListView);
        this.f9764do = ezVar;
        this.mDirListView.setAdapter((ListAdapter) ezVar);
        this.mDirListView.setOnItemClickListener(new f10(this));
        i();
    }

    @Override // com.apk.f6
    public void initView() {
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
                this.mDirListView.setSelection(this.f9764do.getCount());
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
