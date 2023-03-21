package com.manhua.ui.fragment;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cclass;
import com.apk.Cfinally;
import com.apk.a20;
import com.apk.b1;
import com.apk.b20;
import com.apk.c1;
import com.apk.c20;
import com.apk.da;
import com.apk.eg;
import com.apk.et;
import com.apk.ft;
import com.apk.g1;
import com.apk.gt;
import com.apk.i6;
import com.apk.k3;
import com.apk.l3;
import com.apk.lv;
import com.apk.mf;
import com.apk.mu;
import com.apk.n2;
import com.apk.o;
import com.apk.o0;
import com.apk.p3;
import com.apk.qa;
import com.apk.s5;
import com.apk.ss;
import com.apk.ts;
import com.apk.v0;
import com.apk.w0;
import com.apk.wv;
import com.apk.y10;
import com.apk.yg;
import com.apk.z10;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.ui.view.MhtgDownloadLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.lxj.xpopup.impl.InputConfirmPopupView;
import com.lxj.xpopup.impl.LoadingPopupView;
import com.manhua.adapter.ComicGroupAdapter;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.activity.ComicGroupDetailActivity;
import com.manhua.ui.activity.ComicNovelDirActivity;
import com.manhua.ui.activity.ComicReadActivity;
import com.manhua.ui.activity.CreateComicGroupActivity;
import com.manhua.ui.fragment.ComicShelfFragment;
import com.manhua.ui.view.ComicMenuPopupView;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class ComicShelfFragment extends qa implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener, BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: break  reason: not valid java name */
    public boolean f10051break;

    /* renamed from: catch  reason: not valid java name */
    public LinearLayout f10053catch;

    /* renamed from: class  reason: not valid java name */
    public AdViewBangDan f10054class;

    /* renamed from: const  reason: not valid java name */
    public AdViewRectangle f10055const;

    /* renamed from: else  reason: not valid java name */
    public boolean f10056else;

    /* renamed from: final  reason: not valid java name */
    public Cclass f10057final;

    /* renamed from: for  reason: not valid java name */
    public View f10058for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f10059goto;

    /* renamed from: if  reason: not valid java name */
    public long f10060if;
    @BindView(R.id.fragment_shelf_ptr_layout)
    @SuppressLint({"NonConstantResourceId"})
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.fragment_shelf_recyclerview)
    @SuppressLint({"NonConstantResourceId"})
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public LinearLayoutManager f10063new;

    /* renamed from: public  reason: not valid java name */
    public ComicMenuPopupView f10064public;

    /* renamed from: return  reason: not valid java name */
    public LoadingPopupView f10065return;

    /* renamed from: static  reason: not valid java name */
    public boolean f10066static;

    /* renamed from: super  reason: not valid java name */
    public View f10067super;

    /* renamed from: this  reason: not valid java name */
    public boolean f10068this;

    /* renamed from: throw  reason: not valid java name */
    public yg f10069throw;

    /* renamed from: try  reason: not valid java name */
    public ComicGroupAdapter f10070try;

    /* renamed from: while  reason: not valid java name */
    public p3 f10071while;

    /* renamed from: case  reason: not valid java name */
    public final List<ComicCollectBean> f10052case = new ArrayList();

    /* renamed from: import  reason: not valid java name */
    public final Runnable f10061import = new Ccase();

    /* renamed from: native  reason: not valid java name */
    public final s5 f10062native = new Celse();

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cbreak implements g1 {

        /* renamed from: do  reason: not valid java name */
        public int f10072do;

        /* renamed from: for  reason: not valid java name */
        public final String f10073for;

        /* renamed from: if  reason: not valid java name */
        public ComicCollectBean f10074if;

        /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$break$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements wv {
            public Cdo() {
            }

            @Override // com.apk.wv
            /* renamed from: do */
            public void mo2944do(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                n2.E(Cbreak.this.f10074if.getCollectId(), Cbreak.this.f10074if.getGroupId(), str, false);
                ze.V();
            }
        }

        /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$break$if  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cif implements ft {

            /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$break$if$do  reason: invalid class name */
            /* loaded from: classes8.dex */
            public class Cdo implements Runnable {
                public Cdo() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    List<ComicCollectBean> groupBooks = Cbreak.this.f10074if.getGroupBooks();
                    if (groupBooks == null || groupBooks.size() <= 0) {
                        return;
                    }
                    for (ComicCollectBean comicCollectBean : groupBooks) {
                        n2.E(comicCollectBean.getCollectId(), "", "", false);
                    }
                    ze.V();
                }
            }

            public Cif() {
            }

            @Override // com.apk.ft
            public void onClick() {
                o m1921for = o.m1921for();
                Cdo cdo = new Cdo();
                ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.execute(cdo);
                }
            }
        }

        public Cbreak(int i, ComicCollectBean comicCollectBean, Cnew cnew) {
            this.f10072do = i;
            this.f10074if = comicCollectBean;
            this.f10073for = comicCollectBean.getCollectId();
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            if (this.f10074if == null) {
                int size = ComicShelfFragment.this.f10052case.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    ComicCollectBean comicCollectBean = ComicShelfFragment.this.f10052case.get(i);
                    if (comicCollectBean.getCollectId().equals(this.f10073for)) {
                        this.f10072do = i;
                        this.f10074if = comicCollectBean;
                        break;
                    }
                    i++;
                }
            }
            if (this.f10074if == null) {
                return;
            }
            int intValue = ((Integer) obj).intValue();
            if (!this.f10074if.isGroup()) {
                switch (intValue) {
                    case -1:
                        ComicDetailActivity.m(ComicShelfFragment.this.getSupportActivity(), this.f10074if);
                        return;
                    case 0:
                        ComicShelfFragment.j(ComicShelfFragment.this, this.f10072do);
                        ComicMenuPopupView comicMenuPopupView = ComicShelfFragment.this.f10064public;
                        if (comicMenuPopupView != null) {
                            comicMenuPopupView.m3635break(intValue);
                        }
                        this.f10074if = null;
                        return;
                    case 1:
                    default:
                        return;
                    case 2:
                        ComicNovelDirActivity.j(ComicShelfFragment.this.getSupportActivity(), this.f10074if);
                        return;
                    case 3:
                        if (this.f10074if != null) {
                            ze.s(ComicShelfFragment.this.getSupportActivity(), this.f10074if.getCollectId(), this.f10074if.getName(), false, true);
                            return;
                        }
                        return;
                    case 4:
                        if (mu.m1768goto(ComicShelfFragment.this.getSupportActivity())) {
                            return;
                        }
                        o0.m1925else().m1933for(ComicShelfFragment.this.getSupportActivity(), String.valueOf(this.f10074if.getCollectId()), this.f10074if.getName(), true, null);
                        return;
                    case 5:
                        try {
                            if (ComicShelfFragment.this.f10067super == null) {
                                ComicShelfFragment.this.f10067super = ((ViewStub) ComicShelfFragment.this.findViewById(R.id.new_share_page_view)).inflate();
                                ComicShelfFragment.this.f10067super.setVisibility(4);
                            }
                            w0.m2882interface(ComicShelfFragment.this.mActivity, ComicShelfFragment.this.f10067super, null, mu.m1759const(this.f10074if));
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    case 6:
                        ComicShelfFragment.m(ComicShelfFragment.this, this.f10074if);
                        return;
                    case 7:
                        ComicShelfFragment.n(ComicShelfFragment.this, this.f10074if);
                        return;
                    case 8:
                        ComicShelfFragment.o(ComicShelfFragment.this, this.f10074if);
                        return;
                }
            } else if (intValue == -1) {
                i6 supportActivity = ComicShelfFragment.this.getSupportActivity();
                ComicCollectBean comicCollectBean2 = this.f10074if;
                ComicShelfFragment comicShelfFragment = ComicShelfFragment.this;
                ComicGroupDetailActivity.r(supportActivity, comicCollectBean2, false, comicShelfFragment.f10056else, comicShelfFragment.f10059goto);
            } else if (intValue == 0) {
                ComicShelfFragment.j(ComicShelfFragment.this, this.f10072do);
                ComicMenuPopupView comicMenuPopupView2 = ComicShelfFragment.this.f10064public;
                if (comicMenuPopupView2 != null) {
                    comicMenuPopupView2.m3635break(intValue);
                }
                this.f10074if = null;
            } else if (intValue != 1) {
                if (intValue == 2) {
                    ComicShelfFragment comicShelfFragment2 = ComicShelfFragment.this;
                    comicShelfFragment2.showTipDialog(comicShelfFragment2.getSupportActivity(), ze.q(R.string.main_menu_pop_is_discard_group), new Cif(), null, true);
                } else if (intValue != 3) {
                } else {
                    i6 supportActivity2 = ComicShelfFragment.this.getSupportActivity();
                    ComicCollectBean comicCollectBean3 = this.f10074if;
                    ComicShelfFragment comicShelfFragment3 = ComicShelfFragment.this;
                    ComicGroupDetailActivity.r(supportActivity2, comicCollectBean3, true, comicShelfFragment3.f10056else, comicShelfFragment3.f10059goto);
                }
            } else {
                String q = ze.q(R.string.main_menu_pop_group_please_input_newname);
                String groupTitle = this.f10074if.getGroupTitle();
                i6 supportActivity3 = ComicShelfFragment.this.getSupportActivity();
                lv lvVar = new lv();
                lvVar.f2938super = Boolean.TRUE;
                Cdo cdo = new Cdo();
                lvVar.f2917continue = zu.f6266try;
                InputConfirmPopupView inputConfirmPopupView = new InputConfirmPopupView(supportActivity3, 0);
                inputConfirmPopupView.f9575else = q;
                inputConfirmPopupView.f9577goto = null;
                inputConfirmPopupView.f9580this = groupTitle;
                inputConfirmPopupView.f9589final = groupTitle;
                inputConfirmPopupView.f9590super = null;
                inputConfirmPopupView.f9591throw = cdo;
                inputConfirmPopupView.popupInfo = lvVar;
                inputConfirmPopupView.show();
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements Runnable {
        public Ccase() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicShelfFragment comicShelfFragment = ComicShelfFragment.this;
            PtrClassicFrameLayout ptrClassicFrameLayout = comicShelfFragment.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Cif(false));
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements et {
        public Cdo() {
        }

        @Override // com.apk.et
        public void onDismiss() {
            yg ygVar = ComicShelfFragment.this.f10069throw;
            if (ygVar != null) {
                ygVar.f5938try = true;
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse extends s5 {
        public Celse() {
        }

        /* renamed from: else  reason: not valid java name */
        public static void m3630else(String str) {
            ToastUtils.show((CharSequence) str);
        }

        @Override // com.apk.s5
        /* renamed from: case */
        public void mo2377case(String str) {
            ComicShelfFragment.h(ComicShelfFragment.this, str);
        }

        @Override // com.apk.s5
        /* renamed from: do */
        public void mo2378do() {
            ComicShelfFragment.i(ComicShelfFragment.this);
        }

        @Override // com.apk.s5
        /* renamed from: for */
        public void mo2379for(boolean z, int i) {
            ComicGroupAdapter comicGroupAdapter;
            ComicShelfFragment comicShelfFragment = ComicShelfFragment.this;
            if (comicShelfFragment.f10071while == null || (comicGroupAdapter = comicShelfFragment.f10070try) == null) {
                return;
            }
            comicGroupAdapter.f9612for = z;
            LinkedHashMap<String, ComicCollectBean> linkedHashMap = comicGroupAdapter.f9614new;
            if (linkedHashMap != null) {
                linkedHashMap.clear();
            }
            comicGroupAdapter.notifyDataSetChanged();
            ComicShelfFragment.this.v(!z);
            if (z) {
                ComicShelfFragment comicShelfFragment2 = ComicShelfFragment.this;
                if (comicShelfFragment2.f10069throw == null) {
                    comicShelfFragment2.f10069throw = new yg(comicShelfFragment2.getSupportActivity(), new b20(comicShelfFragment2));
                }
                comicShelfFragment2.f10069throw.showAtLocation(comicShelfFragment2.mRecyclerView, 80, 0, 0);
                comicShelfFragment2.f10069throw.m3066do(0, -1);
                return;
            }
            ComicShelfFragment comicShelfFragment3 = ComicShelfFragment.this;
            yg ygVar = comicShelfFragment3.f10069throw;
            if (ygVar == null || !ygVar.isShowing()) {
                return;
            }
            comicShelfFragment3.f10069throw.dismiss();
        }

        @Override // com.apk.s5
        /* renamed from: if */
        public void mo2380if(List<ComicCollectBean> list) {
            ComicShelfFragment comicShelfFragment = ComicShelfFragment.this;
            comicShelfFragment.f10068this = false;
            comicShelfFragment.f10060if = System.currentTimeMillis();
            try {
                ComicShelfFragment.this.f10052case.clear();
                ComicShelfFragment.this.f10052case.addAll(list);
                if (ComicShelfFragment.this.f10070try != null) {
                    ComicShelfFragment.this.f10070try.notifyDataSetChanged();
                }
                ComicShelfFragment comicShelfFragment2 = ComicShelfFragment.this;
                PtrClassicFrameLayout ptrClassicFrameLayout = comicShelfFragment2.mPtrClassicFrameLayout;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.post(new Cif(false));
                }
                ComicShelfFragment.this.v(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
            ComicShelfFragment.k(ComicShelfFragment.this);
        }

        @Override // com.apk.s5
        /* renamed from: new */
        public void mo2381new(String str) {
            ComicShelfFragment.h(ComicShelfFragment.this, str);
        }

        @Override // com.apk.s5
        /* renamed from: try */
        public void mo2382try(final String str) {
            ComicShelfFragment.this.getSupportActivity().post(new Runnable() { // from class: com.apk.k10
                @Override // java.lang.Runnable
                public final void run() {
                    ComicShelfFragment.Celse.m3630else(str);
                }
            });
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f10082do;

        public Cfor(boolean z) {
            this.f10082do = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicFrameLayout ptrClassicFrameLayout = ComicShelfFragment.this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.setEnabled(this.f10082do);
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ List f10084do;

        public Cgoto(List list) {
            this.f10084do = list;
        }

        @Override // com.apk.ft
        public void onClick() {
            ComicShelfFragment.p(ComicShelfFragment.this, this.f10084do);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f10086do;

        public Cif(boolean z) {
            this.f10086do = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicFrameLayout ptrClassicFrameLayout = ComicShelfFragment.this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                if (this.f10086do) {
                    ptrClassicFrameLayout.m2541if();
                } else {
                    ptrClassicFrameLayout.m2532break();
                }
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements ts {
        public Cnew() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ComicShelfFragment.f(ComicShelfFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ComicShelfFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis implements gt {
        public Cthis() {
        }

        @Override // com.apk.gt
        /* renamed from: do */
        public void mo1044do(BasePopupView basePopupView) {
            yg ygVar = ComicShelfFragment.this.f10069throw;
            if (ygVar != null) {
                ygVar.f5938try = false;
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicShelfFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends c1<Object> {
        public Ctry() {
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            ComicShelfFragment.this.f10052case.addAll(p3.m2018for());
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            ComicShelfFragment.k(ComicShelfFragment.this);
            ComicShelfFragment.this.q(da.m435this());
        }
    }

    public static void f(ComicShelfFragment comicShelfFragment) {
        if (comicShelfFragment != null) {
            try {
                if (!comicShelfFragment.f10068this) {
                    comicShelfFragment.getSupportActivity().removeCallbacks(comicShelfFragment.f10061import);
                    comicShelfFragment.getSupportActivity().postDelayed(comicShelfFragment.f10061import, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
                    if (System.currentTimeMillis() - comicShelfFragment.f10060if < 300000) {
                        return;
                    }
                }
                p3 p3Var = comicShelfFragment.f10071while;
                boolean z = comicShelfFragment.f10068this;
                if (p3Var == null) {
                    throw null;
                }
                new b1().m141do(new l3(p3Var, z));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void h(ComicShelfFragment comicShelfFragment, String str) {
        if (comicShelfFragment != null) {
            try {
                if (comicShelfFragment.f10065return == null) {
                    i6 supportActivity = comicShelfFragment.getSupportActivity();
                    lv lvVar = new lv();
                    lvVar.f2924for = Boolean.FALSE;
                    lvVar.f2943try = Boolean.FALSE;
                    lvVar.f2917continue = zu.f6266try;
                    LoadingPopupView loadingPopupView = new LoadingPopupView(supportActivity, 0);
                    loadingPopupView.m3605if(str);
                    loadingPopupView.popupInfo = lvVar;
                    comicShelfFragment.f10065return = loadingPopupView;
                }
                LoadingPopupView loadingPopupView2 = comicShelfFragment.f10065return;
                loadingPopupView2.m3605if(str);
                loadingPopupView2.show();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void i(ComicShelfFragment comicShelfFragment) {
        if (comicShelfFragment != null) {
            try {
                if (comicShelfFragment.f10065return == null || !comicShelfFragment.f10065return.isShow()) {
                    return;
                }
                comicShelfFragment.f10065return.dismiss();
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void j(ComicShelfFragment comicShelfFragment, int i) {
        if (comicShelfFragment == null) {
            throw null;
        }
        new b1().m141do(new y10(comicShelfFragment, i));
    }

    public static void k(ComicShelfFragment comicShelfFragment) {
        if (comicShelfFragment.f10052case.size() == 0) {
            if (comicShelfFragment.f10058for == null) {
                View inflate = ((ViewStub) comicShelfFragment.findViewById(R.id.fragment_book_shelf_empty_layout)).inflate();
                comicShelfFragment.f10058for = inflate;
                ((TextView) inflate.findViewById(R.id.fragment_book_shelf_message)).setText(ze.q(R.string.main_please_add_comic_title));
                comicShelfFragment.f10058for.findViewById(R.id.fragment_book_shelf_category_layout).setOnClickListener(new a20(comicShelfFragment));
            }
            comicShelfFragment.f10058for.setVisibility(0);
            comicShelfFragment.v(false);
            return;
        }
        View view = comicShelfFragment.f10058for;
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        comicShelfFragment.f10058for.setVisibility(8);
    }

    public static void m(ComicShelfFragment comicShelfFragment, ComicCollectBean comicCollectBean) {
        if (comicShelfFragment != null) {
            comicShelfFragment.showTipDialog(comicShelfFragment.getSupportActivity(), ze.r(R.string.download_is_delete_txt, comicCollectBean.getName()), new c20(comicShelfFragment, comicCollectBean.getCollectId(), comicCollectBean), null, false);
            return;
        }
        throw null;
    }

    public static void n(ComicShelfFragment comicShelfFragment, ComicCollectBean comicCollectBean) {
        if (comicShelfFragment != null) {
            ArrayList arrayList = new ArrayList();
            if (comicCollectBean != null) {
                arrayList.add(comicCollectBean);
            }
            comicShelfFragment.r(arrayList);
            return;
        }
        throw null;
    }

    public static void o(ComicShelfFragment comicShelfFragment, ComicCollectBean comicCollectBean) {
        if (comicShelfFragment != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(comicCollectBean);
            CreateComicGroupActivity.m(comicShelfFragment.getSupportActivity(), arrayList, "", comicShelfFragment.f10056else, comicShelfFragment.f10059goto);
            return;
        }
        throw null;
    }

    public static void p(ComicShelfFragment comicShelfFragment, List list) {
        if (comicShelfFragment == null) {
            throw null;
        }
        new b1().m141do(new z10(comicShelfFragment, list));
    }

    @Override // com.apk.qa, com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_shelf;
    }

    @Override // com.apk.qa, com.apk.g6
    public void initData() {
        super.initData();
        this.f10071while = new p3(getSupportActivity(), this.f10062native);
        new b1().m141do(new Ctry());
    }

    @Override // com.apk.qa, com.apk.g6
    public void initView() {
        super.initView();
        registerEventBus(this);
        this.mRecyclerView.setNestedScrollingEnabled(false);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cnew());
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AdViewBangDan adViewBangDan = this.f10054class;
        if (adViewBangDan != null) {
            adViewBangDan.m3269try();
        }
        Cclass cclass = this.f10057final;
        if (cclass != null) {
            cclass.m360try();
        }
        AdViewRectangle adViewRectangle = this.f10055const;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
        }
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        MhtgDownloadLayout mhtgDownloadLayout;
        String str = mfVar.f3028do;
        if ("refresh_shelf_book".equals(str)) {
            p3 p3Var = this.f10071while;
            if (p3Var != null) {
                new b1().m141do(new k3(p3Var));
            }
        } else if ("SWITCH_FOREGROUND_KEY".equals(str)) {
            if (!((Boolean) mfVar.f3030if).booleanValue() || this.f10070try == null || this.f10052case.size() <= 0) {
                return;
            }
            if (this.mPtrClassicFrameLayout.f4550do == 3) {
                return;
            }
            this.f10068this = false;
            this.f10051break = true;
            w(true);
        } else if ("login_action".equals(str)) {
            Object[] objArr = mfVar.f3029for;
            boolean booleanValue = ((Boolean) objArr[0]).booleanValue();
            String str2 = (String) objArr[1];
            boolean booleanValue2 = ((Boolean) objArr[2]).booleanValue();
            if (booleanValue && booleanValue2) {
                this.f10068this = true;
                this.f10051break = true;
                w(true);
            }
        } else if (!"REFRESH_CARTOON_DOWNLOAD_KEY".equals(str) || (mhtgDownloadLayout = this.f3824do) == null) {
        } else {
            mhtgDownloadLayout.m3407do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.item_list_menu_bt) {
            t(i);
        } else {
            s(i);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        s(i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        return t(i);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        u(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getUserVisibleHint()) {
            u(true);
        }
    }

    public void q(int i) {
        int i2;
        int i3;
        JSONObject jSONObject;
        int i4;
        if (this.f10071while == null || this.mRecyclerView == null) {
            return;
        }
        boolean z = i < 2;
        this.f10056else = z;
        if (z) {
            try {
                if (i == 0) {
                    this.f10059goto = true;
                    i4 = R.layout.include_book_shelf_list;
                } else {
                    this.f10059goto = false;
                    i4 = R.layout.include_book_shelf_list_small;
                }
                this.f10070try = new ComicGroupAdapter(getSupportActivity(), this.f10052case, true, this.f10059goto, i4);
                if (this.f10063new == null) {
                    this.f10063new = new LinearLayoutManager(getSupportActivity());
                }
                this.mRecyclerView.setLayoutManager(this.f10063new);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            try {
                if (i == 2) {
                    i2 = 3;
                    this.f10059goto = true;
                    i3 = R.layout.include_book_shelf_grid;
                } else {
                    i2 = 4;
                    this.f10059goto = false;
                    i3 = R.layout.include_book_shelf_grid_small;
                }
                this.f10070try = new ComicGroupAdapter(getSupportActivity(), this.f10052case, false, this.f10059goto, i3);
                this.mRecyclerView.setLayoutManager(new GridLayoutManager(getSupportActivity(), i2));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.mRecyclerView.setAdapter(this.f10070try);
        boolean C = ze.C();
        if (!this.f10051break && ((C && this.f10052case.size() > 0) || v0.m2736try().m2741const())) {
            this.f10051break = true;
            w(true);
        }
        this.f10070try.setOnItemClickListener(this);
        this.f10070try.setOnItemChildClickListener(this);
        this.f10070try.setOnItemLongClickListener(this);
        if (C) {
            try {
                if (this.f10053catch == null) {
                    LinearLayout linearLayout = new LinearLayout(getSupportActivity());
                    this.f10053catch = linearLayout;
                    linearLayout.setMinimumHeight(1);
                    this.f10053catch.setOrientation(1);
                } else if (this.f10053catch.getParent() != null && (this.f10053catch.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) this.f10053catch.getParent()).removeAllViews();
                }
                if (this.f10070try != null) {
                    this.f10070try.addHeaderView(this.f10053catch);
                }
                if (Cfinally.m797else().m813interface()) {
                    if (this.f10055const == null) {
                        AdViewRectangle adViewRectangle = new AdViewRectangle(getSupportActivity(), null);
                        this.f10055const = adViewRectangle;
                        adViewRectangle.setAutoRefresh(false);
                        this.f10055const.m3274for(getSupportActivity(), null, "shelfrect");
                        this.f10053catch.addView(this.f10055const);
                        return;
                    }
                    return;
                }
                Cfinally m797else = Cfinally.m797else();
                if ((m797else.f1339break == null || !m797else.m808final() || Cfinally.m796do(m797else.f1339break, "bsinfonative_mh") == null) ? false : true) {
                    if (this.f10054class == null) {
                        AdViewBangDan adViewBangDan = new AdViewBangDan(getSupportActivity(), null);
                        this.f10054class = adViewBangDan;
                        adViewBangDan.setAutoRefresh(false);
                        this.f10054class.setLoadSuccessVisible(true);
                        this.f10054class.m3268new(getSupportActivity(), "bsinfonative");
                        this.f10053catch.addView(this.f10054class);
                    }
                } else if (Cfinally.m797else().m804class() && this.f10057final == null) {
                    Cclass cclass = new Cclass();
                    this.f10057final = cclass;
                    i6 supportActivity = getSupportActivity();
                    LinearLayout linearLayout2 = this.f10053catch;
                    Cfinally m797else2 = Cfinally.m797else();
                    if (m797else2.f1341catch) {
                        jSONObject = m797else2.f1342class;
                    } else {
                        jSONObject = m797else2.f1343const;
                    }
                    cclass.m357for(supportActivity, linearLayout2, jSONObject, Cfinally.m797else().f1341catch);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public final void r(List<ComicCollectBean> list) {
        if (list != null && list.size() > 0) {
            eg.g(getSupportActivity(), ze.q(R.string.main_delete_if_affirm), new Cgoto(list), new Cthis(), new Cdo());
        } else {
            ToastUtils.show((int) R.string.main_please_select_book);
        }
    }

    public final void s(int i) {
        try {
            ComicCollectBean comicCollectBean = this.f10052case.get(i);
            if (this.f10070try.f9612for) {
                if (comicCollectBean.isGroup()) {
                    ComicGroupDetailActivity.r(getSupportActivity(), comicCollectBean, true, this.f10056else, this.f10059goto);
                } else {
                    this.f10069throw.m3066do(this.f10070try.m3610for(i), -1);
                }
            } else if (comicCollectBean.getItemType() == 1) {
                if (comicCollectBean.isNew()) {
                    this.f10069throw.m3066do(this.f10070try.m3610for(i), -1);
                }
            } else if (comicCollectBean.isGroup()) {
                ComicGroupDetailActivity.r(getSupportActivity(), comicCollectBean, false, this.f10056else, this.f10059goto);
            } else {
                String firstChapterId = comicCollectBean.getFirstChapterId();
                if (TextUtils.isEmpty(firstChapterId)) {
                    firstChapterId = mu.m1781static(comicCollectBean.getCollectId());
                    if (!TextUtils.isEmpty(firstChapterId)) {
                        this.f10052case.get(i).setFirstChapterId(firstChapterId);
                    }
                }
                if (TextUtils.isEmpty(firstChapterId)) {
                    ComicDetailActivity.m(getSupportActivity(), comicCollectBean);
                    return;
                }
                comicCollectBean.setFirstChapterId(firstChapterId);
                ComicReadActivity.I(getSupportActivity(), comicCollectBean, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        u(z);
    }

    @Override // com.apk.qa
    /* renamed from: synchronized */
    public String mo2111synchronized() {
        return "SOURCE_CARTTON_VALUE";
    }

    public final boolean t(int i) {
        try {
            if (this.f10052case.get(i).getItemType() == 1 || this.f10070try.f9612for) {
                return true;
            }
            x(i);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void u(boolean z) {
        if (this.f10071while == null) {
            return;
        }
        try {
            if (z) {
                if (this.f10066static) {
                    if (this.f10057final != null) {
                        this.f10057final.f664try = false;
                    }
                    if (this.f10054class != null) {
                        this.f10054class.f6294break = false;
                        this.f10054class.mo139do();
                    }
                    if (this.f10055const != null) {
                        this.f10055const.f6316break = false;
                        this.f10055const.mo139do();
                        try {
                            if (this.mRecyclerView != null) {
                                this.mRecyclerView.scrollToPosition(0);
                                return;
                            }
                            return;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (this.f10057final != null) {
                this.f10057final.f664try = true;
            }
            if (this.f10054class != null) {
                this.f10054class.f6294break = true;
            }
            if (this.f10055const != null) {
                this.f10055const.f6316break = true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void v(boolean z) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.post(new Cfor(z));
        }
    }

    public final void w(boolean z) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.post(new Cif(z));
        }
    }

    public final void x(int i) {
        ComicCollectBean comicCollectBean = this.f10052case.get(i);
        this.f10064public = new ComicMenuPopupView(getSupportActivity(), comicCollectBean, new Cbreak(i, comicCollectBean, null), comicCollectBean.isGroup());
        getSupportActivity();
        lv lvVar = new lv();
        ComicMenuPopupView comicMenuPopupView = this.f10064public;
        if (comicMenuPopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicMenuPopupView instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicMenuPopupView instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicMenuPopupView instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (comicMenuPopupView instanceof PositionPopupView) {
            lvVar.f2917continue = zu.f6266try;
        }
        comicMenuPopupView.popupInfo = lvVar;
        comicMenuPopupView.show();
    }
}
