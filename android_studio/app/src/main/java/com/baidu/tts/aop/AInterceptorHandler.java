package com.baidu.tts.aop;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public abstract class AInterceptorHandler implements IInterceptorHandler {
    public static final Object DEFAULT = 0;
    public static final Object END = 1;

    /* renamed from: a  reason: collision with root package name */
    public List<IInterceptor> f11116a;
    public Object b;
    public List<String> c = new ArrayList();

    public Object a(Object obj, Method method, Object[] objArr) {
        Object obj2 = DEFAULT;
        int size = this.f11116a.size();
        for (int i = 0; i < size; i++) {
            obj2 = this.f11116a.get(i).before(obj, method, objArr);
            if (obj2.equals(END)) {
                return obj2;
            }
        }
        return obj2;
    }

    @Override // com.baidu.tts.aop.IInterceptorHandler
    public Object bind(Object obj, List<IInterceptor> list) {
        this.b = obj;
        this.f11116a = list;
        Class<?> cls = obj.getClass();
        Object newProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), cls.getInterfaces(), this);
        LoggerProxy.d("AInterceptorHandler", "proxy=" + newProxyInstance);
        return newProxyInstance;
    }

    @Override // com.baidu.tts.aop.IInterceptorHandler
    public boolean canIntercept(String str) {
        return this.c.contains(str);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if (canIntercept(method.getName())) {
            if (a(this.b, method, objArr).equals(END)) {
                return null;
            }
            Object invoke = method.invoke(this.b, objArr);
            Object a2 = a(this.b, method, objArr, invoke);
            LoggerProxy.d("AInterceptorHandler", "afterResult=" + a2);
            return invoke;
        }
        return method.invoke(this.b, objArr);
    }

    @Override // com.baidu.tts.aop.IInterceptorHandler
    public void registerMethod(String str) {
        if (str != null) {
            this.c.add(str);
        }
    }

    @Override // com.baidu.tts.aop.IInterceptorHandler
    public void unregisterMethod(String str) {
        if (str != null) {
            this.c.remove(str);
        }
    }

    public Object a(Object obj, Method method, Object[] objArr, Object obj2) {
        Object obj3 = DEFAULT;
        for (int size = this.f11116a.size() - 1; size >= 0; size--) {
            obj3 = this.f11116a.get(size).after(obj, method, objArr, obj2);
        }
        return obj3;
    }
}
