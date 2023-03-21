package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.text.TextUtils;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.Map;
/* compiled from: TTLevelTagUtil.java */
/* loaded from: classes8.dex */
public class g0 {
    public static void a(TTBaseAd tTBaseAd, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, AdSlot adSlot, boolean z) {
        if (tTBaseAd == null || !tTBaseAd.isMultiBiddingAd()) {
            return;
        }
        if (iVar == null) {
            tTBaseAd.setCpm(0.0d);
        }
        String levelTag = tTBaseAd.getLevelTag();
        Map<String, String> r = iVar.r();
        if (TextUtils.isEmpty(levelTag)) {
            if (z) {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(iVar, adSlot, tTBaseAd, (int) AdError.ERROR_CODE_NO_LEVEL_TAG, AdError.getMessage(AdError.ERROR_CODE_NO_LEVEL_TAG));
            }
            tTBaseAd.setErrorMsg(AdError.getMessage(AdError.ERROR_CODE_NO_LEVEL_TAG));
            tTBaseAd.setCpm(0.0d);
        } else if (r == null) {
            if (z) {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(iVar, adSlot, tTBaseAd, (int) AdError.ERROR_CODE_NO_MATCH_LEVEL_TAG, AdError.getMessage(AdError.ERROR_CODE_NO_MATCH_LEVEL_TAG));
            }
            tTBaseAd.setErrorMsg(AdError.getMessage(AdError.ERROR_CODE_NO_MATCH_LEVEL_TAG));
            tTBaseAd.setCpm(0.0d);
        } else {
            String str = r.get(levelTag);
            if (TextUtils.isEmpty(str)) {
                if (z) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(iVar, adSlot, tTBaseAd, (int) AdError.ERROR_CODE_NO_MATCH_LEVEL_TAG, AdError.getMessage(AdError.ERROR_CODE_NO_MATCH_LEVEL_TAG));
                }
                tTBaseAd.setCpm(0.0d);
                return;
            }
            try {
                tTBaseAd.setCpm(Double.valueOf(str).doubleValue());
            } catch (Exception unused) {
                tTBaseAd.setCpm(0.0d);
            }
        }
    }
}
