package com.bytedance.msdk.api.v2;

import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import java.util.List;

/* loaded from: classes8.dex */
public class GMPreloadRequestInfo {

    /* renamed from: do  reason: not valid java name */
    public GMAdSlotBase f9077do;

    /* renamed from: if  reason: not valid java name */
    public List<String> f9078if;

    public GMPreloadRequestInfo(GMAdSlotBase gMAdSlotBase, List<String> list) {
        this.f9077do = gMAdSlotBase;
        this.f9078if = list;
    }

    public GMAdSlotBase getGmAdSlot() {
        return this.f9077do;
    }

    public List<String> getPrimeRitList() {
        return this.f9078if;
    }
}
