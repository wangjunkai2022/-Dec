package com.apk;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.User;
import com.biquge.ebook.app.receiver.PkgReceiver;
import com.bytedance.pangle.servermanager.AbsServerManager;
import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicCollectBean;
import com.swl.gg.ggs.SwlAdAdInsert;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;

/* compiled from: BaseMainActivity.java */
/* loaded from: classes8.dex */
public class h6 extends f6 {

    /* renamed from: do  reason: not valid java name */
    public PkgReceiver f1791do;

    /* renamed from: for  reason: not valid java name */
    public List<CollectBook> f1792for;

    /* renamed from: if  reason: not valid java name */
    public long f1793if;

    /* renamed from: new  reason: not valid java name */
    public List<ComicCollectBean> f1794new;

    /* renamed from: try  reason: not valid java name */
    public User f1795try;

    @Override // com.apk.f6
    public int getLayoutId() {
        return 0;
    }

    public void i() {
        o m1921for = o.m1921for();
        Runnable runnable = new Runnable() { // from class: com.apk.c6
            @Override // java.lang.Runnable
            public final void run() {
                h6.this.k();
            }
        };
        ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(runnable);
        }
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        setStatusTransparent();
        u0 m2663do = u0.m2663do();
        if (m2663do != null) {
            m2663do.f4813do = iu.m1275try(this);
            if (new au(this).f174for && new au(this).m112for()) {
                m2663do.f4815if = new au(this).f176new;
            }
            boolean m603interface = eg.m603interface(this);
            m2663do.f4814for = m603interface;
            if (!m603interface) {
                m2663do.f4814for = iu.m1271case(this);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
            PkgReceiver pkgReceiver = new PkgReceiver();
            this.f1791do = pkgReceiver;
            registerReceiver(pkgReceiver, intentFilter);
            Intent intent = getIntent();
            if (intent != null && intent.hasExtra("openType")) {
                if (v.m2734do() == null) {
                    throw null;
                }
                return;
            } else if (v.m2734do() == null) {
                throw null;
            } else {
                return;
            }
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ed, code lost:
        com.apk.w0.m2885package(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f1, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f2, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01f7, code lost:
        if (r18.f1792for != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0201, code lost:
        r0 = r18.f1795try;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0203, code lost:
        if (r0 == null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x020f, code lost:
        r0 = r18.f1795try.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0216, code lost:
        r0 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0218, code lost:
        r0 = com.apk.v0.m2736try().m2745for(r0);
        r4 = new com.apk.zs();
        r4.f6243do = r18;
        r4.f6246for = com.apk.ze.r(kimi.wuhends.ebooks.R.string.main_sync_user_data_msg, r0);
        r4.f6249new = com.apk.ze.q(kimi.wuhends.ebooks.R.string.main_sync_btn_txt);
        r4.f6251try = new com.apk.d6(r18);
        com.apk.eg.f(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x024f, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0250, code lost:
        if (r14 != null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0252, code lost:
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0255, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0256, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0257, code lost:
        r14 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0258, code lost:
        r4 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0259, code lost:
        if (r4 != null) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x025b, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x025e, code lost:
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cf, code lost:
        if (r15 != null) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00dc, code lost:
        if (r15 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00de, code lost:
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e1, code lost:
        r18.f1792for = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e3, code lost:
        r4 = r3.getContentResolver().query(android.net.Uri.parse("content://" + r12 + ".MyContentProvider/ComicCollectBean"), null, null, null, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0107, code lost:
        if (r4 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0109, code lost:
        r14 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0112, code lost:
        if (r4.moveToNext() == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0114, code lost:
        r0 = com.apk.n2.c(com.manhua.data.bean.ComicCollectBean.class.getName());
        r10 = com.apk.n2.d(com.manhua.data.bean.ComicCollectBean.class.getName());
        r15 = new com.manhua.data.bean.ComicCollectBean();
        com.apk.n2.e(r15, r4.getLong(r4.getColumnIndexOrThrow("id")));
        com.apk.n2.D(r15, r0, r4);
        com.apk.n2.B(r3, r12, r15, r15.getDbBaseObjId(), r10, new java.util.HashMap());
        r14.add(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x014e, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0150, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0153, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0155, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0156, code lost:
        if (r4 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0159, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x015a, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x015d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x015e, code lost:
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015f, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0160, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0163, code lost:
        if (r4 != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0165, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0168, code lost:
        r18.f1794new = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016a, code lost:
        r3 = r3.getContentResolver().query(android.net.Uri.parse("content://" + r12 + ".MyContentProvider/User"), null, null, null, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x018e, code lost:
        if (r3 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0190, code lost:
        r4 = new com.biquge.ebook.app.bean.User();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0199, code lost:
        if (r3.moveToFirst() == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x019b, code lost:
        com.apk.n2.D(r4, com.apk.n2.c(com.biquge.ebook.app.bean.User.class.getName()), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a8, code lost:
        r14 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01aa, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01ab, code lost:
        r14 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01ad, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ae, code lost:
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01b1, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01b2, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b3, code lost:
        r17 = r14;
        r14 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01b7, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01b8, code lost:
        if (r3 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01ba, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01be, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01bf, code lost:
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c2, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c3, code lost:
        r14 = null;
        r17 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01c6, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01c9, code lost:
        if (r14 != null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01cb, code lost:
        r14.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01ce, code lost:
        r14 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01d0, code lost:
        r18.f1795try = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01d3, code lost:
        if (r14 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01d5, code lost:
        com.apk.tt.f4763do.putBoolean("SP_SHOW_AGREENMENT_KEY", true);
        com.apk.tt.f4763do.putBoolean("SP_SELECT_GENDER_KEY", true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e3, code lost:
        r0 = com.apk.w0.m2879goto();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01eb, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0264  */
    @Override // com.apk.f6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void initData() {
        /*
            Method dump skipped, instructions count: 622
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.h6.initData():void");
    }

    @Override // com.apk.f6
    public boolean isImmersionBarEnabled() {
        return false;
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    public /* synthetic */ void j() {
        g5.m940try(this.f1795try.getLoginType(), this.f1795try.getName(), this.f1795try.getPwd());
    }

    public void k() {
        List<CollectBook> list = this.f1792for;
        if (list != null && list.size() > 0) {
            for (CollectBook collectBook : this.f1792for) {
                collectBook.clearSavedState();
                n2.v(collectBook);
            }
            ze.Y(true);
            ze.O("SP_BOOK_READ_FIRST_GUIDE_KEY", true);
        }
        List<ComicCollectBean> list2 = this.f1794new;
        if (list2 != null && list2.size() > 0) {
            for (ComicCollectBean comicCollectBean : this.f1794new) {
                comicCollectBean.clearSavedState();
                mu.x(comicCollectBean);
            }
            ze.Z(true);
            ze.O("SP_READ_FIRST_GUIDE_KEY", true);
        }
        ze.V();
        if (!v0.m2736try().m2741const() && this.f1795try != null) {
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.e6
                @Override // java.lang.Runnable
                public final void run() {
                    h6.this.j();
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
            }
        }
        this.f1792for = null;
        this.f1794new = null;
        this.f1795try = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (System.currentTimeMillis() - this.f1793if < ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS) {
            super.onBackPressed();
            return;
        }
        ToastUtils.show((int) R.string.main_exit_app_tips_tx);
        this.f1793if = System.currentTimeMillis();
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        PkgReceiver pkgReceiver = this.f1791do;
        if (pkgReceiver != null) {
            unregisterReceiver(pkgReceiver);
        }
        cg m332if = cg.m332if();
        if (m332if != null) {
            Map<String, NotificationCompat.Builder> map = cg.f598for;
            if (map != null) {
                for (Map.Entry<String, NotificationCompat.Builder> entry : map.entrySet()) {
                    m332if.m333do(Integer.parseInt(entry.getKey()));
                }
                try {
                    if (cg.f599if != null && Build.VERSION.SDK_INT >= 26) {
                        cg.f599if.deleteNotificationChannel("bqg_channel");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            o0.m1925else().m1942while();
            e m520while = e.m520while();
            if (m520while.f1158if != null) {
                m520while.f1158if = null;
            }
            if (e.f970this != null) {
                e.f970this = null;
            }
            c m286while = c.m286while();
            if (m286while.f1158if != null) {
                m286while.f1158if = null;
            }
            if (c.f471this != null) {
                c.f471this = null;
            }
            AppContext appContext = AppContext.f6392case;
            if (appContext.f6393do != null) {
                appContext.f6393do = null;
            }
            AppContext.Cif cif = appContext.f6394for;
            if (cif != null) {
                cif.removeCallbacksAndMessages(null);
                appContext.f6394for = null;
            }
            Cswitch m2557for = Cswitch.m2557for();
            d60 d60Var = m2557for.f4610try;
            if (d60Var != null) {
                d60Var.m409case();
                m2557for.f4610try = null;
            }
            SwlAdAdInsert swlAdAdInsert = m2557for.f4606else;
            if (swlAdAdInsert != null) {
                swlAdAdInsert.onDestroy();
                m2557for.f4606else = null;
            }
            List<CollectBook> list = this.f1792for;
            if (list != null) {
                list.clear();
                this.f1792for = null;
            }
            List<ComicCollectBean> list2 = this.f1794new;
            if (list2 != null) {
                list2.clear();
                this.f1794new = null;
            }
            if (this.f1795try != null) {
                this.f1795try = null;
                return;
            }
            return;
        }
        throw null;
    }
}
