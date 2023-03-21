package com.bytedance.msdk.api.v2.ad.custom.init;

import android.content.Context;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomInitConfig;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes8.dex */
public abstract class GMCustomAdapterConfiguration {

    /* renamed from: if  reason: not valid java name */
    public static final AtomicBoolean f9159if = new AtomicBoolean(false);

    /* renamed from: do  reason: not valid java name */
    public GMCustomInitConfig f9160do;

    public final void callInitSuccess() {
        f9159if.set(true);
    }

    public abstract String getAdapterSdkVersion();

    public String getBiddingToken(Context context, Map<String, Object> map) {
        return null;
    }

    public final String getCustomADNName() {
        return this.f9160do.getADNName();
    }

    public abstract String getNetworkSdkVersion();

    public String getSdkInfo(Context context, Map<String, Object> map) {
        return null;
    }

    public abstract void initializeADN(Context context, GMCustomInitConfig gMCustomInitConfig, Map<String, Object> map);

    public final void initializeInnerADN(Context context, GMCustomInitConfig gMCustomInitConfig, Map<String, Object> map) {
        f9159if.set(false);
        this.f9160do = gMCustomInitConfig;
        initializeADN(context, gMCustomInitConfig, map);
    }

    public final boolean isInit() {
        return f9159if.get();
    }
}
