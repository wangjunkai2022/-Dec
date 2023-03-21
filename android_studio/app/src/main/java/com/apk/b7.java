package com.apk;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import com.apk.p;
import com.apk.zu;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.CommendMediaListNameBean;
import com.biquge.ebook.app.bean.MhtgTwoBean;
import com.biquge.ebook.app.bean.NewVersionBean;
import com.biquge.ebook.app.bean.SameCommendBean;
import com.biquge.ebook.app.bean.SameTjConfig;
import com.biquge.ebook.app.ui.view.AppUpgradeLayout;
import com.biquge.ebook.app.ui.view.MhtgDownloadLayout;
import com.expand.CommendMediaDialog;
import com.manhua.data.bean.ComicBean;
import java.io.File;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* compiled from: BaseReadActivity.java */
/* loaded from: classes8.dex */
public abstract class b7 extends f6 {

    /* renamed from: case  reason: not valid java name */
    public SameTjConfig f250case;

    /* renamed from: do  reason: not valid java name */
    public long f251do;

    /* renamed from: else  reason: not valid java name */
    public boolean f252else;

    /* renamed from: for  reason: not valid java name */
    public AppUpgradeLayout f253for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f254goto;

    /* renamed from: if  reason: not valid java name */
    public MhtgDownloadLayout f255if;

    /* renamed from: new  reason: not valid java name */
    public final ComponentCallbacks2 f256new = new Cdo(this);

    /* renamed from: try  reason: not valid java name */
    public Timer f257try;

    /* compiled from: BaseReadActivity.java */
    /* renamed from: com.apk.b7$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ComponentCallbacks2 {
        public Cdo(b7 b7Var) {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(@NonNull Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i >= 20) {
                ii.m1220new(AppContext.f6392case).m1222for();
            }
        }
    }

    /* compiled from: BaseReadActivity.java */
    /* renamed from: com.apk.b7$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements p.Cnew {
        public Cfor() {
        }

        @Override // com.apk.p.Cnew
        public void a(File file) {
            AppUpgradeLayout appUpgradeLayout = b7.this.f253for;
            if (appUpgradeLayout == null || appUpgradeLayout.getVisibility() != 0) {
                return;
            }
            b7.this.f253for.m3389do(file);
        }

        @Override // com.apk.p.Cnew
        /* renamed from: for  reason: not valid java name */
        public void mo153for() {
        }

        @Override // com.apk.p.Cnew
        /* renamed from: goto  reason: not valid java name */
        public void mo154goto() {
        }

        @Override // com.apk.p.Cnew
        public void h() {
            AppUpgradeLayout appUpgradeLayout = b7.this.f253for;
            if (appUpgradeLayout == null || appUpgradeLayout.getVisibility() != 0) {
                return;
            }
            b7.this.f253for.setVisibility(8);
        }

        @Override // com.apk.p.Cnew
        /* renamed from: instanceof  reason: not valid java name */
        public void mo155instanceof() {
            AppUpgradeLayout appUpgradeLayout = b7.this.f253for;
            if (appUpgradeLayout == null || appUpgradeLayout.getVisibility() != 0) {
                return;
            }
            b7.this.f253for.m3390for();
        }

        @Override // com.apk.p.Cnew
        public void onProgress(long j, long j2) {
            AppUpgradeLayout appUpgradeLayout = b7.this.f253for;
            if (appUpgradeLayout == null || appUpgradeLayout.getVisibility() != 0) {
                return;
            }
            b7.this.f253for.m3391if(j, j2);
        }

