package com.ss.android.socialbase.downloader.depend;

import com.apk.Cgoto;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes7.dex */
public abstract class a extends AbsDownloadListener implements s {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11834a = "a";

    public void a(DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.c.a.a() || downloadInfo == null) {
            return;
        }
        String str = f11834a;
        StringBuilder m1016super = Cgoto.m1016super(" onWaitingDownloadCompleteHandler -- ");
        m1016super.append(downloadInfo.getName());
        com.ss.android.socialbase.downloader.c.a.b(str, m1016super.toString());
    }
}
