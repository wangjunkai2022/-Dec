package com.umeng.commonsdk.statistics.noise;

import android.content.Context;
import com.baidu.tts.client.SpeechSynthesizer;
import com.umeng.analytics.pro.ak;
import com.umeng.commonsdk.statistics.a;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.internal.d;

/* loaded from: classes7.dex */
public class ImLatent implements d {
    public static ImLatent instanse;
    public Context context;
    public StatTracer statTracer;
    public com.umeng.commonsdk.statistics.common.d storeHelper;
    public final int _DEFAULT_HOURS = 360;
    public final int _DEFAULT_MIN_HOURS = 36;
    public final int _DEFAULT_MIN_LATENT = 1;
    public final int _DEFAULT_MAX_LATENT = 1800;
    public final long _ONE_HOURS_IN_MS = 3600000;
    public final long _360HOURS_IN_MS = 1296000000;
    public final long _36HOURS_IN_MS = 129600000;
    public final int LATENT_MAX = 1800000;
    public final int LATENT_WINDOW = 10;
    public long latentHour = 1296000000;
    public int latentWindow = 10;
    public long mDelay = 0;
    public long mElapsed = 0;
    public boolean mLatentActivite = false;
    public Object mLatentLock = new Object();

    public ImLatent(Context context, StatTracer statTracer) {
        this.context = context;
        this.storeHelper = com.umeng.commonsdk.statistics.common.d.a(context);
        this.statTracer = statTracer;
    }

    public static synchronized ImLatent getService(Context context, StatTracer statTracer) {
        ImLatent imLatent;
        synchronized (ImLatent.class) {
            if (instanse == null) {
                ImLatent imLatent2 = new ImLatent(context, statTracer);
                instanse = imLatent2;
                imLatent2.onImprintChanged(ImprintHandler.getImprintService(context).c());
            }
            imLatent = instanse;
        }
        return imLatent;
    }

    public long getDelayTime() {
        long j;
        synchronized (this.mLatentLock) {
            j = this.mDelay;
        }
        return j;
    }

    public long getElapsedTime() {
        return this.mElapsed;
    }

    public boolean isLatentActivite() {
        boolean z;
        synchronized (this.mLatentLock) {
            z = this.mLatentActivite;
        }
        return z;
    }

    public void latentDeactivite() {
        synchronized (this.mLatentLock) {
            this.mLatentActivite = false;
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.d
    public void onImprintChanged(ImprintHandler.a aVar) {
        int intValue = Integer.valueOf(aVar.a("latent_hours", String.valueOf(360))).intValue();
        this.latentHour = (intValue > 36 ? intValue : 360) * 3600000;
        int intValue2 = Integer.valueOf(aVar.a(ak.aR, SpeechSynthesizer.REQUEST_DNS_OFF)).intValue();
        intValue2 = (intValue2 < 1 || intValue2 > 1800) ? 0 : 0;
        if (intValue2 == 0) {
            int i = a.c;
            if (i > 0 && i <= 1800000) {
                this.latentWindow = i;
                return;
            } else {
                this.latentWindow = 10;
                return;
            }
        }
        this.latentWindow = intValue2;
    }

    public boolean shouldStartLatency() {
        if (this.storeHelper.c() || this.statTracer.isFirstRequest()) {
            return false;
        }
        synchronized (this.mLatentLock) {
            if (this.mLatentActivite) {
                return false;
            }
            long currentTimeMillis = System.currentTimeMillis() - this.statTracer.getLastReqTime();
            if (currentTimeMillis > this.latentHour) {
                String signature = Envelope.getSignature(this.context);
                synchronized (this.mLatentLock) {
                    this.mDelay = DataHelper.random(this.latentWindow, signature);
                    this.mElapsed = currentTimeMillis;
                    this.mLatentActivite = true;
                }
                return true;
            } else if (currentTimeMillis > 129600000) {
                synchronized (this.mLatentLock) {
                    this.mDelay = 0L;
                    this.mElapsed = currentTimeMillis;
                    this.mLatentActivite = true;
                }
                return true;
            } else {
                return false;
            }
        }
    }
}
