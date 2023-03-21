package com.apk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.apk.xx;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.NewVersionBean;
import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicCollectBean;
import com.ss.android.download.api.constant.BaseConstants;
import java.io.File;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;

/* compiled from: AppUpgradeManager.java */
/* loaded from: classes8.dex */
public class p {

    /* renamed from: case  reason: not valid java name */
    public static p f3530case;

    /* renamed from: do  reason: not valid java name */
    public int f3531do;

    /* renamed from: for  reason: not valid java name */
    public Cnew f3532for;

    /* renamed from: if  reason: not valid java name */
    public NewVersionBean f3533if;

    /* renamed from: new  reason: not valid java name */
    public Cnew f3534new;

    /* renamed from: try  reason: not valid java name */
    public Cnew f3535try;

    /* compiled from: AppUpgradeManager.java */
    /* renamed from: com.apk.p$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends c1<Object> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f3536do;

        public Cdo(boolean z) {
            this.f3536do = z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:106:0x01b2, code lost:
            if (r0.getNewVersion() > com.apk.ze.k()) goto L91;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x009b, code lost:
            if (com.apk.ze.G(r11) != false) goto L149;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x009d, code lost:
            r20 = r2;
            r17 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x017c, code lost:
            if (r0.optInt("new") > r7) goto L47;
         */
        /* JADX WARN: Removed duplicated region for block: B:112:0x01bd  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x018f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00fa A[Catch: Exception -> 0x0151, TryCatch #4 {Exception -> 0x0151, blocks: (B:49:0x00eb, B:52:0x00f4, B:54:0x00fa, B:56:0x0100, B:58:0x010a, B:60:0x0114, B:76:0x014c, B:63:0x011f, B:65:0x0125, B:67:0x012f, B:69:0x0132, B:71:0x0138, B:74:0x0145, B:80:0x0155, B:82:0x015d, B:84:0x0167, B:86:0x0171, B:89:0x0178, B:37:0x00bf, B:40:0x00ca, B:43:0x00d6), top: B:152:0x00bf }] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0171 A[Catch: Exception -> 0x0151, TryCatch #4 {Exception -> 0x0151, blocks: (B:49:0x00eb, B:52:0x00f4, B:54:0x00fa, B:56:0x0100, B:58:0x010a, B:60:0x0114, B:76:0x014c, B:63:0x011f, B:65:0x0125, B:67:0x012f, B:69:0x0132, B:71:0x0138, B:74:0x0145, B:80:0x0155, B:82:0x015d, B:84:0x0167, B:86:0x0171, B:89:0x0178, B:37:0x00bf, B:40:0x00ca, B:43:0x00d6), top: B:152:0x00bf }] */
        /* JADX WARN: Removed duplicated region for block: B:89:0x0178 A[Catch: Exception -> 0x0151, TRY_LEAVE, TryCatch #4 {Exception -> 0x0151, blocks: (B:49:0x00eb, B:52:0x00f4, B:54:0x00fa, B:56:0x0100, B:58:0x010a, B:60:0x0114, B:76:0x014c, B:63:0x011f, B:65:0x0125, B:67:0x012f, B:69:0x0132, B:71:0x0138, B:74:0x0145, B:80:0x0155, B:82:0x015d, B:84:0x0167, B:86:0x0171, B:89:0x0178, B:37:0x00bf, B:40:0x00ca, B:43:0x00d6), top: B:152:0x00bf }] */
        @Override // com.apk.c1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object doInBackground() {
            /*
                Method dump skipped, instructions count: 717
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.p.Cdo.doInBackground():java.lang.Object");
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            p.this.m1994try();
        }

        @Override // com.apk.c1
        public void onPreExecute() {
            super.onPreExecute();
            Cnew cnew = p.this.f3532for;
            if (cnew != null) {
                cnew.mo154goto();
            }
            Cnew cnew2 = p.this.f3534new;
            if (cnew2 != null) {
                cnew2.mo154goto();
            }
            Cnew cnew3 = p.this.f3535try;
            if (cnew3 != null) {
                cnew3.mo154goto();
            }
        }
    }

    /* compiled from: AppUpgradeManager.java */
    /* renamed from: com.apk.p$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends sy {

        /* renamed from: for  reason: not valid java name */
        public final String f3538for;

