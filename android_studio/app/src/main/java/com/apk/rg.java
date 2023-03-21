package com.apk;

import com.biquge.ebook.app.widget.AppProgressBar;
import com.biquge.ebook.app.widget.LieBianBottomShareDlg;

/* compiled from: LieBianBottomShareDlg.java */
/* loaded from: classes8.dex */
public class rg extends c1<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ LieBianBottomShareDlg f4045do;

    public rg(LieBianBottomShareDlg lieBianBottomShareDlg) {
        this.f4045do = lieBianBottomShareDlg;
    }

    @Override // com.apk.c1
    public String doInBackground() {
        return w0.m2884new();
    }

    @Override // com.apk.c1
    public void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        AppProgressBar appProgressBar = this.f4045do.f8075for;
        if (appProgressBar != null) {
            appProgressBar.setVisibility(8);
        }
        this.f4045do.m3477if(w.m2840class(str2));
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        AppProgressBar appProgressBar = this.f4045do.f8075for;
        if (appProgressBar != null) {
            appProgressBar.setVisibility(0);
        }
    }
}
