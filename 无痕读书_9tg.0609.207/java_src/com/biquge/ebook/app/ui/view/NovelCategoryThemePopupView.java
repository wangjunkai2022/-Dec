package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.ButterKnife;
import com.apk.g1;
import com.apk.zc;
import com.apk.ze;
import com.biquge.ebook.app.bean.NovelCategory;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.core.DrawerPopupView;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class NovelCategoryThemePopupView extends DrawerPopupView {

    /* renamed from: break  reason: not valid java name */
    public final int f7719break;

    /* renamed from: catch  reason: not valid java name */
    public final List<NovelCategory> f7720catch;

    /* renamed from: class  reason: not valid java name */
    public final g1 f7721class;

    /* renamed from: this  reason: not valid java name */
    public RecyclerView f7722this;

    /* renamed from: com.biquge.ebook.app.ui.view.NovelCategoryThemePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends BaseQuickAdapter<NovelCategory, BaseViewHolder> {

        /* renamed from: do  reason: not valid java name */
        public final int f7723do;

        public Cdo(@Nullable List<NovelCategory> list, int i) {
            super(R.layout.item_popup_comic_category_theme, list);
            this.f7723do = i;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, NovelCategory novelCategory) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_search_recommend_name_txt);
            textView.setText(novelCategory.getName());
            textView.setSelected(baseViewHolder.getLayoutPosition() == this.f7723do);
        }
    }

    public NovelCategoryThemePopupView(@NonNull Context context, int i, List<NovelCategory> list, g1 g1Var) {
        super(context);
        this.f7719break = i;
        this.f7720catch = list;
        this.f7721class = g1Var;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_category_theme_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        ButterKnife.bind(this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.theme_lv);
        this.f7722this = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.f7722this.setLayoutManager(new GridLayoutManager(getContext(), 3));
        ze.m3165else(this.f7722this);
        Cdo cdo = new Cdo(this.f7720catch, this.f7719break);
        this.f7722this.setAdapter(cdo);
        cdo.setOnItemClickListener(new zc(this));
    }
}
