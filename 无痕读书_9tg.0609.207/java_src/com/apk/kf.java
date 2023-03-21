package com.apk;

import android.content.Context;
import android.text.TextUtils;
import com.apk.ry;
import com.apk.xx;
import com.biquge.ebook.app.bean.DownloadFileModel;
import com.biquge.ebook.app.bean.NewReadFont;
import com.biquge.ebook.app.bean.TaskInfo;
import com.hjq.toast.ToastUtils;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* compiled from: DownloadFileManager.java */
/* loaded from: classes8.dex */
public class kf {

    /* renamed from: for  reason: not valid java name */
    public static kf f2524for;

    /* renamed from: new  reason: not valid java name */
    public static gg<String, hy> f2525new;

    /* renamed from: do  reason: not valid java name */
    public Map<String, NewReadFont> f2526do;

    /* renamed from: if  reason: not valid java name */
    public final z5 f2527if = new Cdo();

    /* compiled from: DownloadFileManager.java */
    /* renamed from: com.apk.kf$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements z5 {
        public Cdo() {
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x006f A[Catch: Exception -> 0x009b, TRY_LEAVE, TryCatch #2 {Exception -> 0x009b, blocks: (B:13:0x002f, B:23:0x005d, B:25:0x0063, B:27:0x0067, B:28:0x0069, B:30:0x006f), top: B:55:0x002f }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00af A[Catch: Exception -> 0x00ed, TryCatch #0 {Exception -> 0x00ed, blocks: (B:7:0x0011, B:9:0x0017, B:11:0x0023, B:39:0x00a3, B:41:0x00af, B:43:0x00bc, B:44:0x00bf, B:46:0x00c3, B:47:0x00ec, B:37:0x009d), top: B:52:0x0011 }] */
        /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
        @Override // com.apk.z5
        /* renamed from: do */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo581do(java.io.File r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 242
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.kf.Cdo.mo581do(java.io.File, java.lang.String):void");
        }

