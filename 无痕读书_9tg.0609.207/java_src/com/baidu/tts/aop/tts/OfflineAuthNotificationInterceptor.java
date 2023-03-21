package com.baidu.tts.aop.tts;

import com.baidu.tts.aop.AInterceptor;
import com.baidu.tts.aop.AInterceptorHandler;
import com.baidu.tts.auth.a;
import com.baidu.tts.auth.d;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.m;
import com.baidu.tts.m.i;
import com.baidu.tts.m.j;
import com.baidu.tts.o.a.c;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes8.dex */
public class OfflineAuthNotificationInterceptor extends AInterceptor {
    public AtomicInteger b = new AtomicInteger(-1);

    /* renamed from: com.baidu.tts.aop.tts.OfflineAuthNotificationInterceptor$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11117a;

        static {
            int[] iArr = new int[m.values().length];
            f11117a = iArr;
            try {
                m mVar = m.MIX;
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11117a;
                m mVar2 = m.OFFLINE;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.baidu.tts.aop.AInterceptor
    public void a() {
        this.f11115a.add("speak");
    }

    @Override // com.baidu.tts.aop.AInterceptor
    public Object a(Object obj, Method method, Object[] objArr) {
        c cVar = (c) obj;
        if (cVar.q()) {
            m mode = cVar.getMode();
            if (mode == null) {
                cVar.p();
                return AInterceptorHandler.END;
            }
            int i = AnonymousClass1.f11117a[mode.ordinal()];
            if (i == 1 || i == 2) {
                int incrementAndGet = this.b.incrementAndGet();
                LoggerProxy.d("OfflineAuthNotificationInterceptor", "currentCount=" + incrementAndGet);
                if (incrementAndGet % 20 == 0) {
                    i iVar = (i) objArr[0];
                    j ttsParams = cVar.getTtsParams();
                    if (ttsParams != null) {
                        return a(cVar, ttsParams, iVar);
                    }
                    cVar.p();
                    return AInterceptorHandler.END;
                }
            }
            return AInterceptorHandler.DEFAULT;
        }
        cVar.p();
        return AInterceptorHandler.END;
    }

    private Object a(c cVar, j jVar, i iVar) {
        a(a.a().a(jVar.d()), iVar);
        return AInterceptorHandler.DEFAULT;
    }

    private void a(d.a aVar, i iVar) {
        if (aVar.d()) {
            iVar.a(String.format(Locale.US, "百度语音试用服务%d天后到期，", Integer.valueOf(aVar.a())));
        }
        if (aVar.f()) {
            iVar.a("百度语音试用服务已经到期，请及时更新授权，");
        }
        iVar.a();
    }
}
