package com.apk;

import android.os.Process;

/* compiled from: TrAnalyticsSdk.java */
/* renamed from: com.apk.case  reason: invalid class name */
/* loaded from: classes8.dex */
public final class Ccase implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            Process.setThreadPriority(10);
            Thread.sleep(5000L);
            boolean z = true;
            int i = 0;
            while (z) {
                i++;
                if (Celse.m646do() || i >= ze.m3174instanceof("SP_ANALYTICS_REPORT_REQ_MAX_KEY", 3)) {
                    z = false;
                }
                Thread.sleep(ze.m3174instanceof("SP_ANALYTICS_REPORT_REQ_INTERVAL_KEY", 15) * 1000);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