        @Override // com.apk.z5
        /* renamed from: for */
        public void mo582for(int i, int i2, String str) {
            kf kfVar = kf.this;
            if (kfVar.f2526do == null) {
                kfVar.f2526do = new HashMap();
            }
            try {
                NewReadFont newReadFont = kf.this.f2526do.get(str);
                if (newReadFont != null) {
                    newReadFont.setCurrentSize(i2);
                    newReadFont.setTotalSize(i);
                    if (kf.this != null) {
                        mf.m1712do("CACHE_DOWNLOAD_FONT_START", newReadFont);
                        return;
                    }
                    throw null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.z5
        /* renamed from: if */
        public void mo583if(String str, String str2) {
            kf kfVar = kf.this;
            if (kfVar.f2526do == null) {
                kfVar.f2526do = new HashMap();
            }
            try {
                NewReadFont newReadFont = kf.this.f2526do.get(str2);
                if (newReadFont != null) {
                    newReadFont.setFinish(false);
                    newReadFont.setStartDownload(false);
                    if (kf.this != null) {
                        mf.m1712do("CACHE_DOWNLOAD_FONT_START", newReadFont);
                    } else {
                        throw null;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            kf.this.f2526do.remove(str2);
        }
    }

    /* compiled from: DownloadFileManager.java */
    /* renamed from: com.apk.kf$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends sy {

        /* renamed from: for  reason: not valid java name */
        public final String f2529for;

        /* renamed from: if  reason: not valid java name */
        public final String f2530if;

        public Cfor(String str, String str2) {
            super(str2);
            this.f2530if = str;
            this.f2529for = str2;
        }

        @Override // com.apk.sy
        /* renamed from: do */
        public void mo302do(hy hyVar) {
            kf.m1481do(this.f2529for, hyVar);
        }

        @Override // com.apk.sy
        /* renamed from: for */
        public void mo303for(hy hyVar) {
            kf.m1481do(this.f2529for, hyVar);
        }

        @Override // com.apk.sy
        /* renamed from: if */
        public void mo304if(Object obj, hy hyVar) {
            String str = this.f2530if;
            String str2 = this.f2529for;
            new b1().m141do(new lf(((File) obj).getPath(), str, str2));
        }

        @Override // com.apk.sy
        /* renamed from: new */
        public void mo305new(hy hyVar) {
            kf.m1481do(this.f2529for, hyVar);
        }

        @Override // com.apk.sy
        /* renamed from: try */
        public void mo306try(hy hyVar) {
            kf.m1481do(this.f2529for, hyVar);
        }
    }

    /* compiled from: DownloadFileManager.java */
    /* renamed from: com.apk.kf$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends sy {

        /* renamed from: for  reason: not valid java name */
        public final int f2531for;

        /* renamed from: if  reason: not valid java name */
        public final Context f2532if;

        /* renamed from: new  reason: not valid java name */
        public final DownloadFileModel f2533new;

        /* renamed from: try  reason: not valid java name */
        public final z5 f2534try;

        public Cif(Context context, DownloadFileModel downloadFileModel, z5 z5Var) {
            super(downloadFileModel.url);
            this.f2532if = context;
            this.f2531for = downloadFileModel.url.hashCode();
            this.f2533new = downloadFileModel;
            this.f2534try = z5Var;
        }

        /* renamed from: case  reason: not valid java name */
        public void m1490case(File file) {
            if (this.f2533new.isInstall) {
                ze.z(this.f2532if, file);
            }
            if (this.f2533new.isShowNotice) {
                cg.m332if().m333do(this.f2531for);
            }
            z5 z5Var = this.f2534try;
            if (z5Var != null) {
                z5Var.mo581do(file, this.f2533new.url);
            }
        }

        @Override // com.apk.sy
        /* renamed from: do */
        public void mo302do(hy hyVar) {
            if (this.f2533new.isShowToast) {
                ToastUtils.show((int) R.string.download_faild_txt);
            }
            if (this.f2533new.isShowNotice) {
                cg.m332if().m333do(this.f2531for);
            }
            z5 z5Var = this.f2534try;
            if (z5Var != null) {
                z5Var.mo583if(hyVar.f2021while.getMessage(), this.f2533new.url);
            }
        }

        @Override // com.apk.sy
        /* renamed from: for */
        public void mo303for(hy hyVar) {
            if (this.f2533new.isShowNotice) {
                cg.m332if().m335new(this.f2531for, (int) hyVar.f2007else, (int) hyVar.f2010goto);
            }
            z5 z5Var = this.f2534try;
            if (z5Var != null) {
                z5Var.mo582for((int) hyVar.f2007else, (int) hyVar.f2010goto, this.f2533new.url);
            }
        }

        @Override // com.apk.sy
        /* renamed from: if */
        public /* bridge */ /* synthetic */ void mo304if(Object obj, hy hyVar) {
            m1490case((File) obj);
        }

        @Override // com.apk.sy
        /* renamed from: new */
        public void mo305new(hy hyVar) {
        }

        @Override // com.apk.sy
        /* renamed from: try */
        public void mo306try(hy hyVar) {
            DownloadFileModel downloadFileModel = this.f2533new;
            if (downloadFileModel.isShowToast && !TextUtils.isEmpty(downloadFileModel.info)) {
                ToastUtils.show((CharSequence) ze.r(R.string.download_file_notice_progress_txt, this.f2533new.info));
            }
            if (this.f2533new.isShowNotice) {
                cg.m332if().m334for(this.f2532if, this.f2531for, this.f2533new.info);
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static void m1481do(String str, hy hyVar) {
        if (f2525new == null) {
            f2525new = new gg<>();
        }
        if (!TextUtils.isEmpty(str)) {
            if (hyVar != null) {
                f2525new.put(str, hyVar);
            } else {
                f2525new.remove(str);
            }
        }
        mf.m1712do("REFRESH_DOWNLOAD_TXT_PROGRESS_KEY", str);
    }

    /* renamed from: for  reason: not valid java name */
    public static void m1482for(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        DownloadFileModel downloadFileModel = new DownloadFileModel();
        downloadFileModel.url = str;
        downloadFileModel.info = str2;
        m1484if(context, downloadFileModel, null);
    }

    /* renamed from: goto  reason: not valid java name */
    public static boolean m1483goto(TaskInfo taskInfo) {
        ty tyVar;
        boolean z;
        if (taskInfo != null) {
            try {
                hy m3051case = xx.Cif.f5816do.m3051case(taskInfo.getUrl());
                if (m3051case != null) {
                    tyVar = ry.m2364new(m3051case);
                    tyVar.m2638try(new Cfor(taskInfo.getName(), taskInfo.getUrl()));
                } else {
                    tyVar = null;
                }
                if (tyVar != null) {
                    tyVar.m2630case();
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    LitePal.deleteAll(TaskInfo.class, "url = ?", taskInfo.getUrl());
                    return true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00be -> B:49:0x00c1). Please submit an issue!!! */
    /* renamed from: if  reason: not valid java name */
    public static void m1484if(Context context, DownloadFileModel downloadFileModel, z5 z5Var) {
        String str;
        hy m3051case;
        if (downloadFileModel == null || TextUtils.isEmpty(downloadFileModel.url)) {
            return;
        }
        ty tyVar = null;
        Cif cif = new Cif(context, downloadFileModel, z5Var);
        if (ry.Cif.f4220do.m2366if(downloadFileModel.url)) {
            tyVar = ry.Cif.f4220do.m2365do(downloadFileModel.url);
            tyVar.m2638try(cif);
        }
        if (tyVar == null && (m3051case = xx.Cif.f5816do.m3051case(downloadFileModel.url)) != null) {
            tyVar = ry.m2364new(m3051case);
            tyVar.m2638try(cif);
        }
        boolean z = false;
        if (tyVar == null) {
            tyVar = ry.m2363for(downloadFileModel.url, new ky(downloadFileModel.url));
            tyVar.m2638try(cif);
            if (!TextUtils.isEmpty(downloadFileModel.name) && (str = downloadFileModel.name) != null && !TextUtils.isEmpty(str.trim())) {
                tyVar.f4777do.f2020try = str;
            }
            tyVar.m2634goto();
            z = true;
        }
        if (!TextUtils.isEmpty(downloadFileModel.savePath)) {
            tyVar.f4777do.f2009for = downloadFileModel.savePath;
        }
        try {
            int i = tyVar.f4777do.f2001break;
            if (i == 0 || i == 3 || i == 4) {
                if (z) {
                    tyVar.m2637this();
                } else if (new File(tyVar.f4777do.f2014new).exists()) {
                    tyVar.m2637this();
                } else {
                    tyVar.m2632else();
                }
            } else if (i == 5) {
                File file = new File(tyVar.f4777do.f2014new);
                if (file.exists()) {
                    cif.m1490case(file);
                } else {
                    tyVar.m2632else();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static void m1485new(String str, String str2) {
        ty tyVar;
        hy m3051case = xx.Cif.f5816do.m3051case(str2);
        boolean z = false;
        if (m3051case != null) {
            tyVar = ry.m2364new(m3051case);
            tyVar.m2638try(new Cfor(str, str2));
            if (m3051case.f2014new != null) {
                z = new File(m3051case.f2014new).exists();
            }
        } else {
            tyVar = null;
        }
        if (tyVar != null) {
            if (m3051case.f2001break == 2) {
                tyVar.m2635if();
            } else if (z) {
                tyVar.m2637this();
            } else {
                tyVar.m2632else();
            }
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static boolean m1486this(TaskInfo taskInfo) {
        ty tyVar;
        hy m3051case;
        boolean z = false;
        if (((TaskInfo) LitePal.where("url = ?", taskInfo.getUrl()).findFirst(TaskInfo.class)) != null) {
            ToastUtils.show((int) R.string.txt_download_have_task_txt);
            return false;
        }
        taskInfo.save();
        mf.m1712do("REFRESH_DOWNLOAD_TXT_KEY", taskInfo);
        String name = taskInfo.getName();
        String url = taskInfo.getUrl();
        DownloadFileModel downloadFileModel = new DownloadFileModel();
        downloadFileModel.url = url;
        Cfor cfor = new Cfor(name, url);
        if (ry.Cif.f4220do.m2366if(downloadFileModel.url)) {
            tyVar = ry.Cif.f4220do.m2365do(downloadFileModel.url);
            tyVar.m2638try(cfor);
        } else {
            tyVar = null;
        }
        if (tyVar == null && (m3051case = xx.Cif.f5816do.m3051case(downloadFileModel.url)) != null) {
            tyVar = ry.m2364new(m3051case);
            tyVar.m2638try(cfor);
        }
        if (tyVar == null) {
            tyVar = ry.m2363for(downloadFileModel.url, new ky(downloadFileModel.url));
            tyVar.m2638try(cfor);
            tyVar.m2634goto();
            z = true;
        }
        try {
            int i = tyVar.f4777do.f2001break;
            if (i == 0 || i == 3 || i == 4) {
                if (z) {
                    tyVar.m2637this();
                } else if (new File(tyVar.f4777do.f2014new).exists()) {
                    tyVar.m2637this();
                } else {
                    tyVar.m2632else();
                }
            } else if (i == 5) {
                File file = new File(tyVar.f4777do.f2014new);
                if (file.exists()) {
                    new b1().m141do(new lf(file.getPath(), cfor.f2530if, cfor.f2529for));
                } else {
                    tyVar.m2632else();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        ToastUtils.show((int) R.string.download_add_download_queue_txt);
        return true;
    }

    /* renamed from: try  reason: not valid java name */
    public static kf m1487try() {
        if (f2524for == null) {
            synchronized (kf.class) {
                if (f2524for == null) {
                    f2524for = new kf();
                }
            }
        }
        return f2524for;
    }

    /* renamed from: case  reason: not valid java name */
    public NewReadFont m1488case(String str) {
        if (this.f2526do == null) {
            this.f2526do = new HashMap();
        }
        if (this.f2526do.containsKey(str)) {
            return this.f2526do.get(str);
        }
        return null;
    }

    /* renamed from: else  reason: not valid java name */
    public boolean m1489else(String str) {
        if (this.f2526do == null) {
            this.f2526do = new HashMap();
        }
        return this.f2526do.containsKey(str);
    }
}
