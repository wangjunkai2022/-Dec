package com.baidu.tts.auth;

import com.apk.Cgoto;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.auth.d;
import com.baidu.tts.auth.e;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.m;
import com.baidu.tts.f.n;

/* loaded from: classes8.dex */
public class AuthInfo {

    /* renamed from: a  reason: collision with root package name */
    public m f11120a;
    public e.a b;
    public d.a c;
    public TtsError d;

    /* renamed from: com.baidu.tts.auth.AuthInfo$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11121a;

        static {
            int[] iArr = new int[m.values().length];
            f11121a = iArr;
            try {
                m mVar = m.ONLINE;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11121a;
                m mVar2 = m.OFFLINE;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11121a;
                m mVar3 = m.MIX;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public int getLeftValidDays() {
        return this.c.a();
    }

    public TtsError getMixTtsError() {
        TtsError b;
        TtsError onlineTtsError = getOnlineTtsError();
        TtsError offlineTtsError = getOfflineTtsError();
        if (onlineTtsError != null && offlineTtsError != null) {
            b = com.baidu.tts.h.a.c.a().b(n.MIX_ENGINE_AUTH_FAILURE);
        } else if (onlineTtsError == null && offlineTtsError != null) {
            b = com.baidu.tts.h.a.c.a().b(n.OFFLINE_ENGINE_AUTH_FAILURE);
        } else {
            b = (onlineTtsError == null || offlineTtsError != null) ? null : com.baidu.tts.h.a.c.a().b(n.ONLINE_ENGINE_AUTH_FAILURE);
        }
        return b != null ? b : this.d;
    }

    public String getNotifyMessage() {
        return this.c.c();
    }

    public d.a getOfflineResult() {
        return this.c;
    }

    public TtsError getOfflineTtsError() {
        d.a aVar = this.c;
        return aVar != null ? aVar.b() : this.d;
    }

    public e.a getOnlineResult() {
        return this.b;
    }

    public TtsError getOnlineTtsError() {
        e.a aVar = this.b;
        return aVar != null ? aVar.b() : this.d;
    }

    public m getTtsEnum() {
        return this.f11120a;
    }

    public TtsError getTtsError() {
        TtsError ttsError = this.d;
        if (ttsError == null) {
            int i = AnonymousClass1.f11121a[this.f11120a.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return getMixTtsError();
                }
                return this.c.b();
            }
            return this.b.b();
        }
        return ttsError;
    }

    public boolean isMixSuccess() {
        return isOnlineSuccess() || isOfflineSuccess();
    }

    public boolean isOfflineSuccess() {
        d.a aVar = this.c;
        if (aVar != null) {
            return aVar.g();
        }
        return false;
    }

    public boolean isOnlineSuccess() {
        e.a aVar = this.b;
        if (aVar != null) {
            return aVar.g();
        }
        return false;
    }

    public boolean isSuccess() {
        if (this.d == null) {
            m mVar = this.f11120a;
            if (mVar != null) {
                int i = AnonymousClass1.f11121a[mVar.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return false;
                        }
                        return isMixSuccess();
                    }
                    return isOfflineSuccess();
                }
                return isOnlineSuccess();
            }
            return false;
        }
        StringBuilder m1016super = Cgoto.m1016super("cause=");
        m1016super.append(this.d.getThrowable().getMessage());
        LoggerProxy.d("AuthInfo", m1016super.toString());
        return false;
    }

    public void setOfflineResult(d.a aVar) {
        this.c = aVar;
    }

    public void setOnlineResult(e.a aVar) {
        this.b = aVar;
    }

    public void setTtsEnum(m mVar) {
        this.f11120a = mVar;
    }

    public void setTtsError(TtsError ttsError) {
        this.d = ttsError;
    }
}
