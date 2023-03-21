package com.bytedance.sdk.openadsdk.live;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apk.Cgoto;
import com.bytedance.android.live.base.api.ILiveHostContextParam;
import com.bytedance.android.live.base.api.ILiveInitCallback;
import com.bytedance.android.live.base.api.IOuterLiveRoomService;
import com.bytedance.android.live.base.api.MethodChannelService;
import com.bytedance.android.live.base.api.callback.Callback;
import com.bytedance.android.openliveplugin.LivePluginHelper;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdEvent;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.live.core.ITTLiveConfig;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class b extends com.bytedance.sdk.openadsdk.downloadnew.a implements Serializable {
    public ITTLiveConfig g = null;
    public JSONObject h = null;
    public ITTLiveTokenInjectionAuth i;
    public static final b b = new b();
    public static final AtomicBoolean c = new AtomicBoolean(false);
    public static final AtomicBoolean d = new AtomicBoolean(false);
    public static final AtomicBoolean e = new AtomicBoolean(false);
    public static final AtomicBoolean f = new AtomicBoolean(false);

    /* renamed from: a  reason: collision with root package name */
    public static TTAdEvent f11473a = null;

    private void c() {
        String str;
        ITTLiveConfig iTTLiveConfig;
        Plugin plugin;
        StringBuilder m1016super = Cgoto.m1016super("hasLiveSDKInited：");
        m1016super.append(f.get());
        m1016super.append(", hasLiveInstalled：");
        m1016super.append(d.get());
        com.bytedance.sdk.openadsdk.api.a.c("TTLiveSDkBridge", m1016super.toString());
        if (this.g != null) {
            StringBuilder m1016super2 = Cgoto.m1016super("GeneralAppId：");
            m1016super2.append(this.g.getGeneralAppId());
            m1016super2.append("，isValid：");
            m1016super2.append(this.g.isValid());
            str = m1016super2.toString();
        } else {
            str = null;
        }
        com.bytedance.sdk.openadsdk.api.a.c("TTLiveSDkBridge", str);
        if (f.get() || !d.get() || (iTTLiveConfig = this.g) == null || !iTTLiveConfig.isValid() || (plugin = Zeus.getPlugin("com.byted.live.lite")) == null || e.get()) {
            return;
        }
        e.set(true);
        if (!a.c(plugin.getVersion())) {
            com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "live sdk init crash more than consecutive 5 times , live plugin had uninstalled ! App cold start will request new live plugin ！");
            a.d(plugin.getVersion());
            e.set(false);
            return;
        }
        ILiveHostContextParam.Builder hostActionParam = new ILiveHostContextParam.Builder().setAppName(this.g.getAppName()).setChannel(this.g.getChannel()).setIsDebug(this.g.isDebug()).setECHostAppId(this.g.getECHostAppId()).setPartner(this.g.getPartner()).provideMethodChannel(new MethodChannelService() { // from class: com.bytedance.sdk.openadsdk.live.b.1
            public String identity() {
                return "pangle";
            }

            @Nullable
            public Object invokeMethod(String str2, Object... objArr) {
                if (TextUtils.isEmpty(str2)) {
                    return null;
                }
                char c2 = 65535;
                if (str2.hashCode() == -955478604 && str2.equals("getBiddingToken")) {
                    c2 = 0;
                }
                if (c2 != 0) {
                    return null;
                }
                return b.this.a(objArr);
            }
        }).setPartnerSecret(this.g.getPartnerSecret()).setHostPermission(this.g.getHostPermission()).setHostActionParam(new com.bytedance.sdk.openadsdk.live.core.a(this.g.getLiveHostAction()));
        if (this.i != null) {
            hostActionParam.setInjectionAuth(new com.bytedance.sdk.openadsdk.live.core.b(this.i));
        }
        ILiveInitCallback iLiveInitCallback = new ILiveInitCallback() { // from class: com.bytedance.sdk.openadsdk.live.b.2
            public final void onLiveInitFinish() {
                com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "onLiveInitFinish - live sdk init succeed！");
                com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "execute commerce initLiveCommerce method start");
                boolean a2 = a.a();
                com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "execute commerce initLiveCommerce end , result: " + a2);
                b.f.set(true);
                b.this.f();
                if (b.f11473a != null) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean(TTLiveConstants.PARAMS_LIVE_SDK_INIT_STATUS, b.f.get());
                    b.f11473a.onEvent(2, bundle);
                }
            }
        };
        if (TTAppContextHolder.getContext() instanceof Application) {
            hostActionParam.setContext((Application) TTAppContextHolder.getContext());
        }
        a.a(plugin.getVersion());
        StringBuilder sb = new StringBuilder();
        sb.append("execute live sdk initLive method start, GeneralAppId:");
        ITTLiveConfig iTTLiveConfig2 = this.g;
        sb.append(iTTLiveConfig2 != null ? iTTLiveConfig2.getGeneralAppId() : null);
        com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", sb.toString());
        Context context = TTAppContextHolder.getContext();
        ITTLiveConfig iTTLiveConfig3 = this.g;
        com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "execute live sdk initLive method end, (方法顺利执行结果)result: " + a.a(context, iTTLiveConfig3 != null ? iTTLiveConfig3.getGeneralAppId() : null, hostActionParam, iLiveInitCallback));
        e.set(false);
        a.b((long) plugin.getVersion());
    }

    private Boolean d() {
        try {
            Object callExpandMethod = LivePluginHelper.getLiveRoomService().callExpandMethod("hasAuthenticated", new Object[0]);
            if (callExpandMethod != null && (callExpandMethod instanceof Boolean)) {
                return (Boolean) callExpandMethod;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.a("TTLiveSDkBridge", th);
        }
        return Boolean.FALSE;
    }

    private void e() {
        try {
            LivePluginHelper.getLiveRoomService().callExpandMethod("warmingUpBeforeEnter", new Object[0]);
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.a("TTLiveSDkBridge", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (f11473a != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putBoolean("live_plugin_installed", d.get());
                bundle.putBoolean("live_plugin_inited", f.get());
                f11473a.onEvent(3, bundle);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private Context getContext(Object obj) {
        if (obj instanceof Context) {
            return (Context) obj;
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T callMethod(Class<T> cls, int i, Map<String, Object> map) {
        if (i == 0) {
            if (!f.get()) {
                return (T) 1;
            }
            if (!a.a(getContext(map.get("context")), a(map.get(TTLiveConstants.BUNDLE_KEY)))) {
                return (T) 2;
            }
            return (T) 0;
        } else if (i != 1) {
            if (i == 2) {
                a(map);
                return null;
            } else if (i == 3) {
                e();
                return null;
            } else if (i != 4) {
                return (T) super.callMethod(cls, i, map);
            } else {
                return (T) d();
            }
        } else {
            return (T) f;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public <T> T getObj(Class<T> cls, int i, Map<String, Object> map) {
        return (T) super.getObj(cls, i, map);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public void init(Bundle bundle) {
        super.init(bundle);
        ITTLiveConfig iTTLiveConfig = this.g;
        if (iTTLiveConfig != null && iTTLiveConfig.isValid() && !TextUtils.isEmpty(this.g.getGeneralAppId()) && !TextUtils.isEmpty(this.g.getPartner()) && !TextUtils.isEmpty(this.g.getPartnerSecret())) {
            com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "The configuration has been obtained. Do not repeat initialization");
            return;
        }
        Serializable serializable = bundle.getSerializable(TTLiveConstants.LIVE_INIT_CONFIG_KEY);
        if (serializable instanceof ITTLiveConfig) {
            this.g = (ITTLiveConfig) serializable;
        }
        try {
            this.h = new JSONObject(bundle.getString(TTLiveConstants.LIVE_INIT_EXTRA_KEY));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        c();
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.a, com.bytedance.sdk.openadsdk.TTAdBridge
    public void subscribe(TTAdEvent tTAdEvent) {
        f11473a = tTAdEvent;
        f();
    }

    public static b a() {
        return b;
    }

    public void a(ITTLiveTokenInjectionAuth iTTLiveTokenInjectionAuth) {
        this.i = iTTLiveTokenInjectionAuth;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            try {
                Integer num = (Integer) objArr[0];
                TTAdManager adManager = TTAdSdk.getAdManager();
                if (adManager != null) {
                    return adManager.getBiddingToken(new AdSlot.Builder().setAdType(num.intValue()).build());
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private void a(Map<String, Object> map) {
        try {
            long longValue = ((Long) map.get(TTLiveConstants.ROOMID_KEY)).longValue();
            final TTAdEvent tTAdEvent = (TTAdEvent) map.get("event");
            IOuterLiveRoomService liveRoomService = LivePluginHelper.getLiveRoomService();
            System.currentTimeMillis();
            Object callExpandMethod = liveRoomService.callExpandMethod("checkRoomAlive", new Object[]{new Callback<Boolean>() { // from class: com.bytedance.sdk.openadsdk.live.b.3
                /* renamed from: a */
                public void invoke(Boolean bool) {
                    if (tTAdEvent != null) {
                        Bundle bundle = new Bundle();
                        bundle.putBoolean(TTLiveConstants.PARAMS_LIVE_ROOM_STATUS, bool.booleanValue());
                        tTAdEvent.onEvent(0, bundle);
                    }
                }
            }, Long.valueOf(longValue), 300});
            if (callExpandMethod == null && tTAdEvent != null) {
                synchronized (tTAdEvent) {
                    try {
                        tTAdEvent.notifyAll();
                    } catch (Throwable unused) {
                    }
                }
            }
            com.bytedance.sdk.openadsdk.api.a.b("TTLiveSDkBridge", "has checkRoomAlive :" + callExpandMethod);
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.a("TTLiveSDkBridge", "getRoomState: exception:", th);
        }
    }

    private Bundle a(Object obj) {
        if (obj instanceof Bundle) {
            return (Bundle) obj;
        }
        return null;
    }
}
