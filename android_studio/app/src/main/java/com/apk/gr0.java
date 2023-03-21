package com.apk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.text.TextUtils;
import com.apk.yp0;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: SkinSDCardLoader.java */
/* loaded from: classes7.dex */
public abstract class gr0 implements yp0.Cfor {
    @Override // com.apk.yp0.Cfor
    /* renamed from: do */
    public ColorStateList mo507do(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: for */
    public ColorStateList mo508for(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    public abstract /* synthetic */ int getType();

    @Override // com.apk.yp0.Cfor
    /* renamed from: if */
    public Drawable mo509if(Context context, String str, int i) {
        return null;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: new */
    public String mo510new(Context context, String str) {
        String absolutePath;
        Resources resources;
        File externalCacheDir;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (Environment.getExternalStorageState().equals("mounted") && (externalCacheDir = context.getExternalCacheDir()) != null && (externalCacheDir.exists() || externalCacheDir.mkdirs())) {
            absolutePath = externalCacheDir.getAbsolutePath();
        } else {
            absolutePath = context.getCacheDir().getAbsolutePath();
        }
        File file = new File(absolutePath, "skins");
        if (!file.exists()) {
            file.mkdirs();
        }
        String absolutePath2 = new File(file.getAbsolutePath(), str).getAbsolutePath();
        try {
            InputStream open = context.getAssets().open("skins" + File.separator + str);
            FileOutputStream fileOutputStream = new FileOutputStream(absolutePath2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.close();
            open.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (!TextUtils.isEmpty(absolutePath2) && Cgoto.m1024volatile(absolutePath2)) {
            String str2 = yp0.f6038class.f6043for.getPackageManager().getPackageArchiveInfo(absolutePath2, 1).packageName;
            yp0 yp0Var = yp0.f6038class;
            if (yp0Var != null) {
                try {
                    PackageInfo packageArchiveInfo = yp0Var.f6043for.getPackageManager().getPackageArchiveInfo(absolutePath2, 0);
                    packageArchiveInfo.applicationInfo.sourceDir = absolutePath2;
                    packageArchiveInfo.applicationInfo.publicSourceDir = absolutePath2;
                    Resources resourcesForApplication = yp0Var.f6043for.getPackageManager().getResourcesForApplication(packageArchiveInfo.applicationInfo);
                    Resources resources2 = yp0Var.f6043for.getResources();
                    resources = new Resources(resourcesForApplication.getAssets(), resources2.getDisplayMetrics(), resources2.getConfiguration());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    resources = null;
                }
                if (resources != null && !TextUtils.isEmpty(str2)) {
                    lq0.m1663new().m1665goto(resources, str2, str, this);
                    return str;
                }
            } else {
                throw null;
            }
        }
        return null;
    }

    @Override // com.apk.yp0.Cfor
    /* renamed from: try */
    public String mo394try(Context context, String str, int i) {
        return null;
    }
}
