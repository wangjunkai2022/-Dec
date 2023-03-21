package com.bytedance.sdk.openadsdk.a;

import android.app.Application;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.TTAdBridge;
import com.bytedance.sdk.openadsdk.TTAdEvent;
import com.bytedance.sdk.openadsdk.a.a;
import java.util.Map;

/* loaded from: classes8.dex */
public class b implements TTAdBridge {

    /* renamed from: a  reason: collision with root package name */
    public static volatile b f11409a;
    public a b = new a();

    public static final b a() {
        if (f11409a == null) {
            synchronized (b.class) {
                if (f11409a == null) {
                    f11409a = new b();
                }
            }
        }
        return f11409a;
    }

    public Application.ActivityLifecycleCallbacks b() {
        return this.b;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public String call(int i, Bundle bundle) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T callMethod(Class<T> cls, int i, Map<String, Object> map) {
        if (i != 2) {
            return null;
        }
        return (T) this.b.a();
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T getObj(Class<T> cls) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T getObj(Class<T> cls, int i, Map<String, Object> map) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void init(Bundle bundle) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void removeObj(Object obj) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void setObj(Object obj) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void subscribe(final TTAdEvent tTAdEvent) {
        this.b.a(new a.InterfaceC0121a() { // from class: com.bytedance.sdk.openadsdk.a.b.1
            @Override // com.bytedance.sdk.openadsdk.a.a.InterfaceC0121a
            public void a() {
                tTAdEvent.onEvent(0, null);
            }

            @Override // com.bytedance.sdk.openadsdk.a.a.InterfaceC0121a
            public void b() {
                tTAdEvent.onEvent(1, null);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdBridge
    public void unsubscribe(TTAdEvent tTAdEvent) {
    }
}
