package com.baidu.tts.client.model;

import android.content.Context;
import com.baidu.tts.p.b;

/* loaded from: classes8.dex */
public class Statistics {
    public static boolean isStatistics = true;

    /* renamed from: a  reason: collision with root package name */
    public b f11180a;

    public Statistics(Context context) {
        this.f11180a = new b(context);
    }

    public static void setEnable(boolean z) {
        isStatistics = z;
    }

    public int start() {
        this.f11180a.a();
        return 0;
    }

    public int stop() {
        this.f11180a.b();
        return 0;
    }
}
