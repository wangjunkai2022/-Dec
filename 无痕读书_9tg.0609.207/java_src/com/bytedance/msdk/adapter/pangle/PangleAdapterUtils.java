package com.bytedance.msdk.adapter.pangle;

import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotDraw;
import com.bytedance.msdk.api.v2.slot.GMAdSlotNative;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* loaded from: classes8.dex */
public class PangleAdapterUtils {
    public static final double CPM_DEFLAUT_VALUE = 0.0d;
    public static final String MEDIA_EXTRA_COUPON = "coupon";
    public static final String MEDIA_EXTRA_LIVE_ROOM = "live_room";
    public static final String MEDIA_EXTRA_PRODUCT = "product";

    /* renamed from: com.bytedance.msdk.adapter.pangle.PangleAdapterUtils$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: do  reason: not valid java name */
        public static final /* synthetic */ int[] f8593do;

        /* renamed from: if  reason: not valid java name */
        public static final /* synthetic */ int[] f8594if;

        static {
            int[] iArr = new int[GMAdConstant.GroMoreRitScenes.values().length];
            f8594if = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8594if[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8594if[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8594if[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8594if[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8594if[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8594if[6] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8594if[7] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8594if[8] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8594if[9] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8594if[10] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8594if[11] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr2 = new int[TTAdConstant.GroMoreRitScenes.values().length];
            f8593do = iArr2;
            try {
                iArr2[0] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8593do[1] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8593do[2] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8593do[3] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8593do[4] = 5;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f8593do[5] = 6;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f8593do[6] = 7;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f8593do[7] = 8;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f8593do[8] = 9;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f8593do[9] = 10;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f8593do[10] = 11;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f8593do[11] = 12;
            } catch (NoSuchFieldError unused24) {
            }
        }
    }

    public static AdSlot.Builder buildPangleAdSlot(com.bytedance.msdk.api.AdSlot adSlot, GMAdSlotBase gMAdSlotBase, String str, String str2, String str3, String str4, boolean z) {
        int adCount;
        AdSlot.Builder adCount2 = new AdSlot.Builder().setCodeId(str).setAdCount(1);
        if (adSlot != null) {
            Map<String, Object> extraObject = adSlot.getReuestParam().getExtraObject();
            int[] iArr = null;
            if (extraObject != null) {
                try {
                    iArr = (int[]) extraObject.get(GMAdConstant.PANGLE_VID);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            adCount2.setAdloadSeq(adSlot.getAdloadSeq()).setPrimeRit(adSlot.getAdUnitId()).setSupportDeepLink(adSlot.isSupportDeepLink());
            if (iArr != null && iArr.length > 0) {
                adCount2.setExternalABVid(iArr);
            }
            if (gMAdSlotBase != null) {
                if (gMAdSlotBase instanceof GMAdSlotNative) {
                    adCount = ((GMAdSlotNative) gMAdSlotBase).getRequestCount();
                } else if (gMAdSlotBase instanceof GMAdSlotDraw) {
                    adCount = ((GMAdSlotDraw) gMAdSlotBase).getAdCount();
                }
                adCount2.setAdCount(adCount);
            } else if (5 == adSlot.getAdType() || 9 == adSlot.getAdType()) {
                adCount = adSlot.getAdCount();
                adCount2.setAdCount(adCount);
            }
        }
        if (!TextUtils.isEmpty(str4)) {
            adCount2.withBid(str4);
        }
        updateData(adCount2, str2, str3, z);
        return adCount2;
    }

    public static AdSlot.Builder buildPangleAdSlot(com.bytedance.msdk.api.AdSlot adSlot, String str, String str2, String str3, String str4, boolean z) {
        return buildPangleAdSlot(adSlot, null, str, str2, str3, str4, z);
    }

    public static int dp2px(@NonNull Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static long getAdId(Map<String, Object> map) {
        if (map == null || map.get("ad_id") == null) {
            return 0L;
        }
        return ((Long) map.get("ad_id")).longValue();
    }

    public static long getCreativeId(Map<String, Object> map) {
        if (map == null || map.get("creative_id") == null) {
            return 0L;
        }
        return ((Long) map.get("creative_id")).longValue();
    }

    public static String getCustomRitScenes(Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        if (map == null) {
            return null;
        }
        Object obj = map.get(TTAdConstant.GroMoreExtraKey.CUSTOMIZE_RIT_SCENES);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public static String getPangleData() {
        return GMMediationAdSdk.getPangleData();
    }

    public static String getReqId(Map<String, Object> map) {
        if (map == null || map.get("request_id") == null) {
            return null;
        }
        return (String) map.get("request_id");
    }

    public static TTAdConstant.RitScenes getRitScenes(Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        GMAdConstant.GroMoreRitScenes groMoreRitScenes;
        if (map == null) {
            return null;
        }
        Object obj = map.get(TTAdConstant.GroMoreExtraKey.RIT_SCENES);
        if (obj instanceof TTAdConstant.GroMoreRitScenes) {
            TTAdConstant.GroMoreRitScenes groMoreRitScenes2 = (TTAdConstant.GroMoreRitScenes) obj;
            if (groMoreRitScenes2 == null) {
                return null;
            }
            switch (AnonymousClass1.f8593do[groMoreRitScenes2.ordinal()]) {
                case 1:
                    return TTAdConstant.RitScenes.CUSTOMIZE_SCENES;
                case 2:
                    return TTAdConstant.RitScenes.HOME_OPEN_BONUS;
                case 3:
                    return TTAdConstant.RitScenes.HOME_SVIP_BONUS;
                case 4:
                    return TTAdConstant.RitScenes.HOME_GET_PROPS;
                case 5:
                    return TTAdConstant.RitScenes.HOME_TRY_PROPS;
                case 6:
                    return TTAdConstant.RitScenes.HOME_GET_BONUS;
                case 7:
                    return TTAdConstant.RitScenes.HOME_GIFT_BONUS;
                case 8:
                    return TTAdConstant.RitScenes.GAME_START_BONUS;
                case 9:
                    return TTAdConstant.RitScenes.GAME_REDUCE_WAITING;
                case 10:
                    return TTAdConstant.RitScenes.GAME_MORE_KLLKRTUNITIES;
                case 11:
                    return TTAdConstant.RitScenes.GAME_FINISH_REWARDS;
                case 12:
                    return TTAdConstant.RitScenes.GAME_GIFT_BONUS;
                default:
                    return null;
            }
        } else if (!(obj instanceof GMAdConstant.GroMoreRitScenes) || (groMoreRitScenes = (GMAdConstant.GroMoreRitScenes) obj) == null) {
            return null;
        } else {
            switch (AnonymousClass1.f8594if[groMoreRitScenes.ordinal()]) {
                case 1:
                    return TTAdConstant.RitScenes.CUSTOMIZE_SCENES;
                case 2:
                    return TTAdConstant.RitScenes.HOME_OPEN_BONUS;
                case 3:
                    return TTAdConstant.RitScenes.HOME_SVIP_BONUS;
                case 4:
                    return TTAdConstant.RitScenes.HOME_GET_PROPS;
                case 5:
                    return TTAdConstant.RitScenes.HOME_TRY_PROPS;
                case 6:
                    return TTAdConstant.RitScenes.HOME_GET_BONUS;
                case 7:
                    return TTAdConstant.RitScenes.HOME_GIFT_BONUS;
                case 8:
                    return TTAdConstant.RitScenes.GAME_START_BONUS;
                case 9:
                    return TTAdConstant.RitScenes.GAME_REDUCE_WAITING;
                case 10:
                    return TTAdConstant.RitScenes.GAME_MORE_KLLKRTUNITIES;
                case 11:
                    return TTAdConstant.RitScenes.GAME_FINISH_REWARDS;
                case 12:
                    return TTAdConstant.RitScenes.GAME_GIFT_BONUS;
                default:
                    return null;
            }
        }
    }

    public static double getValue(Object obj) {
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof Float) && !(obj instanceof Double)) {
            try {
                if (obj instanceof String) {
                    return Double.valueOf((String) obj).doubleValue();
                }
                return 0.0d;
            } catch (Exception unused) {
                return 0.0d;
            }
        }
        return ((Double) obj).doubleValue();
    }

    public static void setPangleData(String str) {
        GMMediationAdSdk.setPangleData(str);
    }

    public static void setPanglePreviewParam(AdSlot.Builder builder) {
        if (builder != null && GMMediationAdSdk.isTestDemo()) {
            try {
                String valueFromPPeInfo = GMMediationAdSdk.getValueFromPPeInfo("tt_pangle_preview_ad_id");
                String valueFromPPeInfo2 = GMMediationAdSdk.getValueFromPPeInfo("tt_pangle_preview_creative_id");
                String valueFromPPeInfo3 = GMMediationAdSdk.getValueFromPPeInfo("tt_pangle_preview_ext");
                if (TextUtils.isEmpty(valueFromPPeInfo) || TextUtils.isEmpty(valueFromPPeInfo2) || TextUtils.isEmpty(valueFromPPeInfo3)) {
                    return;
                }
                builder.setAdId(valueFromPPeInfo).setCreativeId(valueFromPPeInfo2).setExt(valueFromPPeInfo3);
            } catch (Throwable unused) {
            }
        }
    }

    public static void updateData(AdSlot.Builder builder, String str, String str2, boolean z) {
        JSONArray jSONArray;
        String pangleData = getPangleData();
        Map<String, String> pangleExtraData = GMMediationAdSdk.getPangleExtraData();
        JSONObject jSONObject = null;
        try {
            try {
                jSONArray = TextUtils.isEmpty(pangleData) ? new JSONArray() : new JSONArray(pangleData);
            } catch (Exception e) {
                e.printStackTrace();
                jSONArray = null;
            }
            if (jSONArray == null) {
                jSONArray = new JSONArray();
            }
            if (pangleExtraData != null && pangleExtraData.size() > 0) {
                for (String str3 : pangleExtraData.keySet()) {
                    String str4 = pangleExtraData.get(str3);
                    if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("name", str3);
                        jSONObject2.putOpt(LitePalParser.ATTR_VALUE, str4);
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.putOpt("name", "mediation_sdk_version");
            jSONObject3.putOpt(LitePalParser.ATTR_VALUE, "3.6.0.1");
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.putOpt("name", "mediation_req_type");
            jSONObject4.putOpt(LitePalParser.ATTR_VALUE, "1");
            if (!TextUtils.isEmpty(str)) {
                jSONObject = new JSONObject();
                jSONObject.putOpt("name", "waterfall_abtest");
                jSONObject.putOpt(LitePalParser.ATTR_VALUE, str);
            }
            jSONArray.put(jSONObject4);
            jSONArray.put(jSONObject3);
            if (jSONObject != null) {
                jSONArray.put(jSONObject);
            }
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.putOpt("name", "m_req_id");
                jSONObject5.putOpt(LitePalParser.ATTR_VALUE, str2);
                jSONArray.put(jSONObject5);
            }
            pangleData = jSONArray.toString();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!z) {
            setPanglePreviewParam(builder);
        }
        TTAdSdk.updatePaid(GMMediationAdSdk.getPanglePaid());
        if (builder != null) {
            builder.setUserData(pangleData);
        }
    }
}
