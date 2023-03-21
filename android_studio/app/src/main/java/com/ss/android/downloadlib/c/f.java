package com.ss.android.downloadlib.c;

import android.content.Context;
import androidx.core.view.PointerIconCompat;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class f implements com.ss.android.socialbase.appdownloader.c.d {

    /* renamed from: a  reason: collision with root package name */
    public Context f11686a;

    public f(Context context) {
        this.f11686a = context.getApplicationContext();
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public void a(Context context, String str) {
        com.ss.android.downloadlib.a.a().a(str);
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public void a(int i, int i2, String str, int i3, long j) {
        DownloadInfo downloadInfo;
        com.ss.android.downloadad.api.a.b a2;
        Context context = this.f11686a;
        if (context == null || (downloadInfo = Downloader.getInstance(context).getDownloadInfo(i)) == null || downloadInfo.getStatus() == 0 || (a2 = com.ss.android.downloadlib.addownload.b.f.a().a(downloadInfo)) == null) {
            return;
        }
        if (i2 == 1) {
            com.ss.android.downloadlib.a.a(downloadInfo, a2);
            if (AdBaseConstants.MIME_APK.equals(downloadInfo.getMimeType())) {
                com.ss.android.downloadlib.addownload.a.a().a(downloadInfo, a2.b(), a2.l(), a2.e(), downloadInfo.getTitle(), a2.d(), downloadInfo.getTargetFilePath());
            }
        } else if (i2 == 3) {
            com.ss.android.downloadlib.d.a.a().a("download_notification", "download_notification_install", com.ss.android.downloadlib.a.b(new JSONObject(), downloadInfo), a2);
        } else if (i2 == 5) {
            com.ss.android.downloadlib.d.a.a().a("download_notification", "download_notification_pause", a2);
        } else if (i2 == 6) {
            com.ss.android.downloadlib.d.a.a().a("download_notification", "download_notification_continue", a2);
        } else if (i2 != 7) {
        } else {
            com.ss.android.downloadlib.d.a.a().a("download_notification", "download_notification_click", a2);
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public boolean a(int i, boolean z) {
        if (j.n() != null) {
            return j.n().a(z);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public void a(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        com.ss.android.downloadlib.f.a().a(downloadInfo);
        if (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("report_download_cancel", 1) == 1) {
            com.ss.android.downloadlib.d.a.a().a(downloadInfo, new BaseException((int) PointerIconCompat.TYPE_NO_DROP, ""));
        } else {
            com.ss.android.downloadlib.d.a.a().b(downloadInfo, new BaseException((int) PointerIconCompat.TYPE_NO_DROP, ""));
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public void a(int i, int i2, String str, String str2, String str3) {
        DownloadInfo downloadInfo;
        Context context = this.f11686a;
        if (context == null || (downloadInfo = Downloader.getInstance(context).getDownloadInfo(i)) == null || downloadInfo.getStatus() != -3) {
            return;
        }
        downloadInfo.setPackageName(str2);
        com.ss.android.downloadlib.addownload.b.a().a(this.f11686a, downloadInfo);
    }

    @Override // com.ss.android.socialbase.appdownloader.c.d
    public boolean a() {
        return com.ss.android.downloadlib.addownload.b.a().b();
    }
}
