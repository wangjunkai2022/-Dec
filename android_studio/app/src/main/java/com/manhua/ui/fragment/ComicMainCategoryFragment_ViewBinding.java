package com.manhua.ui.fragment;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.eg;
import com.apk.i6;
import com.apk.nt;
import com.apk.ze;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicMainCategoryFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicMainCategoryFragment f9988do;

    /* renamed from: if  reason: not valid java name */
    public View f9989if;

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicMainCategoryFragment f9990do;

        public Cdo(ComicMainCategoryFragment_ViewBinding comicMainCategoryFragment_ViewBinding, ComicMainCategoryFragment comicMainCategoryFragment) {
            this.f9990do = comicMainCategoryFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ComicMainCategoryFragment comicMainCategoryFragment = this.f9990do;
            if (comicMainCategoryFragment != null) {
                if (view.getId() != R.id.time_choose) {
                    return;
                }
                i6 supportActivity = comicMainCategoryFragment.getSupportActivity();
                ArrayList arrayList = new ArrayList();
                arrayList.add(comicMainCategoryFragment.i(ze.q(R.string.rank_week_txt), 0));
                arrayList.add(comicMainCategoryFragment.i(ze.q(R.string.rank_month_txt), 1));
                arrayList.add(comicMainCategoryFragment.i(ze.q(R.string.rank_all_txt), 2));
                nt ntVar = new nt(supportActivity, arrayList, comicMainCategoryFragment.f9976throw, false, true);
                ntVar.m1915if(eg.m587catch(100.0f));
                ntVar.m1913do(5);
                ntVar.f3309for = true;
                ntVar.m1914for(comicMainCategoryFragment.time_choose);
                return;
            }
            throw null;
        }
    }

    @UiThread
    public ComicMainCategoryFragment_ViewBinding(ComicMainCategoryFragment comicMainCategoryFragment, View view) {
        this.f9988do = comicMainCategoryFragment;
        comicMainCategoryFragment.categoryRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_category_recyclerview, "field 'categoryRecyclerView'", RecyclerView.class);
        comicMainCategoryFragment.parentCategoryLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.parent_category_layout, "field 'parentCategoryLayout'", FrameLayout.class);
        comicMainCategoryFragment.parentCategoryRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.parent_category_rv_list, "field 'parentCategoryRecyclerView'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.time_choose, "field 'time_choose' and method 'menuClick'");
        comicMainCategoryFragment.time_choose = (TextView) Utils.castView(findRequiredView, R.id.time_choose, "field 'time_choose'", TextView.class);
        this.f9989if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicMainCategoryFragment));
        comicMainCategoryFragment.mSexIView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.category_sex_indicatorview, "field 'mSexIView'", ScrollIndicatorView.class);
        comicMainCategoryFragment.mAreaIView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.header_ranking_area_indicator, "field 'mAreaIView'", ScrollIndicatorView.class);
        comicMainCategoryFragment.ptrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'ptrClassicFrameLayout'", PtrClassicFrameLayout.class);
        comicMainCategoryFragment.dataRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'dataRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicMainCategoryFragment comicMainCategoryFragment = this.f9988do;
        if (comicMainCategoryFragment != null) {
            this.f9988do = null;
            comicMainCategoryFragment.categoryRecyclerView = null;
            comicMainCategoryFragment.parentCategoryLayout = null;
            comicMainCategoryFragment.parentCategoryRecyclerView = null;
            comicMainCategoryFragment.time_choose = null;
            comicMainCategoryFragment.mSexIView = null;
            comicMainCategoryFragment.mAreaIView = null;
            comicMainCategoryFragment.ptrClassicFrameLayout = null;
            comicMainCategoryFragment.dataRecyclerView = null;
            this.f9989if.setOnClickListener(null);
            this.f9989if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
