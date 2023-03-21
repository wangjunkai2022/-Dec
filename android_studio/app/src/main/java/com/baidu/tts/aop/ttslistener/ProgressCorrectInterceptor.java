package com.baidu.tts.aop.ttslistener;

import android.text.TextUtils;
import com.baidu.tts.aop.AInterceptor;
import com.baidu.tts.aop.AInterceptorHandler;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.m.h;
import java.lang.reflect.Method;

/* loaded from: classes8.dex */
public class ProgressCorrectInterceptor extends AInterceptor {
    @Override // com.baidu.tts.aop.AInterceptor
    public void a() {
        this.f11115a.add("onSynthesizeDataArrived");
        this.f11115a.add("onPlayProgressUpdate");
    }

    @Override // com.baidu.tts.aop.AInterceptor
    public Object a(Object obj, Method method, Object[] objArr) {
        h hVar = (h) objArr[0];
        if (hVar != null) {
            String b = hVar.f().b();
            if (!TextUtils.isEmpty(b)) {
                int length = b.length();
                int c = hVar.c();
                int i = c > length ? c - length : 0;
                LoggerProxy.d("ProgressCorrectInterceptor", "prefixLength=" + length + "--progress=" + c);
                h G = hVar.G();
                G.d(i);
                objArr[0] = G;
            }
        }
        return AInterceptorHandler.DEFAULT;
    }
}
