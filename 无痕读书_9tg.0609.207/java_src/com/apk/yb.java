package com.apk;

import com.biquge.ebook.app.ui.fragment.LocalWebShareFragment;
/* compiled from: LocalWebShareFragment.java */
/* loaded from: classes8.dex */
public class yb extends c1<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ LocalWebShareFragment f5904do;

    public yb(LocalWebShareFragment localWebShareFragment) {
        this.f5904do = localWebShareFragment;
    }

    @Override // com.apk.c1
    public String doInBackground() {
        return w0.m2884new();
    }

    @Override // com.apk.c1
    public void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        this.f5904do.i(str2);
    }
}
