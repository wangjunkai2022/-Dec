package com.baidu.tts.aop.tts;

import com.baidu.tts.aop.AInterceptor;
import com.baidu.tts.aop.AInterceptorHandler;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.n;
import com.baidu.tts.h.a.c;
import com.baidu.tts.m.h;
import com.baidu.tts.m.i;
import com.baidu.tts.tools.ResourceTools;
import java.lang.reflect.Method;
/* loaded from: classes8.dex */
public class ArgsCheckInterceptor extends AInterceptor {
    @Override // com.baidu.tts.aop.AInterceptor
    public void a() {
        this.f11115a.add("speak");
        this.f11115a.add("synthesize");
    }

    @Override // com.baidu.tts.aop.AInterceptor
    public Object a(Object obj, Method method, Object[] objArr) {
        i iVar = (i) objArr[0];
        String c = iVar.c();
        LoggerProxy.d("ArgsCheckInterceptor", "text=" + c);
        if (ResourceTools.isTextValid(c) == null) {
            return AInterceptorHandler.DEFAULT;
        }
        return a(obj, iVar, n.TEXT_IS_TOO_LONG);
    }

    private Object a(Object obj, i iVar, n nVar) {
        h b = h.b(iVar);
        b.a(c.a().b(nVar));
        a(obj, b);
        return AInterceptorHandler.END;
    }

    private void a(Object obj, h hVar) {
        TtsListener ttsListener = ((com.baidu.tts.o.a.c) obj).getTtsListener();
        if (ttsListener != null) {
            ttsListener.onError(hVar);
        }
    }
}
