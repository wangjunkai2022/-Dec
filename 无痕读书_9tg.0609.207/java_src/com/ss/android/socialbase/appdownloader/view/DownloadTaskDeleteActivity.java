package com.ss.android.socialbase.appdownloader.view;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.ss.android.socialbase.appdownloader.c.c;
import com.ss.android.socialbase.appdownloader.c.k;
import com.ss.android.socialbase.appdownloader.c.l;
import com.ss.android.socialbase.appdownloader.d;
import com.ss.android.socialbase.appdownloader.i;
import com.ss.android.socialbase.downloader.depend.z;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.i.f;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* loaded from: classes7.dex */
public class DownloadTaskDeleteActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public k f11789a;
    public Intent b;

    private void b() {
        Intent intent;
        if (this.f11789a != null || (intent = this.b) == null) {
            return;
        }
        try {
            final boolean z = false;
            final int intExtra = intent.getIntExtra("extra_click_download_ids", 0);
            final DownloadInfo downloadInfo = Downloader.getInstance(getApplicationContext()).getDownloadInfo(intExtra);
            if (downloadInfo == null) {
                return;
            }
            String title = downloadInfo.getTitle();
            if (TextUtils.isEmpty(title)) {
                return;
            }
            String format = String.format(getString(i.a(this, "tt_appdownloader_notification_download_delete")), title);
            c a2 = d.j().a();
            l a3 = a2 != null ? a2.a(this) : null;
            if (a3 == null) {
                a3 = new com.ss.android.socialbase.appdownloader.d.a(this);
            }
            int a4 = i.a(this, "tt_appdownloader_tip");
            int a5 = i.a(this, "tt_appdownloader_label_ok");
            int a6 = i.a(this, "tt_appdownloader_label_cancel");
            if (com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId()).a("cancel_with_net_opt", 0) == 1 && f.h() && downloadInfo.getCurBytes() != downloadInfo.getTotalBytes()) {
                z = true;
            }
            if (z) {
                a5 = i.a(this, "tt_appdownloader_label_reserve_wifi");
                a6 = i.a(this, "tt_appdownloader_label_cancel_directly");
                format = getResources().getString(i.a(this, "tt_appdownloader_resume_in_wifi"));
            }
            a3.a(a4).a(format).a(a5, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (!z) {
                        DownloadTaskDeleteActivity.this.a(downloadInfo, intExtra);
                    } else {
                        downloadInfo.setOnlyWifi(true);
                        Downloader.getInstance(DownloadTaskDeleteActivity.this).pause(downloadInfo.getId());
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Downloader.getInstance(DownloadTaskDeleteActivity.this).resume(downloadInfo.getId());
                            }
                        }, 100L);
                    }
                    DownloadTaskDeleteActivity.this.finish();
                }
            }).b(a6, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (z) {
                        DownloadTaskDeleteActivity.this.a(downloadInfo, intExtra);
                    }
                    DownloadTaskDeleteActivity.this.finish();
                }
            }).a(new DialogInterface.OnCancelListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    DownloadTaskDeleteActivity.this.finish();
                }
            });
            this.f11789a = a3.a();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.b = getIntent();
        b();
        k kVar = this.f11789a;
        if (kVar != null && !kVar.b()) {
            this.f11789a.a();
        } else if (this.f11789a == null) {
            finish();
        }
    }

    private void a() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(DownloadInfo downloadInfo, int i) {
        com.ss.android.socialbase.appdownloader.c.d b = d.j().b();
        if (b != null) {
            b.a(downloadInfo);
        }
        z downloadNotificationEventListener = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).getDownloadNotificationEventListener(i);
        if (downloadNotificationEventListener != null) {
            downloadNotificationEventListener.a(10, downloadInfo, "", "");
        }
        if (com.ss.android.socialbase.downloader.downloader.c.N() != null) {
            Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).cancel(i);
        }
    }
}
