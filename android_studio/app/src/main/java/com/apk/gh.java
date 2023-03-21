package com.apk;

import android.webkit.DownloadListener;
import android.webkit.URLUtil;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;

/* compiled from: BridgeWebView.java */
/* loaded from: classes8.dex */
public class gh implements DownloadListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ih f1566do;

    public gh(ih ihVar) {
        this.f1566do = ihVar;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        String guessFileName = URLUtil.guessFileName(str, str3, str4);
        ProgressBarWebView.Cdo cdo = this.f1566do.f2109do;
        if (cdo != null) {
            cdo.mo3387continue(str, guessFileName, str4, j, str3, str2);
        }
    }
}
