package com.bytedance.sdk.openadsdk.live.core;

import com.bytedance.android.live.base.api.ILiveHostActionParam;
import java.util.Map;

/* loaded from: classes8.dex */
public class a implements ILiveHostActionParam {

    /* renamed from: a  reason: collision with root package name */
    public ITTLiveHostAction f11480a;

    public a(ITTLiveHostAction iTTLiveHostAction) {
        this.f11480a = iTTLiveHostAction;
    }

    public void logEvent(boolean z, String str, String str2, Map<String, String> map) {
        ITTLiveHostAction iTTLiveHostAction = this.f11480a;
        if (iTTLiveHostAction != null) {
            iTTLiveHostAction.logEvent(z, str, str2, map);
        }
    }
}
