package com.bytedance.msdk.api.v2.ad.custom;

import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
/* loaded from: classes8.dex */
public abstract class GMCustomTTAbsAdLoaderAdapter extends TTAbsAdLoaderAdapter {

    /* renamed from: extends  reason: not valid java name */
    public String f9083extends;

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public void destroy() {
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getAdNetWorkName() {
        return "";
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getSdkVersion() {
        return this.f9083extends;
    }
}