        /* renamed from: if  reason: not valid java name */
        public final Context f3539if;

        /* renamed from: new  reason: not valid java name */
        public final int f3540new;

        public Cfor(Context context, NewVersionBean newVersionBean) {
            super(newVersionBean.getFile());
            this.f3539if = context;
            this.f3538for = ze.q(R.string.app_new_txt);
            this.f3540new = newVersionBean.getFile().hashCode();
        }

        @Override // com.apk.sy
        /* renamed from: case  reason: not valid java name */
        public void mo304if(File file, hy hyVar) {
            ze.z(this.f3539if, file);
            cg.m332if().m333do(this.f3540new);
            Cnew cnew = p.this.f3532for;
            if (cnew != null) {
                cnew.a(new File(hyVar.f2014new));
            }
            Cnew cnew2 = p.this.f3534new;
            if (cnew2 != null) {
                cnew2.a(new File(hyVar.f2014new));
            }
            Cnew cnew3 = p.this.f3535try;
            if (cnew3 != null) {
                cnew3.a(new File(hyVar.f2014new));
            }
        }

        @Override // com.apk.sy
        /* renamed from: do */
        public void mo302do(hy hyVar) {
            ToastUtils.show((CharSequence) ze.q(R.string.download_faild_txt));
            Cnew cnew = p.this.f3532for;
            if (cnew != null) {
                cnew.mo155instanceof();
            }
            Cnew cnew2 = p.this.f3534new;
            if (cnew2 != null) {
                cnew2.mo155instanceof();
            }
            Cnew cnew3 = p.this.f3535try;
            if (cnew3 != null) {
                cnew3.mo155instanceof();
            }
        }

        @Override // com.apk.sy
        /* renamed from: for */
        public void mo303for(hy hyVar) {
            long j = hyVar.f2010goto;
            long j2 = hyVar.f2007else;
            if (j2 < 0) {
                j2 = 0;
            }
            Cnew cnew = p.this.f3532for;
            if (cnew != null) {
                cnew.onProgress(j, j2);
            }
            Cnew cnew2 = p.this.f3534new;
            if (cnew2 != null) {
                cnew2.onProgress(j, j2);
            }
            Cnew cnew3 = p.this.f3535try;
            if (cnew3 != null) {
                cnew3.onProgress(j, j2);
            }
            cg.m332if().m335new(this.f3540new, (int) j2, (int) j);
        }

        @Override // com.apk.sy
        /* renamed from: new */
        public void mo305new(hy hyVar) {
        }

