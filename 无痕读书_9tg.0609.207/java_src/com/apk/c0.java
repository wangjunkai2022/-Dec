package com.apk;

import android.app.Activity;
import android.content.Context;
import com.apk.ry;
import com.apk.xx;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.DownloadFileModel;
import com.biquge.ebook.app.bean.WebConfBean;
import com.hjq.toast.ToastUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import kimi.wuhends.ebooks.R;
/* compiled from: BaiDuVoiceUtils.java */
/* loaded from: classes8.dex */
public class c0 {

    /* renamed from: case  reason: not valid java name */
    public boolean f475case = false;

    /* renamed from: do  reason: not valid java name */
    public final Context f476do;

    /* renamed from: else  reason: not valid java name */
    public String f477else;

    /* renamed from: for  reason: not valid java name */
    public f0 f478for;

    /* renamed from: if  reason: not valid java name */
    public final e1 f479if;

    /* renamed from: new  reason: not valid java name */
    public boolean f480new;

    /* renamed from: try  reason: not valid java name */
    public boolean f481try;

    /* compiled from: BaiDuVoiceUtils.java */
    /* renamed from: com.apk.c0$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Context f482do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ e1 f483for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ WebConfBean f484if;

        public Cdo(Context context, WebConfBean webConfBean, e1 e1Var) {
            this.f482do = context;
            this.f484if = webConfBean;
            this.f483for = e1Var;
        }

        @Override // com.apk.ft
        public void onClick() {
            c0.m297if(c0.this, this.f482do, this.f484if.getBdaivoice2(), this.f483for, true);
        }
    }

    /* compiled from: BaiDuVoiceUtils.java */
    /* renamed from: com.apk.c0$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public final class Cfor extends sy {

        /* renamed from: case  reason: not valid java name */
        public final boolean f486case;

        /* renamed from: for  reason: not valid java name */
        public final String f488for;

        /* renamed from: if  reason: not valid java name */
        public final Context f489if;

        /* renamed from: new  reason: not valid java name */
        public final int f490new;

        /* renamed from: try  reason: not valid java name */
        public final e1 f491try;

        public Cfor(Context context, DownloadFileModel downloadFileModel, String str, e1 e1Var, boolean z) {
            super(str);
            this.f489if = context;
            this.f488for = downloadFileModel.info;
            this.f490new = downloadFileModel.url.hashCode();
            this.f491try = e1Var;
            this.f486case = z;
        }

        /* renamed from: case  reason: not valid java name */
        public void m301case(File file) {
            if (this.f486case) {
                File dir = AppContext.f6392case.getDir("jniLibs", 0);
                ze.m3176native(dir + File.separator + "BaiduPlugin");
            }
            c0 c0Var = c0.this;
            Context context = this.f489if;
            e1 e1Var = this.f491try;
            if (c0Var != null) {
                new b1().m141do(new e0(c0Var, file, context, e1Var));
                cg.m332if().m333do(this.f490new);
                return;
            }
            throw null;
        }

        @Override // com.apk.sy
        /* renamed from: do  reason: not valid java name */
        public void mo302do(hy hyVar) {
            cg.m332if().m333do(this.f490new);
            ToastUtils.show((int) R.string.book_recode_plugin_download_failed_txt);
            c0.this.f480new = false;
        }

        @Override // com.apk.sy
        /* renamed from: for  reason: not valid java name */
        public void mo303for(hy hyVar) {
            cg.m332if().m335new(this.f490new, (int) hyVar.f2007else, (int) hyVar.f2010goto);
        }

        @Override // com.apk.sy
        /* renamed from: if  reason: not valid java name */
        public /* bridge */ /* synthetic */ void mo304if(Object obj, hy hyVar) {
            m301case((File) obj);
        }

        @Override // com.apk.sy
        /* renamed from: new  reason: not valid java name */
        public void mo305new(hy hyVar) {
        }

        @Override // com.apk.sy
        /* renamed from: try  reason: not valid java name */
        public void mo306try(hy hyVar) {
            ToastUtils.show((int) R.string.book_recode_plugin_download_begin_txt);
            cg.m332if().m334for(this.f489if, this.f490new, this.f488for);
        }
    }

    /* compiled from: BaiDuVoiceUtils.java */
    /* renamed from: com.apk.c0$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements dt {
        public Cif(c0 c0Var) {
        }

        @Override // com.apk.dt
        public void onClick() {
        }
    }

    public c0(Context context, e1 e1Var) {
        this.f476do = context;
        this.f479if = e1Var;
    }

    /* renamed from: do  reason: not valid java name */
    public static void m295do(c0 c0Var, String str, String str2) {
        if (c0Var != null) {
            try {
                File dir = AppContext.f6392case.getDir("jniLibs", 0);
                File file = new File(dir + File.separator + "BaiduPlugin" + File.separator + str + File.separator + str2);
                if (file.exists()) {
                    System.load(file.getAbsolutePath());
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    /* renamed from: for  reason: not valid java name */
    public static boolean m296for(Context context, String str, String str2) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length > 0) {
                new File(str2).mkdirs();
                for (String str3 : list) {
                    m296for(context, str + "/" + str3, str2 + "/" + str3);
                }
            } else {
                InputStream open = context.getAssets().open(str);
                FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = open.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.flush();
                open.close();
                fileOutputStream.close();
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static void m297if(c0 c0Var, Context context, String str, e1 e1Var, boolean z) {
        ty tyVar;
        hy m3051case;
        boolean z2 = true;
        c0Var.f480new = true;
        DownloadFileModel downloadFileModel = new DownloadFileModel();
        downloadFileModel.url = str;
        downloadFileModel.info = ze.q(R.string.book_recode_tts_plugin_txt);
        Cfor cfor = new Cfor(context, downloadFileModel, "UPDATE_TAG", e1Var, z);
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
        } else {
            z2 = false;
        }
        try {
            int i = tyVar.f4777do.f2001break;
            if (i != 0 && i != 3 && i != 4) {
                if (i != 5) {
                    return;
                }
                File file = new File(tyVar.f4777do.f2014new);
                if (file.exists()) {
                    cfor.m301case(file);
                } else {
                    tyVar.m2632else();
                }
            } else if (z2) {
                tyVar.m2637this();
            } else if (tyVar.f4777do.f2014new != null) {
                if (new File(tyVar.f4777do.f2014new).exists()) {
                    tyVar.m2637this();
                } else {
                    tyVar.m2632else();
                }
            } else {
                tyVar.m2632else();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public synchronized void m298case() {
        try {
            this.f478for.f1164new.stop();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m299new(File file) {
        if (file == null || !file.isDirectory()) {
            return;
        }
        if ("app".equals(file.getName())) {
            this.f477else = file.getAbsolutePath();
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                m299new(file2);
            }
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m300try(Context context, e1 e1Var) {
        WebConfBean m384new = Ccontinue.m379if().m384new();
        String r = ze.r(R.string.book_recode_tts_download_new_plugin_txt, m384new.getSvasize());
        String q = ze.q(R.string.book_recode_tts_download_new_plugin_ok_txt);
        Cdo cdo = new Cdo(context, m384new, e1Var);
        String q2 = ze.q(R.string.book_recode_tts_download_new_plugin_cancel_txt);
        Cif cif = new Cif(this);
        if (context != null) {
            try {
                if (((Activity) context).isFinishing()) {
                    return;
                }
                eg.m(context, null, r, q, cdo, q2, cif, null, null, false);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
