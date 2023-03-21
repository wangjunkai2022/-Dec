package com.baidu.tts.p;

import android.content.Context;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* compiled from: StatisticsClient.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public c f11258a;
    public Context b;
    public FutureTask<Integer> c;

    public b(Context context) {
        this.b = context;
        this.f11258a = new c(context);
    }

    public void a() {
        int i;
        FutureTask<Integer> a2 = this.f11258a.a();
        this.c = a2;
        try {
            i = a2.get().intValue();
        } catch (InterruptedException e) {
            e.printStackTrace();
            i = -1;
            LoggerProxy.d("StatisticsClient", "Statistics uploade result=" + i);
        } catch (ExecutionException e2) {
            e2.printStackTrace();
            i = -1;
            LoggerProxy.d("StatisticsClient", "Statistics uploade result=" + i);
        }
        LoggerProxy.d("StatisticsClient", "Statistics uploade result=" + i);
    }

    public void b() {
        if (this.c != null) {
            this.f11258a.b();
        }
    }
}
