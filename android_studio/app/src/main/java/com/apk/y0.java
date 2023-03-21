package com.apk;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;

/* compiled from: WebInfoHelper.java */
/* loaded from: classes8.dex */
public final class y0 extends c1<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Activity f5825do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ int f5826for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ View f5827if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ ImageView f5828new;

    public y0(Activity activity, View view, int i, ImageView imageView) {
        this.f5825do = activity;
        this.f5827if = view;
        this.f5826for = i;
        this.f5828new = imageView;
    }

    @Override // com.apk.c1
    public String doInBackground() {
        return w0.m2884new();
    }

    @Override // com.apk.c1
    public void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        w0.m2878for(this.f5825do, this.f5827if, this.f5826for, this.f5828new, str2);
    }
}
