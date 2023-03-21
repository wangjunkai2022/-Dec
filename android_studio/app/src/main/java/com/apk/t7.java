package com.apk;

import android.content.Intent;
import android.net.Uri;
import com.biquge.ebook.app.ui.activity.ImportFileActivity;

/* compiled from: ImportFileActivity.java */
/* loaded from: classes8.dex */
public class t7 implements uv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ImportFileActivity f4655do;

    public t7(ImportFileActivity importFileActivity) {
        this.f4655do = importFileActivity;
    }

    @Override // com.apk.uv
    public void onConfirm() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        StringBuilder m1016super = Cgoto.m1016super("package:");
        m1016super.append(this.f4655do.getPackageName());
        intent.setData(Uri.parse(m1016super.toString()));
        this.f4655do.startActivity(intent);
    }
}
