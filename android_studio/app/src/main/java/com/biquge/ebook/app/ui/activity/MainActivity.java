package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.a8;
import com.apk.b1;
import com.apk.b8;
import com.apk.c60;
import com.apk.eg;
import com.apk.h6;
import com.apk.hf;
import com.apk.iu;
import com.apk.k40;
import com.apk.kg;
import com.apk.lv;
import com.apk.mf;
import com.apk.p0;
import com.apk.r40;
import com.apk.tt;
import com.apk.v;
import com.apk.w0;
import com.apk.w5;
import com.apk.w7;
import com.apk.x4;
import com.apk.x7;
import com.apk.xp0;
import com.apk.y;
import com.apk.y7;
import com.apk.z7;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.ConfigMessage;
import com.biquge.ebook.app.bean.DiscoverBean;
import com.biquge.ebook.app.bean.MarqueeBean;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.biquge.ebook.app.ui.fragment.BookShelfFragment;
import com.biquge.ebook.app.ui.fragment.HomeFragment;
import com.biquge.ebook.app.ui.fragment.InfoFragment;
import com.biquge.ebook.app.ui.fragment.MainCategoryFragment;
import com.biquge.ebook.app.ui.fragment.MainStoreFragment;
import com.biquge.ebook.app.ui.view.ConfigImagePopupView;
import com.biquge.ebook.app.ui.view.ConfigMessagePopupView;
import com.biquge.ebook.app.ui.view.ContinueReadLayout;
import com.biquge.ebook.app.widget.MainBottomNavigationView;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.google.android.material.bottomnavigation.BottomNavigationItemView;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.manhua.ui.fragment.ComicShelfFragment;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class MainActivity extends h6 implements BottomNavigationView.OnNavigationItemSelectedListener {

    /* renamed from: break  reason: not valid java name */
    public HomeFragment f6683break;

    /* renamed from: case  reason: not valid java name */
    public float f6684case;

    /* renamed from: catch  reason: not valid java name */
    public MainStoreFragment f6685catch;

    /* renamed from: class  reason: not valid java name */
    public MainCategoryFragment f6686class;

    /* renamed from: const  reason: not valid java name */
    public InfoFragment f6687const;

    /* renamed from: else  reason: not valid java name */
    public String f6688else;

    /* renamed from: final  reason: not valid java name */
    public xp0 f6689final;

    /* renamed from: import  reason: not valid java name */
    public x4 f6691import;
    @BindView(R.id.activity_main_navigation)
    public MainBottomNavigationView mBottomNavigationView;
    @BindView(R.id.main_continue_read_layout)
    public ContinueReadLayout mContinueReadLayout;
    @BindView(R.id.fragment_main_viewPager)
    public SViewPager mSViewPager;

    /* renamed from: public  reason: not valid java name */
    public boolean f6693public;

    /* renamed from: return  reason: not valid java name */
    public boolean f6694return;

    /* renamed from: static  reason: not valid java name */
    public boolean f6695static;

    /* renamed from: super  reason: not valid java name */
    public xp0 f6696super;

    /* renamed from: switch  reason: not valid java name */
    public boolean f6697switch;

    /* renamed from: throw  reason: not valid java name */
    public xp0 f6699throw;

    /* renamed from: throws  reason: not valid java name */
    public c60 f6700throws;

    /* renamed from: while  reason: not valid java name */
    public xp0 f6701while;

    /* renamed from: goto  reason: not valid java name */
    public DiscoverBean f6690goto = null;

    /* renamed from: this  reason: not valid java name */
    public NewShareDisBean f6698this = null;

    /* renamed from: native  reason: not valid java name */
    public final w5 f6692native = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.activity.MainActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends w5 {
        public Cdo() {
        }

        @Override // com.apk.w5
        /* renamed from: case */
        public void mo2900case(List<JSONObject> list, final boolean z, final boolean z2) {
            if (list.size() > 0) {
                final ArrayList arrayList = new ArrayList();
                for (int i = 0; i < list.size(); i++) {
                    JSONObject jSONObject = list.get(i);
                    if (jSONObject != null) {
                        arrayList.add(new MarqueeBean(jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE), jSONObject.optString("url"), jSONObject.optString("pkg"), jSONObject.optString("landingtype")));
                    }
                }
                MainActivity.this.post(new Runnable() { // from class: com.apk.r6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.Cdo.this.m3311this(arrayList, z, z2);
                    }
                });
            }
        }

        /* renamed from: else  reason: not valid java name */
        public void m3309else(ConfigMessage configMessage, String str, String str2) {
            try {
                lv lvVar = new lv();
                lvVar.f2941throw = new y7(this);
                lvVar.f2924for = Boolean.FALSE;
                lvVar.f2926if = Boolean.FALSE;
                ConfigMessagePopupView configMessagePopupView = new ConfigMessagePopupView(MainActivity.this, configMessage, str, str2);
                lvVar.f2917continue = zu.f6266try;
                configMessagePopupView.popupInfo = lvVar;
                configMessagePopupView.show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* renamed from: goto  reason: not valid java name */
        public void m3310goto(ConfigMessage configMessage, boolean z) {
            try {
                lv lvVar = new lv();
                lvVar.f2941throw = new z7(this);
                lvVar.f2924for = Boolean.FALSE;
                ConfigImagePopupView configImagePopupView = new ConfigImagePopupView(MainActivity.this, configMessage, z);
                lvVar.f2917continue = zu.f6266try;
                configImagePopupView.popupInfo = lvVar;
                configImagePopupView.show();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* renamed from: this  reason: not valid java name */
        public /* synthetic */ void m3311this(List list, boolean z, boolean z2) {
            if (MainActivity.this.f6683break != null) {
                MainActivity.this.f6683break.f(list, z, z2);
            }
        }

        @Override // com.apk.w5
        /* renamed from: try */
        public boolean mo2905try(JSONObject jSONObject, JSONObject jSONObject2) {
            final ConfigMessage n;
            final ConfigMessage n2;
            if (jSONObject != null) {
                int optInt = jSONObject.optInt("maxcount", 7);
                final String optString = jSONObject.optString("nextlab", "查看");
                final String optString2 = jSONObject.optString("ignorelab", "稍后提醒");
                JSONArray optJSONArray = jSONObject.optJSONArray("infos");
                if (optJSONArray == null || ((optInt != 0 && ze.m3174instanceof(ConfigMessagePopupView.getMessageMaxCountTag(), 0) >= optInt) || (n2 = MainActivity.n(optJSONArray, true)) == null)) {
                    return false;
                }
                MainActivity.this.runOnUiThread(new Runnable() { // from class: com.apk.s6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.Cdo.this.m3309else(n2, optString, optString2);
                    }
                });
                return true;
            }
            if (jSONObject2 != null) {
                int optInt2 = jSONObject2.optInt("maxcount", 7);
                final boolean equals = "yes".equals(jSONObject2.optString("closeflag"));
                JSONArray optJSONArray2 = jSONObject2.optJSONArray("infos");
                if (optJSONArray2 != null && ((optInt2 == 0 || ze.m3174instanceof(ConfigImagePopupView.getMessageMaxCountTag(), 0) < optInt2) && (n = MainActivity.n(optJSONArray2, false)) != null)) {
                    String pdcover = n.getPdcover();
                    r40 r40Var = k40.f2467do;
                    if (r40Var != null) {
                        ((y) r40Var).m3052do(MainActivity.this, pdcover, null, null);
                    }
                    MainActivity.this.runOnUiThread(new Runnable() { // from class: com.apk.q6
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainActivity.Cdo.this.m3310goto(n, equals);
                        }
                    });
                    return true;
                }
            }
            return false;
        }
    }

    public static ConfigMessage n(JSONArray jSONArray, boolean z) {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i2);
            if (optJSONObject != null) {
                optJSONObject.optString("id");
                if (ze.G(optJSONObject.optString("insappgid"))) {
                    break;
                }
                ConfigMessage configMessage = (ConfigMessage) ze.n0(ConfigMessage.class, optJSONObject);
                if (configMessage != null) {
                    arrayList.add(configMessage);
                }
            }
        }
        String str = z ? "SP_HOME_HAIBAO_TEXT_POSITION_KEY" : "SP_HOME_HAIBAO_IMAGE_POSITION_KEY";
        if (arrayList.size() > 0) {
            int m3174instanceof = ze.m3174instanceof(str, 0);
            if (m3174instanceof > arrayList.size() - 1) {
                tt.f4763do.putInt(str, 0);
            } else {
                i = m3174instanceof;
            }
            return (ConfigMessage) arrayList.get(i);
        }
        return null;
    }

    public static void o(MainActivity mainActivity) {
        if (mainActivity != null) {
            c60 c60Var = new c60(mainActivity, new b8(mainActivity, "pupinsert"), "pupinsert");
            mainActivity.f6700throws = c60Var;
            c60Var.m314try();
            if (v.m2734do() == null) {
                throw null;
            }
            return;
        }
        throw null;
    }

    @Override // com.apk.h6, com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_main;
    }

    @Override // com.apk.h6, com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        AppContext.f6392case.f6396new = 1;
        if (v.m2734do() == null) {
            throw null;
        }
    }

    @Override // com.apk.h6, com.apk.f6
    public void initData() {
        boolean z;
        super.initData();
        this.f6691import = new x4(this, this.f6692native);
        this.f6690goto = Ccontinue.m379if().f717import;
        NewShareDisBean m382for = Ccontinue.m379if().m382for();
        this.f6698this = m382for;
        if (m382for != null && m382for.isOnlyCheckTime()) {
            this.f6698this = null;
        }
        if (q()) {
            this.f6684case = 15.0f;
        } else {
            this.f6684case = 22.0f;
        }
        try {
            if (!ze.B() && !ze.C()) {
                ze.a0(this.mSViewPager, 1);
                v(false);
                this.mBottomNavigationView.post(new Runnable() { // from class: com.apk.u6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.this.s();
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mSViewPager.setAdapter(new w7(this, getSupportFragmentManager()));
        SViewPager sViewPager = this.mSViewPager;
        sViewPager.setOffscreenPageLimit(sViewPager.getAdapter() != null ? this.mSViewPager.getAdapter().getCount() : 5);
        MenuItem findItem = this.mBottomNavigationView.getMenu().findItem(R.id.menu_main_tab_share);
        if (findItem != null) {
            if (q()) {
                String str = this.f6688else;
                if (str != null) {
                    findItem.setTitle(str);
                }
                NewShareDisBean newShareDisBean = this.f6698this;
                if (newShareDisBean != null && newShareDisBean.is_tab_show()) {
                    findItem.setIcon(R.drawable.selector_main_tab_share);
                }
                findItem.setVisible(true);
            } else {
                findItem.setVisible(false);
            }
        }
        if (eg.m598goto("SP_APP_AD_APPID_DATA_KEY")) {
            Cfinally.h(this);
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        if (Ccontinue.m379if().m381else()) {
            GMMediationAdSdk.requestPermissionIfNecessary(this);
        } else {
            String m1498if = kg.m1498if();
            if (!m1498if.equals(tt.m2620do("SHOW_APPLY_PERMISSIONS_TODAY_KEY", ""))) {
                w0.m2875extends(this, null, false);
                tt.f4763do.putString("SHOW_APPLY_PERMISSIONS_TODAY_KEY", m1498if);
            }
        }
        if (ze.m3179private("SP_HOME_CONTINUE_READ_KG_KEY", true)) {
            this.mContinueReadLayout.m3399do(this);
        }
    }

    @Override // com.apk.f6
    public void initView() {
        super.initView();
        this.mBottomNavigationView.setOnNavigationItemSelectedListener(this);
        registerEventBus(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        HomeFragment homeFragment;
        super.onActivityResult(i, i2, intent);
        if (i == 103) {
            InfoFragment infoFragment = this.f6687const;
            if (infoFragment != null) {
                infoFragment.n();
            }
        } else if (i == 112 && i2 == -1 && (homeFragment = this.f6683break) != null) {
            homeFragment.k(false, -1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0038  */
    @Override // com.apk.h6, androidx.activity.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onBackPressed() {
        /*
            r4 = this;
            com.biquge.ebook.app.ui.fragment.HomeFragment r0 = r4.f6683break
            if (r0 == 0) goto L3f
            com.biquge.ebook.app.widget.TitleIndicatorView r1 = r0.mTitleIndicatorView
            r2 = 0
            if (r1 == 0) goto L21
            com.apk.hf r1 = r1.getTabModule()
            com.apk.hf r3 = com.apk.hf.BOOK
            if (r1 != r3) goto L23
            com.biquge.ebook.app.ui.fragment.BookShelfFragment r0 = r0.f7465case
            if (r0 == 0) goto L21
            com.apk.t4 r1 = r0.f7359goto
            if (r1 != 0) goto L1a
            goto L21
        L1a:
            com.biquge.ebook.app.adapter.BookGroupAdapter r0 = r0.f7368this
            if (r0 == 0) goto L21
            boolean r0 = r0.f6333for
            goto L36
        L21:
            r0 = 0
            goto L36
        L23:
            com.apk.hf r3 = com.apk.hf.COMIC
            if (r1 != r3) goto L21
            com.manhua.ui.fragment.ComicShelfFragment r0 = r0.f7467else
            if (r0 == 0) goto L21
            com.apk.p3 r1 = r0.f10071while
            if (r1 != 0) goto L30
            goto L21
        L30:
            com.manhua.adapter.ComicGroupAdapter r0 = r0.f10070try
            if (r0 == 0) goto L21
            boolean r0 = r0.f9612for
        L36:
            if (r0 == 0) goto L3f
            com.biquge.ebook.app.ui.fragment.HomeFragment r0 = r4.f6683break
            r1 = -1
            r0.k(r2, r1)
            return
        L3f:
            super.onBackPressed()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.activity.MainActivity.onBackPressed():void");
    }

    @Override // com.apk.h6, com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
        p0.f3542break = null;
        p0.f3544catch = null;
        p0.f3545class = null;
        p0.f3546const = null;
        p0.f3549final = null;
        p0.f3554super = null;
        p0.f3556throw = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        BottomNavigationItemView bottomNavigationItemView;
        String str = mfVar.f3028do;
        if (!"REFRESH_BOOKSTORE_RED_TAG_KEY".equals(str) && !"REFRESH_CHECK_TASK_RED_KEY".equals(str)) {
            if ("SET_SHELF_EDIT_FINISH".equals(str)) {
                HomeFragment homeFragment = this.f6683break;
                if (homeFragment != null) {
                    homeFragment.l(false);
                    homeFragment.f7471new.setItemClickable(true);
                    homeFragment.k(false, -1);
                    BookShelfFragment bookShelfFragment = homeFragment.f7465case;
                    if (bookShelfFragment != null) {
                        bookShelfFragment.f7361import.mo2779new(false, -1);
                    }
                    ComicShelfFragment comicShelfFragment = homeFragment.f7467else;
                    if (comicShelfFragment != null) {
                        comicShelfFragment.f10062native.mo2379for(false, -1);
                        return;
                    }
                    return;
                }
                return;
            } else if ("REFRESH_CLEAR_SHELF_TASK_RED_KEY".equals(str)) {
                if (ze.m3179private("SP_TOP_MSG_RED_TAG_KEY", false)) {
                    if (this.f6689final != null || (bottomNavigationItemView = (BottomNavigationItemView) this.mBottomNavigationView.findViewById(R.id.menu_main_tab_home)) == null) {
                        return;
                    }
                    xp0 xp0Var = new xp0(this);
                    this.f6689final = xp0Var;
                    xp0Var.m3031do(bottomNavigationItemView);
                    xp0Var.m3037this(this.f6684case, 9.0f, true);
                    xp0Var.m3034goto(-1);
                    return;
                }
                xp0 xp0Var2 = this.f6689final;
                if (xp0Var2 != null) {
                    xp0Var2.m3034goto(0);
                    return;
                }
                return;
            } else if ("SP_APP_AD_APPID_DATA_KEY".equals(str) && eg.m598goto("SP_APP_AD_APPID_DATA_KEY")) {
                Cfinally.h(this);
                return;
            } else {
                return;
            }
        }
        new b1().m141do(new x7(this, false));
    }

    @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
    public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_main_tab_home) {
            this.mSViewPager.setCurrentItem(0);
            v(false);
        } else if (menuItem.getItemId() == R.id.menu_main_tab_ranking) {
            this.mSViewPager.setCurrentItem(1);
            v(false);
            if (v.m2734do() == null) {
                throw null;
            }
        } else if (menuItem.getItemId() == R.id.menu_main_tab_category) {
            this.mSViewPager.setCurrentItem(2);
            v(false);
        } else if (menuItem.getItemId() == R.id.menu_main_tab_share) {
            this.mSViewPager.setCurrentItem(3);
            v(false);
            r(false);
        } else if (menuItem.getItemId() == R.id.menu_main_tab_info) {
            this.mSViewPager.setCurrentItem(4);
            v(true);
            if (v.m2734do() == null) {
                throw null;
            }
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        final int intExtra = intent.getIntExtra("type", 1001);
        runOnUiThread(new Runnable() { // from class: com.apk.p6
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.t(intExtra, intent);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f6694return = true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.f6694return) {
            if (!this.f6695static && !AppContext.f6392case.f6397try) {
                this.f6695static = true;
                new b1().m141do(new a8(this));
            }
            if (!this.f6697switch) {
                this.f6697switch = true;
                new b1().m141do(new x7(this, true));
                post(new Runnable() { // from class: com.apk.t6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainActivity.this.u();
                    }
                });
            }
        }
        this.f6694return = false;
    }

    public final boolean q() {
        NewShareDisBean newShareDisBean;
        return this.f6690goto != null || ((newShareDisBean = this.f6698this) != null && newShareDisBean.is_tab_show());
    }

    public final void r(boolean z) {
        BottomNavigationItemView bottomNavigationItemView;
        if (z) {
            if (this.f6699throw != null || (bottomNavigationItemView = (BottomNavigationItemView) this.mBottomNavigationView.findViewById(R.id.menu_main_tab_share)) == null) {
                return;
            }
            xp0 xp0Var = new xp0(this);
            this.f6699throw = xp0Var;
            xp0Var.m3031do(bottomNavigationItemView);
            xp0 xp0Var2 = xp0Var;
            xp0Var2.m3037this(this.f6684case, 9.0f, true);
            xp0Var2.m3034goto(-1);
            return;
        }
        xp0 xp0Var3 = this.f6699throw;
        if (xp0Var3 != null) {
            xp0Var3.m3034goto(0);
            tt.f4763do.putBoolean("SP_IS_VISIBLE_GAME_TAG_VIEW_KEY", false);
        }
    }

    public /* synthetic */ void s() {
        this.mBottomNavigationView.setSelectedItemId(R.id.menu_main_tab_ranking);
    }

    public /* synthetic */ void t(int i, Intent intent) {
        if (1001 == i) {
            this.mBottomNavigationView.setSelectedItemId(R.id.menu_main_tab_home);
            if (intent.hasExtra("source")) {
                hf hfVar = (hf) intent.getSerializableExtra("source");
                HomeFragment homeFragment = this.f6683break;
                if (homeFragment != null) {
                    homeFragment.i(hfVar);
                }
            }
        } else if (1002 == i) {
            this.mBottomNavigationView.setSelectedItemId(R.id.menu_main_tab_ranking);
            if (intent.hasExtra("source")) {
                hf hfVar2 = (hf) intent.getSerializableExtra("source");
                MainStoreFragment mainStoreFragment = this.f6685catch;
                if (mainStoreFragment != null) {
                    mainStoreFragment.m3382synchronized(hfVar2);
                }
            }
        }
    }

    public /* synthetic */ void u() {
        this.f6691import.m2967catch(ze.m3193volatile());
    }

    public final void v(boolean z) {
        if (this.f6693public != z) {
            this.f6693public = z;
            if (this.mImmersionBar == null) {
                initImmersionBar();
            }
            iu iuVar = this.mImmersionBar;
            iuVar.m1279const(z, 0.2f);
            iuVar.m1281else();
        }
    }
}
