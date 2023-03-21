package com.baidu.tts.g.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.concurrent.ThreadFactory;

/* compiled from: NameThreadFactory.java */
/* loaded from: classes8.dex */
public class a implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    public String f11225a;
    public int b;

    public a(String str) {
        this.f11225a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        this.b++;
        String str = this.f11225a + "(" + this.b + ")";
        thread.setName(str);
        LoggerProxy.d("NameThreadFactory", "threadName=" + str);
        return thread;
    }
}
