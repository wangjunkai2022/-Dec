package com.bytedance.msdk.adapter.pangle;

import android.content.Context;
import com.bytedance.msdk.adapter.ad.GMDrawBaseAdapter;
import com.bytedance.sdk.openadsdk.TTAdSdk;
/* loaded from: classes8.dex */
public class PangleDrawAdapter extends GMDrawBaseAdapter {

    /* renamed from: finally  reason: not valid java name */
    public Context f8636finally;

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public void destroy() {
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

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00aa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ab  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00a4 -> B:26:0x00a6). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a6 -> B:29:0x00ab). Please submit an issue!!! */
    @Override // com.bytedance.msdk.adapter.ad.GMDrawBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @com.bytedance.JProtect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd(android.content.Context r13, java.util.Map<java.lang.String, java.lang.Object> r14) {
        /*
            r12 = this;
            super.loadAd(r13, r14)
            r12.f8636finally = r13
            com.bytedance.msdk.api.v2.slot.GMAdSlotDraw r13 = r12.mGMAdSlotDraw
            if (r13 == 0) goto La1
            if (r14 == 0) goto La4
            com.bytedance.sdk.openadsdk.TTAdManager r13 = com.bytedance.sdk.openadsdk.TTAdSdk.getAdManager()
            android.content.Context r0 = r12.f8636finally
            com.bytedance.sdk.openadsdk.TTAdNative r4 = r13.createAdNative(r0)
            com.bytedance.msdk.api.AdSlot r5 = r12.mAdSlot
            com.bytedance.msdk.api.v2.slot.GMAdSlotDraw r6 = r12.mGMAdSlotDraw
            java.lang.String r7 = r12.getAdSlotId()
            java.lang.String r8 = r12.mWaterfallAbTestParam
            java.lang.String r9 = r12.getClientReqId()
            java.lang.String r10 = r12.getAdm()
            r11 = 0
            com.bytedance.sdk.openadsdk.AdSlot$Builder r13 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.buildPangleAdSlot(r5, r6, r7, r8, r9, r10, r11)
            com.bytedance.msdk.api.v2.slot.GMAdSlotDraw r0 = r12.mGMAdSlotDraw
            int r0 = r0.getWidth()
            com.bytedance.msdk.api.v2.slot.GMAdSlotDraw r1 = r12.mGMAdSlotDraw
            int r1 = r1.getHeight()
            if (r0 <= 0) goto L4b
            if (r1 <= 0) goto L4b
            android.content.Context r2 = r12.f8636finally
            int r2 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.dp2px(r2, r0)
            android.content.Context r3 = r12.f8636finally
            int r3 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.dp2px(r3, r1)
            r13.setImageAcceptedSize(r2, r3)
        L4b:
            java.lang.String r2 = "tt_ad_origin_type"
            java.lang.Object r14 = r14.get(r2)
            java.lang.String r2 = "渲染类型错误"
            if (r14 == 0) goto L98
            java.lang.Integer r14 = (java.lang.Integer) r14
            int r14 = r14.intValue()
            r3 = 1
            if (r14 != r3) goto L7b
            float r14 = (float) r0
            if (r1 <= 0) goto L63
            float r0 = (float) r1
            goto L64
        L63:
            r0 = 0
        L64:
            r13.setExpressViewAcceptedSize(r14, r0)
            com.bytedance.sdk.openadsdk.AdSlot r5 = r13.build()
            com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader r1 = new com.bytedance.msdk.adapter.pangle.PangleDrawExpressLoader
            r1.<init>()
            android.content.Context r2 = r12.f8636finally
            boolean r3 = r12.isClientBidding()
            r6 = r12
            r1.loadAd(r2, r3, r4, r5, r6)
            goto Lab
        L7b:
            r0 = 2
            if (r14 != r0) goto L92
            com.bytedance.sdk.openadsdk.AdSlot r5 = r13.build()
            com.bytedance.msdk.adapter.pangle.PangleDrawLoader r1 = new com.bytedance.msdk.adapter.pangle.PangleDrawLoader
            r1.<init>()
            android.content.Context r2 = r12.f8636finally
            boolean r3 = r12.isClientBidding()
            r6 = r12
            r1.loadAd(r2, r3, r4, r5, r6)
            goto Lab
        L92:
            com.bytedance.msdk.api.AdError r13 = new com.bytedance.msdk.api.AdError
            r13.<init>(r2)
            goto L9d
        L98:
            com.bytedance.msdk.api.AdError r13 = new com.bytedance.msdk.api.AdError
            r13.<init>(r2)
        L9d:
            r12.notifyAdFailed(r13)
            goto Lab
        La1:
            r12.notifyLoadFailBecauseGMAdSlotIsNull()
        La4:
            r13 = 93
        La6:
            switch(r13) {
                case 92: goto La4;
                case 93: goto Laa;
                case 94: goto La4;
                default: goto La9;
            }
        La9:
            goto Lab
        Laa:
            return
        Lab:
            r13 = 92
            goto La6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleDrawAdapter.loadAd(android.content.Context, java.util.Map):void");
    }
}