        @Override // com.apk.p.Cnew
        /* renamed from: static  reason: not valid java name */
        public void mo156static(NewVersionBean newVersionBean) {
            if (newVersionBean != null) {
                try {
                    if (b7.this.f253for == null) {
                        b7.this.f253for = (AppUpgradeLayout) ((ViewStub) b7.this.findViewById(R.id.app_upgrade_layout)).inflate();
                    }
                    if (b7.this.f253for == null || b7.this.f253for.getVisibility() != 0) {
                        return;
                    }
                    b7.this.f253for.m3392new(b7.this, newVersionBean, true);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* compiled from: BaseReadActivity.java */
    /* renamed from: com.apk.b7$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends c1<List<CommendMediaListNameBean>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f259do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ SameCommendBean f260for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f261if;

        public Cif(boolean z, String str, SameCommendBean sameCommendBean) {
            this.f259do = z;
            this.f261if = str;
            this.f260for = sameCommendBean;
        }

        @Override // com.apk.c1
        public List<CommendMediaListNameBean> doInBackground() {
            if (this.f259do) {
                Book m2761throw = v3.m2761throw(this.f261if, true);
                if (m2761throw != null) {
                    return m2761throw.getCommendMediaList();
                }
                return null;
            }
            ComicBean m3134super = z2.m3134super(this.f261if, true);
            if (m3134super != null) {
                return m3134super.getCommendMediaList();
            }
            return null;
        }

        @Override // com.apk.c1
        public void onPostExecute(List<CommendMediaListNameBean> list) {
            StringBuilder sb;
            String str;
            List<CommendMediaListNameBean> list2 = list;
            super.onPostExecute(list2);
            if (list2 == null || list2.size() <= 0) {
                return;
            }
            b7 b7Var = b7.this;
            if (this.f259do) {
                sb = new StringBuilder();
                str = "NOVEL_";
            } else {
                sb = new StringBuilder();
                str = "COMIC_";
            }
            sb.append(str);
            sb.append(this.f261if);
            String sb2 = sb.toString();
            SameCommendBean sameCommendBean = this.f260for;
            if (b7Var != null) {
                try {
                    SameTjConfig sameTjConfig = (SameTjConfig) LitePal.where("tId = ?", sb2).findFirst(SameTjConfig.class);
                    b7Var.f250case = sameTjConfig;
                    if (sameTjConfig == null) {
                        SameTjConfig sameTjConfig2 = new SameTjConfig();
                        b7Var.f250case = sameTjConfig2;
                        sameTjConfig2.settId(sb2);
                        b7Var.f250case.setRewardTime(sameCommendBean.getFirst() * 60 * 1000);
                        b7Var.f250case.save();
                    } else if (sameTjConfig.getShowCount() >= sameCommendBean.getMax_count()) {
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Timer timer = new Timer();
                b7Var.f257try = timer;
                timer.schedule(new c7(b7Var, list2, sameCommendBean, sb2), 5000L, 5000L);
                return;
            }
            throw null;
        }
    }

    public static void i(b7 b7Var, MhtgTwoBean mhtgTwoBean) {
        b7Var.runOnUiThread(new f7(b7Var, mhtgTwoBean));
    }

    public static void j(b7 b7Var, MhtgTwoBean mhtgTwoBean) {
        b7Var.runOnUiThread(new h7(b7Var, mhtgTwoBean));
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return 0;
    }

    @Override // com.apk.f6
    public void initData() {
        super.initData();
        if (!l(false)) {
            if ("SOURCE_NOVEL_VALUE".equals(m())) {
                if (Ccontinue.m379if().f706break != null) {
                    this.f251do = System.currentTimeMillis();
                    o m1921for = o.m1921for();
                    e7 e7Var = new e7(this);
                    ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.execute(e7Var);
                    }
                }
            } else if ("SOURCE_CARTTON_VALUE".equals(m()) && Ccontinue.m379if().f725this != null) {
                this.f251do = System.currentTimeMillis();
                o m1921for2 = o.m1921for();
                g7 g7Var = new g7(this);
                ThreadPoolExecutor threadPoolExecutor2 = m1921for2.f3327do;
                if (threadPoolExecutor2 != null) {
                    threadPoolExecutor2.execute(g7Var);
                }
            }
        }
        registerComponentCallbacks(this.f256new);
    }

    public void k(String str, boolean z) {
        SameCommendBean sameCommendBean;
        if ((z && !TextUtils.isEmpty(str) && (str.contains("search_") || str.contains("wap_"))) || (sameCommendBean = Ccontinue.m379if().f712else) == null) {
            return;
        }
        new b1().m141do(new Cif(z, str, sameCommendBean));
    }

    public boolean l(boolean z) {
        try {
            NewVersionBean newVersionBean = p.m1990for().f3533if;
            if (z || (newVersionBean != null && newVersionBean.isForce_user())) {
                p m1990for = p.m1990for();
                m1990for.f3534new = new Cfor();
                m1990for.m1992if(false);
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public abstract String m();

    public /* synthetic */ void n(List list) {
        new zu.Cdo(this).m3251class(Boolean.FALSE).m3252const(new d7(this)).m3259this(new CommendMediaDialog(this, list)).show();
    }

    public void o(boolean z, boolean z2) {
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Timer timer = this.f257try;
        if (timer != null) {
            timer.cancel();
            this.f257try = null;
        }
        unregisterComponentCallbacks(this.f256new);
        p.m1990for().f3534new = null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f254goto = true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f254goto = false;
    }
}
