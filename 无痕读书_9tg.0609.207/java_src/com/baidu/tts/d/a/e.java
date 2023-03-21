package com.baidu.tts.d.a;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.d.a.b;
import java.util.concurrent.Future;
/* compiled from: EngineDownloadHandler.java */
/* loaded from: classes8.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public Future<Void> f11187a;
    public b.a b;

    public void a(Future<Void> future) {
        this.f11187a = future;
    }

    public void a(b.a aVar) {
        this.b = aVar;
    }

    public void a() {
        LoggerProxy.d("EngineDownloadHandler", "before stop");
        try {
            LoggerProxy.d("EngineDownloadHandler", "stop fileId=" + this.b.c().a());
        } catch (Exception unused) {
        }
        Future<Void> future = this.f11187a;
        if (future != null) {
            boolean cancel = future.cancel(true);
            LoggerProxy.d("EngineDownloadHandler", "unDone = " + cancel);
        }
        b.a aVar = this.b;
        if (aVar != null) {
            aVar.b();
        }
        LoggerProxy.d("EngineDownloadHandler", "after stop");
    }
}
