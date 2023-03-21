package com.biquge.ebook.app.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.Cgoto;
import com.apk.Csynchronized;
import com.apk.b;
import com.apk.b1;
import com.apk.b40;
import com.apk.ch;
import com.apk.da;
import com.apk.e40;
import com.apk.eg;
import com.apk.fg;
import com.apk.g6;
import com.apk.hf;
import com.apk.i6;
import com.apk.lv;
import com.apk.m3;
import com.apk.mu;
import com.apk.n2;
import com.apk.n3;
import com.apk.p;
import com.apk.p3;
import com.apk.pb;
import com.apk.q0;
import com.apk.q4;
import com.apk.qb;
import com.apk.r4;
import com.apk.rb;
import com.apk.sb;
import com.apk.t4;
import com.apk.tb;
import com.apk.tt;
import com.apk.ub;
import com.apk.v0;
import com.apk.w0;
import com.apk.xp0;
import com.apk.y30;
import com.apk.ze;
import com.apk.zh;
import com.apk.zu;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.ad.AdFloatView;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.MarqueeBean;
import com.biquge.ebook.app.ui.activity.BookSearchActivity;
import com.biquge.ebook.app.ui.activity.ExternalSearchActivity;
import com.biquge.ebook.app.ui.activity.ImportFileActivity;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.ui.activity.WifiBookActivity;
import com.biquge.ebook.app.ui.view.AppUpgradeLayout;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.biquge.ebook.app.widget.TopMsgView;
import com.biquge.ebook.app.widget.marqueeview.ShelfMarqueeView;
import com.lxj.xpopup.impl.AttachListPopupView;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.fragment.ComicShelfFragment;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class HomeFragment extends g6 {

    /* renamed from: case  reason: not valid java name */
    public BookShelfFragment f7465case;

    /* renamed from: do  reason: not valid java name */
    public b f7466do;

    /* renamed from: else  reason: not valid java name */
    public ComicShelfFragment f7467else;

    /* renamed from: for  reason: not valid java name */
    public AppUpgradeLayout f7468for;

    /* renamed from: goto  reason: not valid java name */
    public xp0 f7469goto;

    /* renamed from: if  reason: not valid java name */
    public AdViewBanner f7470if;
    @BindView(R.id.book_shelf_action_edit_ok)
    public TextView mEditFinishTView;
    @BindView(R.id.book_shelf_action_more)
    public ImageView mShelfMoreIView;
    @BindView(R.id.fragment_home_search_bt)
    public ImageView mShelfSearchIv;
    @BindView(R.id.title_indicator_view)
    public TitleIndicatorView mTitleIndicatorView;
    @BindView(R.id.adview_top_layout)
    public LinearLayout mTopAdLayout;
    @BindView(R.id.home_public_tips_layout)
    public TopMsgView mTopMsgView;
    @BindView(R.id.fragment_home_viewPager)
    public SViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public b40 f7471new;

    /* renamed from: try  reason: not valid java name */
    public e40 f7472try;

    /* renamed from: com.biquge.ebook.app.ui.fragment.HomeFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements TitleIndicatorView.Cif {
        public Cdo() {
        }

        @Override // com.biquge.ebook.app.widget.TitleIndicatorView.Cif
        /* renamed from: do */
        public void mo3308do(hf hfVar, boolean z) {
            HomeFragment.this.mShelfMoreIView.setVisibility(0);
        }
    }

    public static void a(HomeFragment homeFragment) {
        if (homeFragment != null) {
            int m435this = da.m435this();
            BookShelfFragment bookShelfFragment = homeFragment.f7465case;
            if (bookShelfFragment != null) {
                bookShelfFragment.q(m435this);
            }
            ComicShelfFragment comicShelfFragment = homeFragment.f7467else;
            if (comicShelfFragment != null) {
                comicShelfFragment.q(m435this);
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3378synchronized(HomeFragment homeFragment, int i) {
        ComicShelfFragment comicShelfFragment;
        p3 p3Var;
        t4 t4Var;
        ComicShelfFragment comicShelfFragment2;
        p3 p3Var2;
        t4 t4Var2;
        if (homeFragment != null) {
            hf hfVar = hf.COMIC;
            hf hfVar2 = hf.BOOK;
            switch (i) {
                case 0:
                    homeFragment.k(true, -1);
                    return;
                case 1:
                    int m435this = da.m435this();
                    new zu.Cdo(homeFragment.getContext()).m3258new(ze.q(R.string.please_select_bt_txt), q0.f3773do, null, m435this, new tb(homeFragment, m435this)).show();
                    return;
                case 2:
                    new zu.Cdo(homeFragment.getContext()).m3258new(ze.q(R.string.please_select_bt_txt), q0.f3777if, null, da.m415break(), new ub(homeFragment)).show();
                    return;
                case 3:
                    if (eg.m600implements()) {
                        if (!v0.m2736try().m2741const()) {
                            LoginActivity.l(homeFragment.getSupportActivity());
                            return;
                        }
                        hf tabModule = homeFragment.mTitleIndicatorView.getTabModule();
                        if (tabModule == hfVar2) {
                            BookShelfFragment bookShelfFragment = homeFragment.f7465case;
                            if (bookShelfFragment == null || bookShelfFragment.f7351break.size() <= 0 || (t4Var = homeFragment.f7465case.f7359goto) == null) {
                                return;
                            }
                            try {
                                List<CollectBook> b = n2.b();
                                if (b == null || b.size() == 0) {
                                    if (t4Var.f4635for != null) {
                                        t4Var.f4635for.mo2774case(ze.q(R.string.upload_no_read_book));
                                        return;
                                    }
                                    return;
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            new b1().m141do(new q4(t4Var));
                            return;
                        } else if (tabModule != hfVar || (comicShelfFragment = homeFragment.f7467else) == null || comicShelfFragment.f10052case.size() <= 0 || (p3Var = homeFragment.f7467else.f10071while) == null) {
                            return;
                        } else {
                            try {
                                List<ComicCollectBean> m1785synchronized = mu.m1785synchronized();
                                if (m1785synchronized == null || m1785synchronized.size() == 0) {
                                    if (p3Var.f3567for != null) {
                                        p3Var.f3567for.mo2382try(ze.q(R.string.upload_no_read_book));
                                        return;
                                    }
                                    return;
                                }
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            new b1().m141do(new m3(p3Var));
                            return;
                        }
                    }
                    eg.m607private(homeFragment.getSupportActivity(), null);
                    return;
                case 4:
                    if (eg.m600implements()) {
                        if (!v0.m2736try().m2741const()) {
                            LoginActivity.l(homeFragment.getSupportActivity());
                            return;
                        }
                        hf tabModule2 = homeFragment.mTitleIndicatorView.getTabModule();
                        if (tabModule2 == hfVar2) {
                            BookShelfFragment bookShelfFragment2 = homeFragment.f7465case;
                            if (bookShelfFragment2 == null || bookShelfFragment2.f7351break.size() <= 0 || (t4Var2 = homeFragment.f7465case.f7359goto) == null) {
                                return;
                            }
                            ze.b0(t4Var2.f3559do, ze.q(R.string.download_progress_tips_txt), new r4(t4Var2), null, true);
                            return;
                        } else if (tabModule2 != hfVar || (comicShelfFragment2 = homeFragment.f7467else) == null || comicShelfFragment2.f10052case.size() <= 0 || (p3Var2 = homeFragment.f7467else.f10071while) == null) {
                            return;
                        } else {
                            ze.b0(p3Var2.f3559do, ze.q(R.string.download_progress_tips_txt), new n3(p3Var2), null, false);
                            return;
                        }
                    }
                    eg.m607private(homeFragment.getSupportActivity(), null);
                    return;
                case 5:
                    homeFragment.startActivity(new Intent(homeFragment.getSupportActivity(), WifiBookActivity.class));
                    return;
                case 6:
                    homeFragment.startActivity(new Intent(homeFragment.getSupportActivity(), ImportFileActivity.class));
                    return;
                case 7:
                    ExternalSearchActivity.i(homeFragment.getSupportActivity());
                    return;
                default:
                    return;
            }
        }
        throw null;
    }

    public void f(List<MarqueeBean> list, boolean z, boolean z2) {
        TopMsgView topMsgView;
        if (list == null || list.size() <= 0 || (topMsgView = this.mTopMsgView) == null || topMsgView.getVisibility() != 8) {
            return;
        }
        TopMsgView topMsgView2 = this.mTopMsgView;
        LayoutInflater.from(topMsgView2.getContext()).inflate(R.layout.view_top_msg, topMsgView2);
        ShelfMarqueeView shelfMarqueeView = (ShelfMarqueeView) topMsgView2.findViewById(R.id.home_public_tips_mv);
        topMsgView2.f8274do = shelfMarqueeView;
        shelfMarqueeView.setFlipInterval(16000);
        topMsgView2.f8276if = topMsgView2.findViewById(R.id.home_public_tips_redtag);
        ImageView imageView = (ImageView) topMsgView2.findViewById(R.id.home_public_tips_close);
        topMsgView2.f8275for = imageView;
        if (z) {
            imageView.setVisibility(0);
            topMsgView2.f8275for.setOnClickListener(topMsgView2);
        } else if (z2 && ze.m3179private("SP_TOP_MSG_RED_TAG_KEY", false)) {
            topMsgView2.m3528if(true);
        }
        ArrayList arrayList = new ArrayList();
        for (MarqueeBean marqueeBean : list) {
            String msg = marqueeBean.getMsg();
            if (!SpeechSynthesizer.REQUEST_DNS_OFF.equals(marqueeBean.getLandingtype())) {
                msg = Cgoto.m996else("<u>", msg, "</u>");
            }
            arrayList.add(msg);
        }
        ShelfMarqueeView shelfMarqueeView2 = topMsgView2.f8274do;
        int i = shelfMarqueeView2.f8396case;
        int i2 = shelfMarqueeView2.f8398else;
        if (!(arrayList.size() == 0)) {
            shelfMarqueeView2.setNotices(arrayList);
            shelfMarqueeView2.post(new zh(shelfMarqueeView2, i, i2));
        }
        topMsgView2.f8274do.setOnItemClickListener(new ch(topMsgView2, list));
        this.mTopMsgView.setVisibility(0);
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_home;
    }

    public final void h() {
        b bVar = new b(getSupportActivity());
        this.f7466do = bVar;
        bVar.setTxtGravity(GravityCompat.START);
        b bVar2 = this.f7466do;
        i6 supportActivity = getSupportActivity();
        JSONObject jSONObject = Cfinally.m797else().p;
        qb qbVar = new qb(this);
        if (bVar2 != null) {
            if (jSONObject != null) {
                bVar2.f226try = supportActivity;
                new b1().m141do(new Csynchronized(bVar2, jSONObject, qbVar));
            }
            this.mTopAdLayout.addView(this.f7466do);
            return;
        }
        throw null;
    }

    public void i(hf hfVar) {
        if (this.f7472try != null) {
            TitleIndicatorView titleIndicatorView = this.mTitleIndicatorView;
            if (titleIndicatorView != null) {
                try {
                    hf hfVar2 = Ccontinue.m379if().f729while;
                    int i = 1;
                    if (hfVar2 == hf.BOOK_COMIC) {
                        if (hf.COMIC == hfVar) {
                            titleIndicatorView.m3522do(i, false);
                            return;
                        }
                        i = 0;
                        titleIndicatorView.m3522do(i, false);
                        return;
                    }
                    if (hfVar2 == hf.COMIC_BOOK && hf.BOOK == hfVar) {
                        titleIndicatorView.m3522do(i, false);
                        return;
                    }
                    i = 0;
                    titleIndicatorView.m3522do(i, false);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            throw null;
        }
    }

    @Override // com.apk.g6
    public void initData() {
        p m1990for = p.m1990for();
        m1990for.f3532for = new pb(this);
        m1990for.m1992if(false);
        if ((ze.B() || ze.C()) && !Cfinally.m797else().m814native() && !Cfinally.m797else().m804class()) {
            Cfinally m797else = Cfinally.m797else();
            if ((m797else.p == null || !m797else.m808final() || Cfinally.m796do(m797else.p, "shelftxtlink") == null) ? false : true) {
                h();
            } else {
                Cfinally m797else2 = Cfinally.m797else();
                if ((m797else2.o == null || !m797else2.m808final() || Cfinally.m796do(m797else2.o, "bannershelf") == null) ? false : true) {
                    AdViewBanner adViewBanner = new AdViewBanner(getSupportActivity(), null);
                    this.f7470if = adViewBanner;
                    adViewBanner.m3271for(getSupportActivity(), "bannershelf");
                    this.mTopAdLayout.addView(this.f7470if);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        hf hfVar = Ccontinue.m379if().f729while;
        if (hfVar == hf.BOOK) {
            BookShelfFragment bookShelfFragment = new BookShelfFragment();
            this.f7465case = bookShelfFragment;
            arrayList.add(bookShelfFragment);
        } else if (hfVar == hf.COMIC) {
            ComicShelfFragment comicShelfFragment = new ComicShelfFragment();
            this.f7467else = comicShelfFragment;
            arrayList.add(comicShelfFragment);
        } else if (hfVar == hf.BOOK_COMIC) {
            BookShelfFragment bookShelfFragment2 = new BookShelfFragment();
            this.f7465case = bookShelfFragment2;
            arrayList.add(bookShelfFragment2);
            ComicShelfFragment comicShelfFragment2 = new ComicShelfFragment();
            this.f7467else = comicShelfFragment2;
            arrayList.add(comicShelfFragment2);
        } else if (hfVar == hf.COMIC_BOOK) {
            ComicShelfFragment comicShelfFragment3 = new ComicShelfFragment();
            this.f7467else = comicShelfFragment3;
            arrayList.add(comicShelfFragment3);
            BookShelfFragment bookShelfFragment3 = new BookShelfFragment();
            this.f7465case = bookShelfFragment3;
            arrayList.add(bookShelfFragment3);
        }
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        this.mViewPager.addOnPageChangeListener(new fg());
        int m2895throw = w0.m2895throw();
        if (m2895throw > 0) {
            ze.a0(this.mViewPager, m2895throw);
        }
        e40 e40Var = new e40(this.f7471new, this.mViewPager);
        this.f7472try = e40Var;
        e40Var.m536do(new y30(getChildFragmentManager(), ze.e(), arrayList));
        this.mTitleIndicatorView.m3523if(this.f7472try, R.string.main_book_shelf_title_txt, true);
        Cfinally m797else3 = Cfinally.m797else();
        if (m797else3.g != null && m797else3.m808final()) {
            try {
                AdFloatView adFloatView = (AdFloatView) ((ViewStub) findViewById(R.id.fragment_shelf_float_adview)).inflate();
                if (adFloatView != null) {
                    adFloatView.setSourceTag(1);
                    adFloatView.m3265if(Cfinally.m797else().g, false, new rb(this, adFloatView));
                }
            } catch (Exception unused) {
            }
        }
        if (ze.m3179private("WEB_SEARCH_SHELF_RED_TAG_KEY", true)) {
            m(true);
        }
    }

    @Override // com.apk.g6
    public void initView() {
        this.f7471new = this.mTitleIndicatorView.getIndicator();
        this.mTitleIndicatorView.setChangeTabListener(new Cdo());
    }

    public final void j(boolean z) {
        try {
            if (z) {
                if (this.f7466do != null) {
                    this.f7466do.f218const = false;
                }
                if (this.f7470if != null) {
                    this.f7470if.f6314this = false;
                }
            } else {
                if (this.f7466do != null) {
                    this.f7466do.f218const = true;
                }
                if (this.f7470if != null) {
                    this.f7470if.f6314this = true;
                }
            }
            if (this.f7465case != null) {
                this.f7465case.f7366static = z;
                this.f7465case.x(z);
            }
            if (this.f7467else != null) {
                this.f7467else.f10066static = z;
                this.f7467else.u(z);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void k(boolean z, int i) {
        hf tabModule = this.mTitleIndicatorView.getTabModule();
        if (tabModule == hf.BOOK) {
            if (this.f7465case != null) {
                l(z);
                this.f7465case.f7361import.mo2779new(z, i);
                if (z) {
                    this.f7471new.setItemClickable(false);
                    this.mTitleIndicatorView.setEnable(false);
                    return;
                }
                this.f7471new.setItemClickable(true);
                this.mTitleIndicatorView.setEnable(true);
                return;
            }
            this.f7471new.setItemClickable(true);
            this.mTitleIndicatorView.setEnable(true);
        } else if (tabModule == hf.COMIC) {
            if (this.f7467else != null) {
                l(z);
                this.f7467else.f10062native.mo2379for(z, i);
                if (z) {
                    this.f7471new.setItemClickable(false);
                    this.mTitleIndicatorView.setEnable(false);
                    return;
                }
                this.f7471new.setItemClickable(true);
                this.mTitleIndicatorView.setEnable(true);
                return;
            }
            this.f7471new.setItemClickable(true);
            this.mTitleIndicatorView.setEnable(true);
        }
    }

    public final void l(boolean z) {
        if (z) {
            this.mShelfMoreIView.setVisibility(4);
            this.mShelfSearchIv.setVisibility(4);
            this.mEditFinishTView.setVisibility(0);
            return;
        }
        this.mShelfMoreIView.setVisibility(0);
        this.mShelfSearchIv.setVisibility(0);
        this.mEditFinishTView.setVisibility(4);
    }

    public final void m(boolean z) {
        if (z) {
            xp0 xp0Var = new xp0(getSupportActivity());
            this.f7469goto = xp0Var;
            xp0Var.m3031do(this.mShelfSearchIv);
            xp0 xp0Var2 = xp0Var;
            xp0Var2.m3037this(8.0f, 8.0f, true);
            xp0Var2.m3034goto(-1);
            return;
        }
        xp0 xp0Var3 = this.f7469goto;
        if (xp0Var3 != null) {
            xp0Var3.m3034goto(0);
        }
        tt.f4763do.putBoolean("WEB_SEARCH_SHELF_RED_TAG_KEY", false);
    }

    @OnClick({R.id.fragment_home_search_bt, R.id.book_shelf_action_more, R.id.book_shelf_action_edit_ok})
    public void menuClick(View view) {
        if (view.getId() == R.id.fragment_home_search_bt) {
            BookSearchActivity.i(getSupportActivity(), this.mTitleIndicatorView.getTabModule());
            m(false);
        } else if (view.getId() == R.id.book_shelf_action_more) {
            boolean z = hf.BOOK == this.mTitleIndicatorView.getTabModule();
            String[] strArr = new String[z ? 8 : 5];
            int[] iArr = new int[z ? 8 : 5];
            strArr[0] = ze.q(R.string.main_edit_txt);
            iArr[0] = R.drawable.icon_shelf_menu_edit;
            strArr[1] = ze.q(R.string.main_bookrack_mode);
            iArr[1] = R.drawable.icon_shelf_menu_model;
            strArr[2] = ze.q(R.string.main_bookrack_sort);
            iArr[2] = R.drawable.icon_shelf_menu_sort;
            strArr[3] = ze.q(R.string.main_edit_upload_progress_txt);
            iArr[3] = R.drawable.icon_shelf_menu_upload;
            strArr[4] = ze.q(R.string.main_edit_download_progress_txt);
            iArr[4] = R.drawable.icon_shelf_menu_download;
            if (z) {
                strArr[5] = ze.q(R.string.main_edit_wifi_import_book_txt);
                iArr[5] = R.drawable.icon_shelf_menu_wifi;
                strArr[6] = ze.q(R.string.main_edit_local_book_txt);
                iArr[6] = R.drawable.icon_shelf_menu_import;
                strArr[7] = ze.q(R.string.main_edit_txt_download_txt);
                iArr[7] = R.drawable.icon_shelf_menu_txt;
            }
            Context context = getContext();
            lv lvVar = new lv();
            lvVar.f2943try = Boolean.TRUE;
            lvVar.f2920else = this.mShelfMoreIView;
            sb sbVar = new sb(this);
            lvVar.f2917continue = zu.f6266try;
            AttachListPopupView attachListPopupView = new AttachListPopupView(context, 0, 0);
            attachListPopupView.f9538super = strArr;
            attachListPopupView.f9539throw = iArr;
            attachListPopupView.f9540while = sbVar;
            attachListPopupView.popupInfo = lvVar;
            attachListPopupView.show();
        } else if (view.getId() == R.id.book_shelf_action_edit_ok) {
            k(false, -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (ze.B() || ze.C()) {
            return;
        }
        p.m1990for().m1992if(false);
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        b bVar = this.f7466do;
        if (bVar != null) {
            bVar.m140for();
        }
        AdViewBanner adViewBanner = this.f7470if;
        if (adViewBanner != null) {
            adViewBanner.m3272new();
        }
        p.m1990for().f3532for = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        j(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getUserVisibleHint()) {
            j(true);
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        TitleIndicatorView titleIndicatorView;
        super.setUserVisibleHint(z);
        j(z);
        if (!z || (titleIndicatorView = this.mTitleIndicatorView) == null || titleIndicatorView.getTabCurrentItem() == w0.m2895throw()) {
            return;
        }
        this.mTitleIndicatorView.m3522do(w0.m2895throw(), false);
    }
}
