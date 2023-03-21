package com.apk;

import android.content.Context;
import android.text.TextUtils;
import com.hjq.toast.ToastUtils;
import java.io.File;
import kimi.wuhends.ebooks.R;

/* compiled from: BaiDuVoiceUtils.java */
/* loaded from: classes8.dex */
public class e0 extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ File f974do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ e1 f975for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Context f976if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ c0 f977new;

    public e0(c0 c0Var, File file, Context context, e1 e1Var) {
        this.f977new = c0Var;
        this.f974do = file;
        this.f976if = context;
        this.f975for = e1Var;
    }

    @Override // com.apk.c1
    public Boolean doInBackground() {
        int i;
        String path;
        boolean z;
        int lastIndexOf;
        File file;
        File[] listFiles;
        try {
            File file2 = this.f974do;
            if (file2 == null) {
                path = null;
            } else {
                path = file2.getPath();
                if (path != null) {
                    int length = path.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        if (!Character.isWhitespace(path.charAt(i2))) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (!z && (lastIndexOf = path.lastIndexOf(File.separator)) != -1) {
                    path = path.substring(lastIndexOf + 1);
                }
            }
            file = new File(a6.m18else().m24this(), path);
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!eg.n(this.f974do.getAbsolutePath(), file.getAbsolutePath(), null)) {
            try {
                this.f974do.delete();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            try {
                if (file.isDirectory()) {
                    ze.m3176native(file.getAbsolutePath());
                } else {
                    file.delete();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            return Boolean.FALSE;
        }
        File file3 = new File(a6.m18else().m24this(), "BaiduPlugin");
        if (!file3.exists()) {
            file3.mkdirs();
        }
        c0 c0Var = this.f977new;
        c0Var.m299new(file);
        String str = c0Var.f477else;
        if (!TextUtils.isEmpty(str)) {
            for (File file4 : new File(str + File.separator + "src" + File.separator + "main" + File.separator + "assets").listFiles()) {
                ze.m3157break(file4, new File(file3, file4.getName()));
            }
            for (File file5 : new File(str + File.separator + "src" + File.separator + "main" + File.separator + "jniLibs").listFiles()) {
                ze.m3188this(file5.getAbsolutePath(), file3 + File.separator + file5.getName());
            }
            try {
                this.f974do.delete();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            try {
                if (file.isDirectory()) {
                    ze.m3176native(file.getAbsolutePath());
                } else {
                    file.delete();
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            this.f977new.f481try = true;
            tt.f4763do.putBoolean("is_download_plugin", this.f977new.f481try);
            tt.f4763do.putBoolean("is_download_plugin_new_version_8", this.f977new.f481try);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
        e.printStackTrace();
        return Boolean.FALSE;
    }

    @Override // com.apk.c1
    public void onPostExecute(Boolean bool) {
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        if (!bool2.booleanValue()) {
            ToastUtils.show((int) R.string.book_recode_plugin_download_failed_txt);
        } else {
            c0 c0Var = this.f977new;
            Context context = this.f976if;
            e1 e1Var = this.f975for;
            if (c0Var != null) {
                b1 b1Var = new b1();
                b1Var.m142for(context, false, null);
                b1Var.m141do(new b0(c0Var, context, e1Var, true));
            } else {
                throw null;
            }
        }
        this.f977new.f480new = false;
    }
}
