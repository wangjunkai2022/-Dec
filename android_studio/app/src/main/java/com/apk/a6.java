package com.apk;

import android.os.Environment;
import android.text.TextUtils;
import com.biquge.ebook.app.app.AppContext;
import java.io.File;

/* compiled from: FilePathUtils.java */
/* loaded from: classes8.dex */
public class a6 {

    /* renamed from: this  reason: not valid java name */
    public static a6 f32this;

    /* renamed from: case  reason: not valid java name */
    public String f33case;

    /* renamed from: do  reason: not valid java name */
    public String f34do;

    /* renamed from: else  reason: not valid java name */
    public String f35else;

    /* renamed from: for  reason: not valid java name */
    public String f36for;

    /* renamed from: goto  reason: not valid java name */
    public String f37goto;

    /* renamed from: if  reason: not valid java name */
    public String f38if;

    /* renamed from: new  reason: not valid java name */
    public String f39new;

    /* renamed from: try  reason: not valid java name */
    public String f40try;

    /* renamed from: do  reason: not valid java name */
    public static String m17do() {
        String path;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            path = AppContext.f6392case.getExternalCacheDir().getPath();
        } else {
            path = AppContext.f6392case.getCacheDir().getPath();
        }
        return Cgoto.m989case(path, "/cache");
    }

    /* renamed from: else  reason: not valid java name */
    public static a6 m18else() {
        if (f32this == null) {
            synchronized (a6.class) {
                if (f32this == null) {
                    f32this = new a6();
                }
            }
        }
        return f32this;
    }

    /* renamed from: case  reason: not valid java name */
    public String m19case() {
        if (this.f40try == null) {
            this.f40try = m21goto("glide_images");
        }
        return this.f40try;
    }

    /* renamed from: for  reason: not valid java name */
    public String m20for() {
        if (this.f38if == null) {
            this.f38if = m21goto("file");
        }
        return this.f38if;
    }

    /* renamed from: goto  reason: not valid java name */
    public String m21goto(String str) {
        String str2 = null;
        if ("mounted".equals(Environment.getExternalStorageState()) && !Environment.isExternalStorageRemovable()) {
            try {
                str2 = AppContext.f6392case.getExternalFilesDir(null).getAbsolutePath();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (TextUtils.isEmpty(str2)) {
                try {
                    str2 = AppContext.f6392case.getFilesDir().getAbsolutePath();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (TextUtils.isEmpty(str2)) {
                try {
                    str2 = AppContext.f6392case.getExternalCacheDir().getAbsolutePath();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            if (TextUtils.isEmpty(str2)) {
                try {
                    str2 = AppContext.f6392case.getCacheDir().getAbsolutePath();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } else {
            try {
                str2 = AppContext.f6392case.getCacheDir().getAbsolutePath();
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        File file = new File(Cgoto.m991class(Cgoto.m1016super(str2), File.separator, str));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    /* renamed from: if  reason: not valid java name */
    public String m22if() {
        if (this.f34do == null) {
            this.f34do = m21goto("books");
        }
        return this.f34do;
    }

    /* renamed from: new  reason: not valid java name */
    public String m23new() {
        if (this.f36for == null) {
            this.f36for = m21goto("unZip");
        }
        return this.f36for;
    }

    /* renamed from: this  reason: not valid java name */
    public String m24this() {
        if (this.f35else == null) {
            this.f35else = m21goto("plugin");
        }
        return this.f35else;
    }

    /* renamed from: try  reason: not valid java name */
    public String m25try() {
        if (this.f37goto == null) {
            this.f37goto = m21goto("Download");
        }
        return this.f37goto;
    }
}
