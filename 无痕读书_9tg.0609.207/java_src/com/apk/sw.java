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
public final class sw implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ File f4600do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Handler f4601if;

    /* compiled from: XPopupUtils.java */
    /* renamed from: com.apk.sw$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo(sw swVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(pw.f3757if, "图片暂未缓存，请稍后！", 0).show();
            pw.f3757if = null;
        }
    }

    /* compiled from: XPopupUtils.java */
    /* renamed from: com.apk.sw$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor(sw swVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(pw.f3757if, "没有保存权限，保存功能无法使用！", 0).show();
            pw.f3757if = null;
        }
    }

    /* compiled from: XPopupUtils.java */
    /* renamed from: com.apk.sw$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements MediaScannerConnection.OnScanCompletedListener {

        /* compiled from: XPopupUtils.java */
        /* renamed from: com.apk.sw$if$do  reason: invalid class name */
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
            sw.this.f4601if.post(new Cdo(this));
        }
    }

    public sw(File file, Handler handler) {
        this.f4600do = file;
        this.f4601if = handler;
    }

    @Override // java.lang.Runnable
    public void run() {
        File file = this.f4600do;
        if (file != null && file.exists()) {
            String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + Environment.DIRECTORY_PICTURES;
            File file2 = new File(str);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            try {
                String m2082do = pw.m2082do(mu.m1754abstract(new FileInputStream(this.f4600do)));
                File file3 = new File(str, System.currentTimeMillis() + "." + m2082do);
                if (file3.exists()) {
                    file3.delete();
                }
                file3.createNewFile();
                pw.m2087if(file3, new FileInputStream(this.f4600do));
                MediaScannerConnection.scanFile(pw.f3757if, new String[]{file3.getAbsolutePath()}, new String[]{"image/" + m2082do}, new Cif());
                return;
            } catch (IOException e) {
                e.printStackTrace();
                this.f4601if.post(new Cfor(this));
                return;
            }
        }
        this.f4601if.post(new Cdo(this));
    }
}
