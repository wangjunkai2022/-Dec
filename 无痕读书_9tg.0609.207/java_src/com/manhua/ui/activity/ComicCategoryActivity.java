package com.manhua.ui.activity;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cfinally;
import com.apk.b40;
import com.apk.bg;
import com.apk.eg;
import com.apk.f6;
import com.apk.lv;
import com.apk.nz;
import com.apk.pv;
import com.apk.q0;
import com.apk.r5;
import com.apk.ss;
import com.apk.ts;
import com.apk.w;
import com.apk.x00;
import com.apk.y00;
import com.apk.z2;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.widget.ScrollHeaderLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.manhua.adapter.ComicRankListAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCategory;
import com.manhua.ui.view.ComicCategoryThemePopupView;
import com.manhua.ui.widget.PageRecyclerView;
import com.manhua.ui.widget.PublicLoadingView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ComicCategoryActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: final  reason: not valid java name */
    public static final int f9652final = eg.m587catch(55.0f);

    /* renamed from: super  reason: not valid java name */
    public static String[] f9653super;

    /* renamed from: throw  reason: not valid java name */
    public static String[] f9654throw;

    /* renamed from: break  reason: not valid java name */
    public boolean f9655break;

    /* renamed from: case  reason: not valid java name */
    public ComicRankListAdapter f9656case;

    /* renamed from: do  reason: not valid java name */
    public ScrollHeaderLayout f9660do;

    /* renamed from: else  reason: not valid java name */
    public z2 f9661else;

    /* renamed from: for  reason: not valid java name */
    public ScrollIndicatorView f9662for;

    /* renamed from: goto  reason: not valid java name */
    public List<ComicCategory> f9663goto;

    /* renamed from: if  reason: not valid java name */
    public ScrollIndicatorView f9664if;
    @BindView(R.id.comic_category_header_txt)
    public TextView mHeaderTxt;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.public_loadingview)
    public PublicLoadingView mPublicLoadingView;
    @BindView(R.id.comic_category_recyclerview)
    public PageRecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public ScrollIndicatorView f9665new;

    /* renamed from: this  reason: not valid java name */
    public boolean f9666this;

    /* renamed from: try  reason: not valid java name */
    public int f9667try = 1;

    /* renamed from: catch  reason: not valid java name */
    public final r5 f9657catch = new Ccase();

    /* renamed from: class  reason: not valid java name */
    public final b40.Cnew f9658class = new Celse();

    /* renamed from: const  reason: not valid java name */
    public final b40.Cnew f9659const = new Cgoto();

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends r5 {
        public Ccase() {
        }

        @Override // com.apk.r5
        /* renamed from: case */
        public void mo2229case(List<ComicCategory> list) {
            ComicCategoryActivity.this.f9663goto = list;
            if (list != null && list.size() > 0) {
                int size = list.size();
                ComicCategoryActivity.f9653super = new String[size];
                ComicCategoryActivity.f9654throw = new String[size];
                for (int i = 0; i < size; i++) {
                    ComicCategory comicCategory = list.get(i);
                    ComicCategoryActivity.f9653super[i] = comicCategory.getName();
                    ComicCategoryActivity.f9654throw[i] = comicCategory.getCId();
                }
                ComicCategoryActivity comicCategoryActivity = ComicCategoryActivity.this;
                comicCategoryActivity.l(comicCategoryActivity.f9662for, ComicCategoryActivity.f9653super, comicCategoryActivity.f9659const, ComicCategoryActivity.f9652final);
                ComicCategoryActivity.this.f9662for.setCurrentItem(0);
                ComicCategoryActivity.this.mPublicLoadingView.m3666for();
                ComicCategoryActivity comicCategoryActivity2 = ComicCategoryActivity.this;
                comicCategoryActivity2.mPtrClassicFrameLayout.f4550do = (byte) 1;
                ComicCategoryActivity.k(comicCategoryActivity2, true);
                return;
            }
            ComicCategoryActivity.this.mPublicLoadingView.setError(null);
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            ComicCategoryActivity.this.mPublicLoadingView.m3666for();
            ComicCategoryActivity.k(ComicCategoryActivity.this, false);
            if (i == 1) {
                if (ComicCategoryActivity.this.f9655break && list != null && list.size() > 0) {
                    ComicBean comicBean = new ComicBean();
                    comicBean.setItemType(2);
                    if (list.size() > 3) {
                        list.add(3, comicBean);
                    } else {
                        list.add(comicBean);
                    }
                }
                ComicCategoryActivity.this.m(true, list, z);
                return;
            }
            ComicCategoryActivity.this.m(false, list, z);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PublicLoadingView.Cdo {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            ComicCategoryActivity comicCategoryActivity = ComicCategoryActivity.this;
            z2 z2Var = comicCategoryActivity.f9661else;
            if (z2Var != null) {
                z2Var.m3145while(false, comicCategoryActivity.f9664if.getCurrentItem() == 0);
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements b40.Cnew {
        public Celse() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            ComicCategoryActivity.this.mPublicLoadingView.m3667if();
            z2 z2Var = ComicCategoryActivity.this.f9661else;
            if (z2Var != null) {
                z2Var.m3145while(false, i == 0);
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends RecyclerView.OnScrollListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LinearLayoutManager f9671do;

        public Cfor(LinearLayoutManager linearLayoutManager) {
            this.f9671do = linearLayoutManager;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            if (this.f9671do.findFirstVisibleItemPosition() == 0) {
                if (ComicCategoryActivity.this.mHeaderTxt.getVisibility() != 8) {
                    ComicCategoryActivity.this.mHeaderTxt.setVisibility(8);
                }
            } else if (ComicCategoryActivity.this.mHeaderTxt.getVisibility() != 0) {
                ComicCategoryActivity comicCategoryActivity = ComicCategoryActivity.this;
                TextView textView = comicCategoryActivity.mHeaderTxt;
                int currentItem = comicCategoryActivity.f9664if.getCurrentItem();
                int currentItem2 = comicCategoryActivity.f9662for.getCurrentItem();
                int currentItem3 = comicCategoryActivity.f9665new.getCurrentItem();
                String str = q0.f3776goto[currentItem];
                String str2 = ComicCategoryActivity.f9653super[currentItem2];
                String str3 = q0.f3778new[currentItem3];
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append("  ->  ");
                stringBuffer.append(str2);
                stringBuffer.append("  ->  ");
                stringBuffer.append(str3);
                textView.setText(stringBuffer.toString());
                ComicCategoryActivity.this.mHeaderTxt.setVisibility(0);
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements b40.Cnew {
        public Cgoto() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            ComicCategoryActivity.this.mPublicLoadingView.m3667if();
            ComicCategoryActivity.i(ComicCategoryActivity.this);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ts {
        public Cif() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ComicCategoryActivity comicCategoryActivity = ComicCategoryActivity.this;
            if (!comicCategoryActivity.f9666this) {
                ComicCategoryActivity.i(comicCategoryActivity);
            }
            ComicCategoryActivity.this.f9666this = false;
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            ComicCategoryActivity comicCategoryActivity = ComicCategoryActivity.this;
            return !comicCategoryActivity.f9660do.f8118do && eg.m586case(comicCategoryActivity.mRecyclerView);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends bg {
        public Cnew() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            ComicCategoryActivity.j(ComicCategoryActivity.this);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements BaseQuickAdapter.RequestLoadMoreListener {
        public Ctry() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ComicCategoryActivity comicCategoryActivity = ComicCategoryActivity.this;
            if (comicCategoryActivity.f9661else != null) {
                try {
                    comicCategoryActivity.f9661else.m3142public(w.m2853new(ComicCategoryActivity.f9654throw[comicCategoryActivity.f9662for.getCurrentItem()], q0.f3780try[comicCategoryActivity.f9665new.getCurrentItem()], comicCategoryActivity.f9667try), comicCategoryActivity.f9667try);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void i(ComicCategoryActivity comicCategoryActivity) {
        if (comicCategoryActivity.f9661else != null) {
            try {
                String str = f9654throw[comicCategoryActivity.f9662for.getCurrentItem()];
                String str2 = q0.f3780try[comicCategoryActivity.f9665new.getCurrentItem()];
                comicCategoryActivity.f9667try = 1;
                comicCategoryActivity.f9661else.m3142public(w.m2853new(str, str2, 1), comicCategoryActivity.f9667try);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void j(ComicCategoryActivity comicCategoryActivity) {
        if (comicCategoryActivity != null) {
            lv lvVar = new lv();
            lvVar.f2929native = pv.Right;
            ComicCategoryThemePopupView comicCategoryThemePopupView = new ComicCategoryThemePopupView(comicCategoryActivity, comicCategoryActivity.f9663goto, comicCategoryActivity.f9662for.getCurrentItem(), new y00(comicCategoryActivity));
            if (comicCategoryThemePopupView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (comicCategoryThemePopupView instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (comicCategoryThemePopupView instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (comicCategoryThemePopupView instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (comicCategoryThemePopupView instanceof PositionPopupView) {
                lvVar.f2917continue = zu.f6266try;
            }
            comicCategoryThemePopupView.popupInfo = lvVar;
            comicCategoryThemePopupView.show();
            return;
        }
        throw null;
    }

    public static void k(ComicCategoryActivity comicCategoryActivity, boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = comicCategoryActivity.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new x00(comicCategoryActivity));
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = comicCategoryActivity.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_activity_category;
    }

    @Override // com.apk.f6
    public void initData() {
        JSONObject jSONObject;
        this.f9661else = new z2(this, this.f9657catch);
        if (Cfinally.m797else().m818public()) {
            this.f9655break = true;
            jSONObject = Cfinally.m797else().h;
        } else {
            jSONObject = null;
        }
        ComicRankListAdapter comicRankListAdapter = new ComicRankListAdapter(this, jSONObject, "categorylist", true, true);
        this.f9656case = comicRankListAdapter;
        this.mRecyclerView.setAdapter(comicRankListAdapter);
        ScrollHeaderLayout scrollHeaderLayout = (ScrollHeaderLayout) View.inflate(this, R.layout.comic_header_category_layout, null);
        this.f9660do = scrollHeaderLayout;
        this.f9656case.addHeaderView(scrollHeaderLayout);
        ScrollHeaderLayout scrollHeaderLayout2 = this.f9660do;
        ScrollIndicatorView scrollIndicatorView = (ScrollIndicatorView) scrollHeaderLayout2.findViewById(R.id.header_ranking_channel_indicator);
        this.f9664if = scrollIndicatorView;
        scrollIndicatorView.setSplitAuto(false);
        ScrollIndicatorView scrollIndicatorView2 = (ScrollIndicatorView) scrollHeaderLayout2.findViewById(R.id.header_ranking_rank_indicator);
        this.f9662for = scrollIndicatorView2;
        scrollIndicatorView2.setSplitAuto(false);
        ScrollIndicatorView scrollIndicatorView3 = (ScrollIndicatorView) scrollHeaderLayout2.findViewById(R.id.header_ranking_category_indicator);
        this.f9665new = scrollIndicatorView3;
        scrollIndicatorView3.setSplitAuto(false);
        l(this.f9664if, q0.f3776goto, this.f9658class, f9652final);
        l(this.f9665new, q0.f3778new, this.f9659const, f9652final);
        z2 z2Var = this.f9661else;
        if (z2Var != null) {
            z2Var.m3145while(false, this.f9664if.getCurrentItem() == 0);
        }
        this.f9660do.findViewById(R.id.header_ranking_edit_menu).setOnClickListener(new Cnew());
        this.f9656case.setOnLoadMoreListener(new Ctry(), this.mRecyclerView);
        this.f9656case.setOnItemClickListener(this);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.comic_category_actionbar, R.string.main_tab_book_city_category_txt);
        this.mPublicLoadingView.setReloadListener(new Cdo());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(this, this.mRecyclerView);
        this.mPtrClassicFrameLayout.setPtrHandler(new Cif());
        this.mRecyclerView.addOnScrollListener(new Cfor(linearLayoutManager));
    }

    public final void l(ScrollIndicatorView scrollIndicatorView, String[] strArr, b40.Cnew cnew, int i) {
        if (strArr != null && strArr.length > 0) {
            scrollIndicatorView.setAdapter(new nz(this, strArr, i));
            ze.u(this, scrollIndicatorView, 30, 14);
            scrollIndicatorView.setOnItemSelectListener(cnew);
            return;
        }
        scrollIndicatorView.setVisibility(8);
    }

    public final void m(boolean z, List list, boolean z2) {
        int size = list == null ? 0 : list.size();
        if (z) {
            this.f9656case.setNewData(list);
            if (list == null) {
                this.f9656case.loadMoreFail();
                return;
            } else if (z2) {
                this.f9656case.setEnableLoadMore(true);
                this.f9667try++;
                return;
            } else {
                this.f9656case.setEnableLoadMore(false);
                return;
            }
        }
        if (size > 0) {
            this.f9656case.addData((Collection) list);
        }
        if (list == null) {
            this.f9656case.loadMoreFail();
        } else if (z2) {
            this.f9656case.loadMoreComplete();
            this.f9667try++;
        } else {
            this.f9656case.loadMoreEnd();
        }
    }

    @OnClick({R.id.comic_category_header_txt})
    public void menuClick() {
        this.mRecyclerView.m3664if(0);
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicBean comicBean = (ComicBean) this.f9656case.getItem(i);
        if (comicBean == null || comicBean.getItemType() != 1) {
            return;
        }
        Intent intent = new Intent(this, ComicDetailActivity.class);
        intent.putExtra("book", comicBean);
        startActivity(intent);
    }
}
