package com.apk;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import androidx.core.content.FileProvider;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.io.File;
import java.io.FileOutputStream;
/* compiled from: WebInfoHelper.java */
/* loaded from: classes8.dex */
public final class z0 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ View f6086do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ int f6087for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ File f6088if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ Activity f6089new;

    public z0(View view, File file, int i, Activity activity) {
        this.f6086do = view;
        this.f6088if = file;
        this.f6087for = i;
        this.f6089new = activity;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        try {
            Bitmap o0 = ze.o0(this.f6086do);
            FileOutputStream fileOutputStream = new FileOutputStream(this.f6088if.getAbsolutePath());
            o0.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception unused) {
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        File file;
        super.onPostExecute(obj);
        LoadingPopupView loadingPopupView = w0.f5213do;
        if (loadingPopupView != null && loadingPopupView.isShow()) {
            w0.f5213do.dismiss();
        }
        w0.f5213do = null;
        int i = this.f6087for;
        if (i == 1) {
            File file2 = this.f6088if;
            if (file2 != null) {
                Activity activity = this.f6089new;
                if (file2 == null || !file2.exists()) {
                    return;
                }
                ComponentName componentName = new ComponentName("com.tencent.mm", "com.tencent.mm.ui.tools.ShareImgUI");
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setComponent(componentName);
                if (Build.VERSION.SDK_INT >= 24) {
                    intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(activity, ze.m3168finally() + ".fileprovider", file2));
                    intent.addFlags(1);
                } else {
                    intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file2));
                }
                intent.setType("image/*");
                Intent createChooser = Intent.createChooser(intent, "分享到 ");
                if (intent.resolveActivity(activity.getPackageManager()) != null) {
                    activity.startActivity(createChooser);
                }
            }
        } else if (i != 2) {
            if (i == 4 && (file = this.f6088if) != null) {
                Activity activity2 = this.f6089new;
                if (file == null || !file.exists()) {
                    return;
                }
                yu yuVar = new yu(activity2);
                yuVar.m3120if(wu.f5403do);
                yuVar.m3119for(new x0(activity2, file));
            }
        } else {
            File file3 = this.f6088if;
            if (file3 != null) {
                Activity activity3 = this.f6089new;
                if (file3 == null || !file3.exists()) {
                    return;
                }
                ComponentName componentName2 = new ComponentName("com.tencent.mm", "com.tencent.mm.ui.tools.ShareToTimeLineUI");
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setComponent(componentName2);
                if (Build.VERSION.SDK_INT >= 24) {
                    intent2.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(activity3, ze.m3168finally() + ".fileprovider", file3));
                    intent2.addFlags(1);
                } else {
                    intent2.putExtra("android.intent.extra.STREAM", Uri.fromFile(file3));
                }
                intent2.setType("image/*");
                Intent createChooser2 = Intent.createChooser(intent2, "分享到 ");
                if (intent2.resolveActivity(activity3.getPackageManager()) != null) {
                    activity3.startActivity(createChooser2);
                }
            }
        }
    }
}
