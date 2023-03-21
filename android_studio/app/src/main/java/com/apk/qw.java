package com.apk;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* compiled from: XPopupUtils.java */
/* loaded from: classes8.dex */
public final class qw implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ zv f3948do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ Handler f3949for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Object f3950if;

    /* compiled from: XPopupUtils.java */
    /* renamed from: com.apk.qw$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo(qw qwVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(pw.f3757if, "图片不存在！", 0).show();
            pw.f3757if = null;
        }
    }

    /* compiled from: XPopupUtils.java */
    /* renamed from: com.apk.qw$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor(qw qwVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(pw.f3757if, "没有保存权限，保存功能无法使用！", 0).show();
            pw.f3757if = null;
        }
    }

    /* compiled from: XPopupUtils.java */
    /* renamed from: com.apk.qw$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements MediaScannerConnection.OnScanCompletedListener {

        /* compiled from: XPopupUtils.java */
        /* renamed from: com.apk.qw$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Runnable {
            public Cdo(Cif cif) {
            }

            @Override // java.lang.Runnable
            public void run() {
                Context context = pw.f3757if;
                if (context != null) {
                    Toast.makeText(context, "已保存到相册！", 0).show();
                    pw.f3757if = null;
                }
            }
        }

        public Cif() {
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
            qw.this.f3949for.post(new Cdo(this));
        }
    }

    public qw(zv zvVar, Object obj, Handler handler) {
        this.f3948do = zvVar;
        this.f3950if = obj;
        this.f3949for = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        File m3262if = this.f3948do.m3262if(pw.f3757if, this.f3950if);
        if (m3262if == null) {
            this.f3949for.post(new Cdo(this));
            return;
        }
        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + Environment.DIRECTORY_PICTURES;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            String m2082do = pw.m2082do(mu.m1754abstract(new FileInputStream(m3262if)));
            File file2 = new File(str, System.currentTimeMillis() + "." + m2082do);
            if (file2.exists()) {
                file2.delete();
            }
            file2.createNewFile();
            pw.m2087if(file2, new FileInputStream(m3262if));
            MediaScannerConnection.scanFile(pw.f3757if, new String[]{file2.getAbsolutePath()}, new String[]{"image/" + m2082do}, new Cif());
        } catch (IOException e) {
            e.printStackTrace();
            this.f3949for.post(new Cfor(this));
        }
    }
}
