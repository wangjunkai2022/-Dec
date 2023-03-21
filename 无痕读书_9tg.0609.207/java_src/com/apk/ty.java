package com.apk;

import android.content.ContentValues;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.apk.hy;
import com.apk.ry;
import com.apk.xx;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
/* compiled from: DownloadTask.java */
/* loaded from: classes8.dex */
public class ty implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public hy f4777do;

    /* renamed from: for  reason: not valid java name */
    public final ThreadPoolExecutor f4778for;

    /* renamed from: if  reason: not valid java name */
    public Map<Object, sy> f4779if;

    /* renamed from: new  reason: not valid java name */
    public cz f4780new;

    /* compiled from: DownloadTask.java */
    /* renamed from: com.apk.ty$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements hy.Cdo {
        public Cdo() {
        }

        @Override // com.apk.hy.Cdo
        public void call(hy hyVar) {
            ty tyVar = ty.this;
            tyVar.m2629break(hyVar);
            mu.u(new xy(tyVar, hyVar));
        }
    }

    /* compiled from: DownloadTask.java */
    /* renamed from: com.apk.ty$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ hy f4782do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ File f4784if;

        public Cfor(hy hyVar, File file) {
            this.f4782do = hyVar;
            this.f4784if = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (sy syVar : ty.this.f4779if.values()) {
                syVar.mo303for(this.f4782do);
                syVar.mo304if(this.f4784if, this.f4782do);
            }
        }
    }

    /* compiled from: DownloadTask.java */
    /* renamed from: com.apk.ty$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ hy f4785do;

        public Cif(hy hyVar) {
            this.f4785do = hyVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (sy syVar : ty.this.f4779if.values()) {
                syVar.mo303for(this.f4785do);
                syVar.mo302do(this.f4785do);
            }
        }
    }

    public ty(String str, qy<File, ? extends qy> qyVar) {
        hy hyVar = new hy();
        this.f4777do = hyVar;
        hyVar.f2006do = str;
        hyVar.f2009for = ry.Cif.f4220do.f4217do;
        hyVar.f2011if = qyVar != null ? qyVar.f3966if : "";
        hy hyVar2 = this.f4777do;
        hyVar2.f2001break = 0;
        hyVar2.f2007else = -1L;
        hyVar2.f2005const = qyVar;
        hyVar2.f2016return = false;
        this.f4778for = ry.Cif.f4220do.f4219if.m3264do();
        this.f4779if = new HashMap();
    }

    /* renamed from: break  reason: not valid java name */
    public final void m2629break(hy hyVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("fraction", Float.valueOf(hyVar.f2002case));
        contentValues.put("totalSize", Long.valueOf(hyVar.f2007else));
        contentValues.put("currentSize", Long.valueOf(hyVar.f2010goto));
        contentValues.put(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(hyVar.f2001break));
        contentValues.put("priority", Integer.valueOf(hyVar.f2003catch));
        contentValues.put("date", Long.valueOf(hyVar.f2004class));
        xx.Cif.f5816do.update(contentValues, hyVar.f2006do);
    }

    /* renamed from: case  reason: not valid java name */
    public void m2630case() {
        try {
            m2635if();
            xx.Cif.f5816do.delete(this.f4777do.f2006do);
            ry ryVar = ry.Cif.f4220do;
            ryVar.f4218for.remove(this.f4777do.f2006do);
            hy hyVar = this.f4777do;
            m2629break(hyVar);
            mu.u(new yy(this, hyVar));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final void m2631do(InputStream inputStream, RandomAccessFile randomAccessFile, hy hyVar) throws IOException {
        if (inputStream != null) {
            hyVar.f2001break = 2;
            byte[] bArr = new byte[8192];
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 8192);
            while (true) {
                try {
                    int read = bufferedInputStream.read(bArr, 0, 8192);
                    if (read == -1 || hyVar.f2001break != 2) {
                        break;
                    }
                    try {
                        randomAccessFile.write(bArr, 0, read);
                        try {
                            hy.m1172do(hyVar, read, hyVar.f2007else, new Cdo());
                        } catch (Throwable th) {
                            th = th;
                            mu.m1758class(randomAccessFile);
                            mu.m1758class(bufferedInputStream);
                            mu.m1758class(inputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            mu.m1758class(randomAccessFile);
            mu.m1758class(bufferedInputStream);
            mu.m1758class(inputStream);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m2632else() {
        try {
            m2635if();
            String str = this.f4777do.f2014new;
            if (!TextUtils.isEmpty(str)) {
                mu.m1792while(new File(str));
            }
            this.f4777do.f2001break = 0;
            this.f4777do.f2010goto = 0L;
            this.f4777do.f2002case = 0.0f;
            this.f4777do.f2018this = 0L;
            xx.Cif.f5816do.m2628try(this.f4777do);
            m2637this();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m2633for(hy hyVar, Throwable th) {
        hyVar.f2018this = 0L;
        hyVar.f2001break = 4;
        hyVar.f2021while = th;
        m2629break(hyVar);
        mu.u(new Cif(hyVar));
    }

    /* renamed from: goto  reason: not valid java name */
    public ty m2634goto() {
        try {
            if (this.f4777do != null) {
                if (!TextUtils.isEmpty(this.f4777do.f2009for) && !TextUtils.isEmpty(this.f4777do.f2020try)) {
                    this.f4777do.f2014new = new File(this.f4777do.f2009for, this.f4777do.f2020try).getAbsolutePath();
                }
                xx.Cif.f5816do.m2628try(this.f4777do);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this;
    }

    /* renamed from: if  reason: not valid java name */
    public void m2635if() {
        try {
            this.f4778for.remove(this.f4780new);
            if (this.f4777do.f2001break == 1) {
                hy hyVar = this.f4777do;
                hyVar.f2018this = 0L;
                hyVar.f2001break = 3;
                m2629break(hyVar);
                mu.u(new wy(this, hyVar));
            } else if (this.f4777do.f2001break == 2) {
                this.f4777do.f2018this = 0L;
                this.f4777do.f2001break = 3;
            } else {
                int i = this.f4777do.f2001break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m2636new(hy hyVar, File file) {
        hyVar.f2018this = 0L;
        hyVar.f2002case = 1.0f;
        hyVar.f2001break = 5;
        long j = hyVar.f2007else;
        long j2 = hyVar.f2010goto;
        if (j > j2) {
            hyVar.f2007else = j2;
        }
        m2629break(hyVar);
        mu.u(new Cfor(hyVar, file));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:32|(9:34|(1:36)(2:64|(2:66|(1:68)))|37|(2:39|(1:(2:41|(1:48)(2:45|46))(4:50|51|(1:53)|54)))(0)|55|(1:57)|58|59|60)|69|37|(0)(0)|55|(0)|58|59|60) */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0178, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0179, code lost:
        r6.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0160  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ty.run():void");
    }

    /* renamed from: this  reason: not valid java name */
    public void m2637this() {
        try {
            if (ry.Cif.f4220do.m2365do(this.f4777do.f2006do) != null && xx.Cif.f5816do.m3051case(this.f4777do.f2006do) != null) {
                if (this.f4777do.f2001break != 0 && this.f4777do.f2001break != 3 && this.f4777do.f2001break != 4) {
                    if (this.f4777do.f2001break == 5) {
                        if (this.f4777do.f2014new == null) {
                            hy hyVar = this.f4777do;
                            m2633for(hyVar, new cy("the file of the task with tag:" + this.f4777do.f2006do + " may be invalid or damaged, please call the method restart() to download again！"));
                        } else {
                            File file = new File(this.f4777do.f2014new);
                            if (file.exists() && file.length() == this.f4777do.f2007else) {
                                m2636new(this.f4777do, new File(this.f4777do.f2014new));
                            } else {
                                hy hyVar2 = this.f4777do;
                                m2633for(hyVar2, new cy("the file " + this.f4777do.f2014new + " may be invalid or damaged, please call the method restart() to download again！"));
                            }
                        }
                    } else {
                        String str = this.f4777do.f2006do;
                        int i = this.f4777do.f2001break;
                    }
                }
                hy hyVar3 = this.f4777do;
                hyVar3.f2018this = 0L;
                hyVar3.f2001break = 0;
                m2629break(hyVar3);
                mu.u(new uy(this, hyVar3));
                hy hyVar4 = this.f4777do;
                hyVar4.f2018this = 0L;
                hyVar4.f2001break = 1;
                m2629break(hyVar4);
                mu.u(new vy(this, hyVar4));
                cz czVar = new cz(this.f4777do.f2003catch, this);
                this.f4780new = czVar;
                this.f4778for.execute(czVar);
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public ty m2638try(sy syVar) {
        this.f4779if.put(syVar.f4613do, syVar);
        return this;
    }

    public ty(hy hyVar) {
        this.f4777do = hyVar;
        this.f4778for = ry.Cif.f4220do.f4219if.m3264do();
        this.f4779if = new HashMap();
    }
}
