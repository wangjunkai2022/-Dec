package com.manhua.ui.view;

import android.app.Activity;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.d20;
import com.apk.g1;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lxj.xpopup.core.DrawerPopupView;
import com.manhua.data.bean.ComicCategory;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicCategoryThemePopupView extends DrawerPopupView {

    /* renamed from: break  reason: not valid java name */
    public final List<ComicCategory> f10109break;

    /* renamed from: catch  reason: not valid java name */
    public final int f10110catch;

    /* renamed from: class  reason: not valid java name */
    public final g1 f10111class;

    /* renamed from: this  reason: not valid java name */
    public RecyclerView f10112this;

    /* renamed from: com.manhua.ui.view.ComicCategoryThemePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends BaseQuickAdapter<ComicCategory, BaseViewHolder> {

        /* renamed from: do  reason: not valid java name */
        public final int f10113do;

        public Cdo(@Nullable List<ComicCategory> list, int i) {
            super(R.layout.item_popup_comic_category_theme, list);
            this.f10113do = i;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NonNull BaseViewHolder baseViewHolder, ComicCategory comicCategory) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_search_recommend_name_txt);
            textView.setText(comicCategory.getName());
            textView.setSelected(baseViewHolder.getLayoutPosition() == this.f10113do);
        }
    }

    public ComicCategoryThemePopupView(@NonNull Activity activity, List<ComicCategory> list, int i, g1 g1Var) {
        super(activity);
        this.f10109break = list;
        this.f10110catch = i;
        this.f10111class = g1Var;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_category_theme_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.theme_lv);
        this.f10112this = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.f10112this.setLayoutManager(new GridLayoutManager(getContext(), 3));
        ze.m3165else(this.f10112this);
        Cdo cdo = new Cdo(this.f10109break, this.f10110catch);
        this.f10112this.setAdapter(cdo);
        cdo.setOnItemClickListener(new d20(this));
    }
}
