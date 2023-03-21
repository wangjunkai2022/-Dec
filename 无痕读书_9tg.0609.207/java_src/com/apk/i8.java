package com.apk;

import android.content.Intent;
import android.net.Uri;
import com.biquge.ebook.app.ui.activity.SelectFileActivity;
/* compiled from: SelectFileActivity.java */
/* loaded from: classes8.dex */
public class i8 implements uv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SelectFileActivity f2063do;

    public i8(SelectFileActivity selectFileActivity) {
        this.f2063do = selectFileActivity;
    }

    @Override // com.apk.uv
    public void onConfirm() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        StringBuilder m1016super = Cgoto.m1016super("package:");
        m1016super.append(this.f2063do.getPackageName());
        intent.setData(Uri.parse(m1016super.toString()));
        this.f2063do.startActivity(intent);
    }
}
