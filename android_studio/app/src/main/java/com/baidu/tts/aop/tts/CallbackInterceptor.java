package com.baidu.tts.aop.tts;

import com.apk.Cgoto;
import com.baidu.tts.aop.AInterceptor;
import com.baidu.tts.aop.AInterceptorHandler;
import com.baidu.tts.aop.ttslistener.TtsListener;
import com.baidu.tts.aop.ttslistener.TtsListenerFactory;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.lang.reflect.Method;

/* loaded from: classes8.dex */
public class CallbackInterceptor extends AInterceptor {
    @Override // com.baidu.tts.aop.AInterceptor
    public void a() {
        this.f11115a.add("setTtsListener");
    }

    @Override // com.baidu.tts.aop.AInterceptor
    public Object a(Object obj, Method method, Object[] objArr) {
        StringBuilder m1016super = Cgoto.m1016super("method=");
        m1016super.append(method.getName());
        LoggerProxy.d("CallbackInterceptor", m1016super.toString());
        objArr[0] = new TtsListenerFactory((TtsListener) objArr[0]).makeProxy();
        return AInterceptorHandler.DEFAULT;
    }
}
