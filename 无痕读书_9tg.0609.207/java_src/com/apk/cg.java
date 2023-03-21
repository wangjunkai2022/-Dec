package com.apk;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.app.AppContext;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* compiled from: NotificationUtil.java */
/* loaded from: classes8.dex */
public class cg {

    /* renamed from: do  reason: not valid java name */
    public static cg f597do;

    /* renamed from: for  reason: not valid java name */
    public static Map<String, NotificationCompat.Builder> f598for;

    /* renamed from: if  reason: not valid java name */
    public static NotificationManager f599if;

    /* renamed from: if  reason: not valid java name */
    public static cg m332if() {
        if (f597do == null) {
            synchronized (cg.class) {
                f597do = new cg();
            }
        }
        return f597do;
    }

    /* renamed from: do  reason: not valid java name */
    public void m333do(int i) {
        NotificationManager notificationManager = f599if;
        if (notificationManager != null) {
            notificationManager.cancel(i);
        }
        Map<String, NotificationCompat.Builder> map = f598for;
        if (map != null) {
            map.remove(String.valueOf(i));
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m334for(Context context, int i, String str) {
        if (f599if == null) {
            f599if = (NotificationManager) context.getSystemService("notification");
        }
        if (f598for == null) {
            f598for = new HashMap();
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
        NotificationCompat.Builder ongoing = builder.setSmallIcon(17301633).setContentTitle(str).setWhen(System.currentTimeMillis()).setVibrate(null).setSound(null).setLights(0, 0, 0).setOngoing(true);
        ongoing.setTicker(ze.q(R.string.download_begin_txt) + str).setProgress(100, 0, false);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            if (f599if != null && i2 >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("bqg_channel", "bqg_channel_name", 4);
                notificationChannel.enableVibration(false);
                notificationChannel.setVibrationPattern(new long[]{0});
                notificationChannel.setSound(null, null);
                notificationChannel.setImportance(2);
                f599if.createNotificationChannel(notificationChannel);
            }
            builder.setChannelId("bqg_channel");
        }
        NotificationManager notificationManager = f599if;
        if (notificationManager != null) {
            notificationManager.notify(i, builder.build());
        }
        Map<String, NotificationCompat.Builder> map = f598for;
        if (map != null) {
            map.put(String.valueOf(i), builder);
        }
    }

    /* renamed from: new  reason: not valid java name */
    public void m335new(int i, int i2, int i3) {
        NotificationCompat.Builder builder;
        String str;
        if (f599if == null || (builder = f598for.get(String.valueOf(i))) == null) {
            return;
        }
        long j = i2;
        float f = i3;
        String str2 = "";
        if (j >= 0 && f >= 0.0f && ((float) j) >= f) {
            double d = j;
            try {
                str2 = new BigDecimal((f * 100.0d) + "").divide(new BigDecimal(d + ""), 2, 4).toString();
                if (str2.indexOf(".") > 0) {
                    str2 = str2.substring(0, str2.indexOf("."));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            str2 = Cgoto.m989case(str2, "%");
        }
        builder.setProgress(i2, i3, false);
        AppContext appContext = AppContext.f6392case;
        Object[] objArr = new Object[2];
        objArr[0] = str2;
        long j2 = i3;
        if (j2 >= 1073741824) {
            str = String.format("%.1fG", Double.valueOf((j2 * 1.0d) / 1.073741824E9d));
        } else if (j2 > DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL) {
            str = String.format("%.1fM", Double.valueOf((j2 * 1.0d) / 1048576.0d));
        } else if (j2 > 1024) {
            str = String.format("%.1fK", Double.valueOf((j2 * 1.0d) / 1024.0d));
        } else {
            str = j2 + "B";
        }
        objArr[1] = str;
        builder.setContentText(appContext.getString(R.string.download_progress_txt, objArr));
        f599if.notify(i, builder.build());
    }
}