        @Override // com.apk.sy
        /* renamed from: try */
        public void mo306try(hy hyVar) {
            cg.m332if().m334for(this.f3539if, this.f3540new, this.f3538for);
        }
    }

    /* compiled from: AppUpgradeManager.java */
    /* renamed from: com.apk.p$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {
        public Cif(p pVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (v0.m2736try().m2741const()) {
                try {
                    for (CollectBook collectBook : n2.b()) {
                        if (!collectBook.isLocalBook()) {
                            try {
                                HashMap hashMap = new HashMap();
                                hashMap.put("action", "addbookmark");
                                hashMap.put("bookid", collectBook.getCollectId());
                                hashMap.put("chapterid", collectBook.getReadChapterId());
                                hashMap.put("chaptername", collectBook.getReadChapterName());
                                x4.m2953extends(w.m2854package(), hashMap);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                for (ComicCollectBean comicCollectBean : mu.m1785synchronized()) {
                    try {
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put("action", "addbookmark");
                        hashMap2.put("bookid", comicCollectBean.getCollectId());
                        hashMap2.put("chapterid", comicCollectBean.getReadChapterId());
                        hashMap2.put("chaptername", comicCollectBean.getReadChapterName());
                        x4.m2953extends(w.m2849goto(), hashMap2);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
            }
        }
    }

    /* compiled from: AppUpgradeManager.java */
    /* renamed from: com.apk.p$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cnew {
        void a(File file);

        /* renamed from: for */
        void mo153for();

        /* renamed from: goto */
        void mo154goto();

        void h();

        /* renamed from: instanceof */
        void mo155instanceof();

        void onProgress(long j, long j2);

        /* renamed from: static */
        void mo156static(NewVersionBean newVersionBean);
    }

    /* renamed from: case  reason: not valid java name */
    public static boolean m1988case(Context context, String str) {
        if (str.contains("play.google.com")) {
            if (ze.G("com.android.vending")) {
                String str2 = null;
                try {
                    str2 = ze.h0(str, str.lastIndexOf("id="), str.length());
                    if (!TextUtils.isEmpty(str2)) {
                        str2 = str2.replace("id=", "");
                    }
                    if (TextUtils.isEmpty(str2)) {
                        str2 = ze.m3168finally();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(BaseConstants.MARKET_PREFIX + str2));
                if (!TextUtils.isEmpty("com.android.vending")) {
                    intent.setPackage("com.android.vending");
                }
                intent.addFlags(268435456);
                context.startActivity(intent);
                return true;
            }
            eg.m584abstract(context, str);
            return true;
        }
        return false;
    }

    /* renamed from: do  reason: not valid java name */
    public static void m1989do(p pVar, boolean z, int i, NewVersionBean newVersionBean) {
        if (pVar == null) {
            throw null;
        }
        if (newVersionBean != null) {
            newVersionBean.setForce_user(z);
            newVersionBean.setXgDay_user(i);
            if (z) {
                tt.f4763do.putBoolean("SP_SHOW_UPGRADE_FORCE_KEY", true);
            }
            pVar.f3533if = newVersionBean;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static p m1990for() {
        if (f3530case == null) {
            synchronized (p.class) {
                if (f3530case == null) {
                    f3530case = new p();
                }
            }
        }
        return f3530case;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* renamed from: else  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void m1991else(android.app.Activity r9) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.p.m1991else(android.app.Activity):void");
    }

    /* renamed from: if  reason: not valid java name */
    public void m1992if(boolean z) {
        if (this.f3533if != null) {
            m1994try();
        } else {
            new b1().m141do(new Cdo(z));
        }
    }

    /* renamed from: new  reason: not valid java name */
    public String m1993new() {
        try {
            if (this.f3533if != null) {
                String file = this.f3533if.getFile();
                String md5 = this.f3533if.getMd5();
                hy m3051case = xx.Cif.f5816do.m3051case(file + "_" + this.f3533if.getNewVersion());
                if (m3051case == null || m3051case.f2014new == null || m3051case.f2001break != 5) {
                    return null;
                }
                File file2 = new File(m3051case.f2014new);
                if (file2.exists()) {
                    if (!TextUtils.isEmpty(md5) && md5.equals(rt.m2360do(file2))) {
                        return m3051case.f2014new;
                    }
                    file2.delete();
                    return null;
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m1994try() {
        Cnew cnew = this.f3532for;
        if (cnew != null) {
            cnew.mo153for();
            NewVersionBean newVersionBean = this.f3533if;
            if (newVersionBean != null) {
                this.f3532for.mo156static(newVersionBean);
            }
        }
        Cnew cnew2 = this.f3534new;
        if (cnew2 != null) {
            cnew2.mo153for();
            NewVersionBean newVersionBean2 = this.f3533if;
            if (newVersionBean2 != null) {
                this.f3534new.mo156static(newVersionBean2);
            }
        }
        Cnew cnew3 = this.f3535try;
        if (cnew3 != null) {
            cnew3.mo153for();
            NewVersionBean newVersionBean3 = this.f3533if;
            if (newVersionBean3 != null) {
                this.f3535try.mo156static(newVersionBean3);
            } else {
                ToastUtils.show((int) R.string.app_new_version_txt);
            }
        }
    }
}
