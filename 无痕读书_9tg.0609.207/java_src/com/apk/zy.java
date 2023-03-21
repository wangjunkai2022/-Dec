package com.apk;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: DownloadThreadPool.java */
/* loaded from: classes8.dex */
public class zy {

    /* renamed from: for  reason: not valid java name */
    public static final TimeUnit f6271for = TimeUnit.HOURS;

    /* renamed from: do  reason: not valid java name */
    public int f6272do = 3;

    /* renamed from: if  reason: not valid java name */
    public dz f6273if;

    /* renamed from: do  reason: not valid java name */
    public dz m3264do() {
        if (this.f6273if == null) {
            synchronized (zy.class) {
                if (this.f6273if == null) {
                    this.f6273if = new dz(this.f6272do, 5, 1L, f6271for, new az(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
                }
            }
        }
        return this.f6273if;
    }
}
