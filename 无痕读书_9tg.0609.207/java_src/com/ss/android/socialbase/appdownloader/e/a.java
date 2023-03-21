package com.ss.android.socialbase.appdownloader.e;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.appdownloader.DownloadHandlerService;
import com.ss.android.socialbase.appdownloader.e;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* loaded from: classes7.dex */
public class a extends com.ss.android.socialbase.downloader.notification.a {
    public final Context b;
    public final Resources c;
    public String d;
    public String e;
    public String f;

    public a(Context context, int i, String str, String str2, String str3, String str4) {
        super(i, str);
        this.e = str2;
        this.d = str3;
        this.f = str4;
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.c = applicationContext.getResources();
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x05ab  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x05b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.app.Notification b(com.ss.android.socialbase.downloader.exception.BaseException r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 1467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.e.a.b(com.ss.android.socialbase.downloader.exception.BaseException, boolean):android.app.Notification");
    }

    private RemoteViews j() {
        RemoteViews remoteViews = new RemoteViews(this.b.getPackageName(), e.a());
        try {
            if (com.ss.android.socialbase.appdownloader.c.a(this.b)) {
                remoteViews.setInt(e.f(), "setBackgroundColor", this.b.getResources().getColor(e.r()));
            }
        } catch (Throwable unused) {
        }
        return remoteViews;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0044 -> B:15:0x004b). Please submit an issue!!! */
    private NotificationCompat.Builder k() {
        NotificationCompat.Builder builder;
        String i = com.ss.android.socialbase.appdownloader.d.j().i();
        if (Build.VERSION.SDK_INT < 26) {
            return new NotificationCompat.Builder(this.b);
        }
        if (TextUtils.isEmpty(i)) {
            i = com.ss.android.socialbase.appdownloader.c.b(this.b);
        }
        try {
            if (com.ss.android.socialbase.appdownloader.d.j().k() != null) {
                builder = com.ss.android.socialbase.appdownloader.d.j().k().a(this.b, i);
            } else {
                builder = new NotificationCompat.Builder(this.b, i);
            }
        } catch (NoSuchMethodError unused) {
            builder = new NotificationCompat.Builder(this.b);
        }
        return builder;
    }

    @Override // com.ss.android.socialbase.downloader.notification.a
    public void a(DownloadInfo downloadInfo) {
        super.a(downloadInfo);
        this.e = downloadInfo.getSavePath();
        this.d = downloadInfo.getName();
        this.f = downloadInfo.getExtra();
    }

    @Override // com.ss.android.socialbase.downloader.notification.a
    public void a(BaseException baseException, boolean z) {
        if (this.b == null) {
            return;
        }
        try {
            Notification b = b(baseException, z);
            this.f12011a = b;
            a(b);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private boolean a(BaseException baseException, com.ss.android.socialbase.downloader.g.a aVar, DownloadInfo downloadInfo) {
        return baseException != null && (baseException.getErrorCode() == 1013 || baseException.getErrorCode() == 1049) && downloadInfo != null && AdBaseConstants.MIME_APK.contains(downloadInfo.getMimeType()) && aVar.a("notification_text_opt", 0) == 1;
    }

    private int a(int i, int i2) {
        if (com.ss.android.socialbase.downloader.g.a.a(i2).b("notification_opt_2") == 1) {
            return e.v();
        }
        if (i == 1 || i == 4) {
            return e.t();
        }
        if (i == 2) {
            return e.u();
        }
        if (i == 3) {
            return e.v();
        }
        return 0;
    }

    private PendingIntent a(String str, int i, int i2) {
        Intent intent = new Intent(this.b, DownloadHandlerService.class);
        intent.setAction(str);
        intent.putExtra("extra_click_download_ids", i2);
        intent.putExtra("extra_click_download_type", i);
        intent.putExtra("extra_from_notification", true);
        return PendingIntent.getService(this.b, i2, intent, 201326592);
    }

    private int a(int i) {
        if (com.ss.android.socialbase.downloader.g.a.a(i).b("enable_notification_ui") >= 1) {
            return e.h();
        }
        return e.g();
    }
}
