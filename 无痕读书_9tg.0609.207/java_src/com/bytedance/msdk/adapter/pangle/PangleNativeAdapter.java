package com.bytedance.msdk.adapter.pangle;

import android.content.Context;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMNativeBaseAdapter;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
/* loaded from: classes8.dex */
public class PangleNativeAdapter extends GMNativeBaseAdapter {

    /* renamed from: extends  reason: not valid java name */
    public Context f8672extends;

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public void destroy() {
    }

    @JProtect
    /* renamed from: else  reason: not valid java name */
    public final void m3575else(TTAdNative tTAdNative, AdSlot.Builder builder) {
        new PangleNativeLoader().loadAd(this.f8672extends, isClientBidding(), tTAdNative, builder.build(), this);
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getAdNetWorkName() {
        return "pangle";
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getSdkVersion() {
        try {
            return TTAdSdk.getAdManager().getSDKVersion();
        } catch (Exception unused) {
            return PangleRewardVideoAdapter.VERSION_00;
        }
    }

    @JProtect
    /* renamed from: goto  reason: not valid java name */
    public final void m3576goto(TTAdNative tTAdNative, AdSlot.Builder builder, int i, int i2) {
        builder.setExpressViewAcceptedSize(i, i2 > 0 ? i2 : 0.0f);
        new PangleNativeExpressLoader().loadAd(this.f8672extends, isClientBidding(), tTAdNative, builder.build(), this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b0, code lost:
        if (r13 != 6) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b9 A[FALL_THROUGH, PHI: r3 
      PHI: (r3v1 char) = (r3v3 char), (r3v0 char) binds: [B:33:0x00b3, B:4:0x000f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00a4 -> B:28:0x00ab). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00b0 -> B:35:0x00b7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b3 -> B:35:0x00b7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:33:0x00b3). Please submit an issue!!! */
    @Override // com.bytedance.msdk.adapter.ad.GMNativeBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @com.bytedance.JProtect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd(android.content.Context r12, java.util.Map<java.lang.String, java.lang.Object> r13) {
        /*
            r11 = this;
            super.loadAd(r12, r13)
            r11.f8672extends = r12
            com.bytedance.msdk.api.v2.slot.GMAdSlotNative r12 = r11.mGMAdSlotNative
            r0 = 67
            r1 = 4
            r2 = 5
            r3 = 45
            if (r12 == 0) goto La1
            if (r13 == 0) goto Lb9
            com.bytedance.sdk.openadsdk.TTAdManager r12 = com.bytedance.sdk.openadsdk.TTAdSdk.getAdManager()
            android.content.Context r4 = r11.f8672extends
            com.bytedance.sdk.openadsdk.TTAdNative r12 = r12.createAdNative(r4)
            com.bytedance.msdk.api.AdSlot r4 = r11.mAdSlot
            com.bytedance.msdk.api.v2.slot.GMAdSlotNative r5 = r11.mGMAdSlotNative
            java.lang.String r6 = r11.getAdSlotId()
            java.lang.String r7 = r11.mWaterfallAbTestParam
            java.lang.String r8 = r11.getClientReqId()
            java.lang.String r9 = r11.getAdm()
            r10 = 0
            com.bytedance.sdk.openadsdk.AdSlot$Builder r4 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.buildPangleAdSlot(r4, r5, r6, r7, r8, r9, r10)
            java.lang.String r5 = "ad_width"
            java.lang.Object r5 = r13.get(r5)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            java.lang.String r6 = "ad_height"
            java.lang.Object r6 = r13.get(r6)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            if (r5 <= 0) goto L5d
            if (r6 <= 0) goto L5d
            android.content.Context r7 = r11.f8672extends
            int r7 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.dp2px(r7, r5)
            android.content.Context r8 = r11.f8672extends
            int r8 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.dp2px(r8, r6)
            r4.setImageAcceptedSize(r7, r8)
        L5d:
            java.lang.String r7 = "tt_ad_origin_type"
            java.lang.Object r13 = r13.get(r7)
            r7 = 2
            r8 = 1
            if (r13 == 0) goto L89
            java.lang.Integer r13 = (java.lang.Integer) r13
            int r13 = r13.intValue()
            if (r13 != r8) goto L73
            r11.m3576goto(r12, r4, r5, r6)
            return
        L73:
            if (r13 != r7) goto L79
            r11.m3575else(r12, r4)
            goto Lcb
        L79:
            r9 = 3
            if (r13 != r9) goto L89
            com.bytedance.msdk.api.AdError r12 = new com.bytedance.msdk.api.AdError
            java.lang.String r13 = "渲染类型错误"
            r12.<init>(r13)
            r11.notifyAdFailed(r12)
            r12 = 42
            goto Lb7
        L89:
            com.bytedance.msdk.api.v2.slot.GMAdSlotNative r13 = r11.mGMAdSlotNative
            int r13 = r13.getAdStyleType()
            if (r13 != r8) goto L95
            r11.m3576goto(r12, r4, r5, r6)
            goto Lcb
        L95:
            com.bytedance.msdk.api.v2.slot.GMAdSlotNative r13 = r11.mGMAdSlotNative
            int r13 = r13.getAdStyleType()
            if (r13 != r7) goto Lcb
            r11.m3575else(r12, r4)
            goto Lcb
        La1:
            r11.notifyLoadFailBecauseGMAdSlotIsNull()
        La4:
            r12 = 12
            r12 = 67
            r13 = 4
            r3 = 12
        Lab:
            if (r13 == r1) goto Lbc
            if (r13 == r2) goto Lc2
            r4 = 6
            if (r13 == r4) goto Lb3
            goto Lb7
        Lb3:
            switch(r12) {
                case 87: goto Lb7;
                case 88: goto Lcb;
                case 89: goto Lcb;
                default: goto Lb6;
            }
        Lb6:
            goto Lb9
        Lb7:
            r13 = 5
            goto Lab
        Lb9:
            r12 = 89
            goto Lb3
        Lbc:
            r13 = 66
            if (r12 == r13) goto Lc9
            if (r12 == r0) goto Lc3
        Lc2:
            return
        Lc3:
            switch(r3) {
                case 10: goto Lcb;
                case 11: goto La4;
                case 12: goto Lcb;
                default: goto Lc6;
            }
        Lc6:
            r3 = 11
            goto Lc3
        Lc9:
            if (r3 != r2) goto Lcb
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleNativeAdapter.loadAd(android.content.Context, java.util.Map):void");
    }
}
