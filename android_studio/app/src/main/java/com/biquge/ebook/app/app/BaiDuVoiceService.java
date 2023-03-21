package com.biquge.ebook.app.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.widget.RemoteViews;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.apk.ze;
import com.biquge.ebook.app.receiver.RemoteReceiver;
import com.biquge.ebook.app.ui.activity.WelComeActivity;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BaiDuVoiceService extends Service {

    /* renamed from: do  reason: not valid java name */
    public NotificationManager f6413do;

    /* renamed from: if  reason: not valid java name */
    public RemoteViews f6414if;

    /* renamed from: do  reason: not valid java name */
    public final Notification m3306do(String str, boolean z) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(new ComponentName(getPackageName(), WelComeActivity.class.getName()));
        intent.setFlags(270532608);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 0);
        PendingIntent broadcast = PendingIntent.getBroadcast(this, 0, new Intent(this, RemoteReceiver.class), 134217728);
        RemoteViews remoteViews = new RemoteViews(getPackageName(), (int) R.layout.view_voice_notifica_layout);
        this.f6414if = remoteViews;
        remoteViews.setTextViewText(R.id.notifica_title_tv, getString(R.string.book_use_listen_service));
        this.f6414if.setTextViewText(R.id.notifica_desc_tv, str);
        this.f6414if.setImageViewResource(R.id.notifica_play_bt, z ? R.drawable.icon_yuyin_play : R.drawable.icon_yuyin_pause);
        this.f6414if.setOnClickPendingIntent(R.id.notifica_play_bt, broadcast);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, "BAIDU_FOREGROUNP_SERVICE_CHANNELID");
        builder.setSmallIcon(R.mipmap.ic_launcher).setCustomContentView(this.f6414if).setContentIntent(activity).setOngoing(true);
        if (Build.VERSION.SDK_INT >= 26) {
            this.f6413do.createNotificationChannel(new NotificationChannel("BAIDU_FOREGROUNP_SERVICE_CHANNELID", ze.m3166extends(), 2));
            builder.setChannelId("BAIDU_FOREGROUNP_SERVICE_CHANNELID");
        }
        Notification build = builder.build();
        build.contentIntent = activity;
        this.f6413do.notify(1, build);
        return build;
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f6413do = (NotificationManager) getSystemService("notification");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.f6414if != null) {
            this.f6414if = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[Catch: Exception -> 0x003f, TRY_LEAVE, TryCatch #0 {Exception -> 0x003f, blocks: (B:17:0x002a, B:19:0x002e, B:24:0x003b, B:21:0x0032), top: B:30:0x002a, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onStartCommand(android.content.Intent r4, int r5, int r6) {
        /*
            r3 = this;
            r5 = 0
            r6 = 0
            if (r4 == 0) goto L15
            java.lang.String r0 = "bookName"
            java.lang.String r6 = r4.getStringExtra(r0)     // Catch: java.lang.Exception -> L11
            java.lang.String r0 = "isPauseReadAloud"
            boolean r4 = r4.getBooleanExtra(r0, r5)     // Catch: java.lang.Exception -> L11
            goto L16
        L11:
            r4 = move-exception
            r0 = r6
            r6 = 0
            goto L24
        L15:
            r4 = 0
        L16:
            boolean r0 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L1f
            if (r0 == 0) goto L29
            java.lang.String r6 = "享受听书，享受生活"
            goto L29
        L1f:
            r0 = move-exception
            r2 = r6
            r6 = r4
            r4 = r0
            r0 = r2
        L24:
            r4.printStackTrace()
            r4 = r6
            r6 = r0
        L29:
            r0 = 1
            android.widget.RemoteViews r1 = r3.f6414if     // Catch: java.lang.Exception -> L3f
            if (r1 == 0) goto L32
            r3.m3306do(r6, r4)     // Catch: java.lang.Exception -> L3f
            goto L43
        L32:
            android.app.Notification r4 = r3.m3306do(r6, r5)     // Catch: java.lang.Exception -> L3a
            r3.startForeground(r0, r4)     // Catch: java.lang.Exception -> L3a
            goto L43
        L3a:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Exception -> L3f
            goto L43
        L3f:
            r4 = move-exception
            r4.printStackTrace()
        L43:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.app.BaiDuVoiceService.onStartCommand(android.content.Intent, int, int):int");
    }
}
