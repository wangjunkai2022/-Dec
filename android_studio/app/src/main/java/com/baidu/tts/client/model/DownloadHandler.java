package com.baidu.tts.client.model;

import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.d.a;
import com.baidu.tts.d.b;
import com.baidu.tts.d.b.d;
import java.util.UUID;
import java.util.concurrent.Future;

/* loaded from: classes8.dex */
public class DownloadHandler {
    public static final int DOWNLOAD_SUCCESS = 0;

    /* renamed from: a  reason: collision with root package name */
    public b f11171a;
    public Future<a> b;
    public TtsError c;
    public com.baidu.tts.l.a f;
    public com.baidu.tts.d.b.a d = com.baidu.tts.d.b.a.a();
    public volatile boolean e = false;
    public RecordData g = null;
    public String h = UUID.randomUUID().toString();

    public DownloadHandler(com.baidu.tts.l.a aVar) {
        this.f = aVar;
    }

    private OnDownloadListener a() {
        return this.f11171a.c();
    }

    public b getDownloadParams() {
        return this.f11171a;
    }

    public int getErrorCode() {
        return getErrorCode(this.c);
    }

    public String getErrorMessage() {
        return getErrorMessage(this.c);
    }

    public String getModelId() {
        return this.f11171a.a();
    }

    public TtsError getTtsError() {
        return this.c;
    }

    public void reset(b bVar) {
        setDownloadParams(bVar);
        reset();
    }

    public void setCheckFuture(Future<a> future) {
        this.b = future;
    }

    public void setDownloadParams(b bVar) {
        this.f11171a = bVar;
    }

    public void setTtsError(TtsError ttsError) {
        this.c = ttsError;
    }

    public synchronized void stop() {
        LoggerProxy.d("DownloadHandler", "stop");
        this.e = true;
        if (this.b != null) {
            this.b.cancel(true);
            this.b = null;
        }
        this.d.a(this);
        this.f11171a.a((OnDownloadListener) null);
    }

    public void updateFinish(d dVar, TtsError ttsError) {
        updateFinish(dVar.g(), ttsError);
    }

    public void updateProgress(d dVar) {
        a(dVar.g(), dVar.h(), dVar.c());
    }

    public void updateStart(d dVar) {
        a(dVar.g());
    }

    private void a(String str) {
        this.g = new RecordData(this.f);
        synchronized (this) {
            if (Statistics.isStatistics) {
                this.g.setStartInfo(this.h, str, System.currentTimeMillis() + "");
            }
        }
        OnDownloadListener a2 = a();
        if (a2 != null) {
            synchronized (this) {
                if (!this.e) {
                    a2.onStart(str);
                }
            }
        }
    }

    public int getErrorCode(TtsError ttsError) {
        if (ttsError != null) {
            return ttsError.getDetailCode();
        }
        return 0;
    }

    public String getErrorMessage(TtsError ttsError) {
        if (ttsError != null) {
            return ttsError.getDetailMessage();
        }
        return null;
    }

    public void updateFinish(String str, TtsError ttsError) {
        setTtsError(ttsError);
        a(str, getErrorCode());
    }

    public synchronized void reset() {
        LoggerProxy.d("DownloadHandler", "reset");
        this.e = false;
    }

    private void a(String str, long j, long j2) {
        OnDownloadListener a2 = a();
        if (a2 != null) {
            synchronized (this) {
                if (!this.e) {
                    a2.onProgress(str, j, j2);
                }
            }
        }
    }

    private void a(String str, int i) {
        if (Statistics.isStatistics) {
            this.g.setEndInfo(this.h, str, i, System.currentTimeMillis() + "");
        }
        OnDownloadListener a2 = a();
        if (a2 != null) {
            synchronized (this) {
                if (!this.e) {
                    a2.onFinish(str, i);
                    this.f11171a.a((OnDownloadListener) null);
                }
            }
        }
        synchronized (this) {
            if (Statistics.isStatistics) {
                this.g.setEndInfo(this.h, str, i, System.currentTimeMillis() + "");
            }
            if (Statistics.isStatistics) {
                int start = new Statistics(this.f.d()).start();
                LoggerProxy.d("DownloadHandler", " statistics ret=" + start);
            }
        }
    }
}
