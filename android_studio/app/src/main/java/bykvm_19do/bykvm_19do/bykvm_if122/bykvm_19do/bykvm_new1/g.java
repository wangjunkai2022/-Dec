package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.j0;
import com.apk.Cgoto;
import com.apk.eg;
import com.baidu.tts.client.SpeechSynthesizer;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTRequestExtraParams;
import com.bytedance.msdk.api.TToast;
import com.bytedance.msdk.api.v2.GMNetworkRequestInfo;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* compiled from: TTLoaderUtil.java */
/* loaded from: classes8.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static Comparator<TTBaseAd> f10940a = null;
    public static String b = "KEY_LOAD_SEQ";
    public static String c = "KEY_LOAD_SEQ_TIME";

    /* compiled from: TTLoaderUtil.java */
    /* loaded from: classes8.dex */
    public static class a implements Comparator<TTBaseAd> {
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(TTBaseAd tTBaseAd, TTBaseAd tTBaseAd2) {
            if (tTBaseAd.getCpm() > tTBaseAd2.getCpm()) {
                return -1;
            }
            if (tTBaseAd.getCpm() < tTBaseAd2.getCpm()) {
                return 1;
            }
            return (tTBaseAd.getCpm() == tTBaseAd2.getCpm() && tTBaseAd.getAdNetworkPlatformId() == 1) ? -1 : 0;
        }
    }

    public static void a(List<TTBaseAd> list, Comparator<TTBaseAd> comparator) {
        if (comparator == null) {
            j0.a(list);
        } else {
            j0.a(list, comparator);
        }
    }

    public static boolean a(String str) {
        return true;
    }

    public static Comparator<TTBaseAd> b() {
        a aVar = new a();
        f10940a = aVar;
        return aVar;
    }

    public static Comparator<TTBaseAd> c() {
        Comparator<TTBaseAd> comparator = f10940a;
        return comparator != null ? comparator : b();
    }

    public static String d() {
        return UUID.randomUUID().toString();
    }

    public static void e() {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().F()) {
            TToast.show(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), "slot setting error");
        }
    }

    public static TTAbsAdLoaderAdapter b(String str) {
        try {
            return (TTAbsAdLoaderAdapter) Class.forName(str).newInstance();
        } catch (Exception e) {
            Logger.e("TTMediationSDK", "创建广告网络adapter加载器失败：class=" + str + ",异常信息：" + e.toString());
            return null;
        }
    }

    public static String a(String str, String str2, String str3) {
        if (TextUtils.equals("pangle", eg.m605new(str2)) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().x()) {
            return Cgoto.m989case("com.bytedance.msdk.adapter.panglecustom.", String.format(str, "PangleCustom", str3));
        }
        String format = String.format(str, str2, str3);
        StringBuilder m1016super = Cgoto.m1016super("com.bytedance.msdk.adapter.");
        m1016super.append(eg.m605new(str2));
        m1016super.append(".");
        m1016super.append(format);
        return m1016super.toString();
    }

    public static String c(String str) {
        return !TextUtils.isEmpty(str) ? str.substring(0, 1).toUpperCase().concat(str.substring(1).toLowerCase()) : str;
    }

    public static void b(String str, TTBaseAd tTBaseAd) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().F() && tTBaseAd != null && a(str, tTBaseAd)) {
            TToast.show(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), String.format("test_suceess ,test_adn:%1$s,slot_id : %2$s", eg.m592do(tTBaseAd.getAdNetworkPlatformId()), tTBaseAd.getAdNetworkSlotId()));
        }
    }

    public static TTAbsAdLoaderAdapter a(String str, i iVar) {
        if (iVar != null) {
            String a2 = a(iVar.q(), c(iVar.e()), eg.m599if(iVar.t(), iVar.z()));
            TTAbsAdLoaderAdapter b2 = b(a2);
            if (b2 != null) {
                Logger.e("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(str, TTLogUtil.TAG_EVENT_REQUEST) + "创建adapter成功!! class=" + a2 + " adn_version:" + b2.getSdkVersion());
            }
            return b2;
        }
        return null;
    }

    public static Map<String, Object> a(i iVar, AdSlot adSlot, Map<String, Object> map, GMNetworkRequestInfo gMNetworkRequestInfo, int i, int i2, boolean z, long j) {
        HashMap hashMap = new HashMap();
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().a(iVar.e());
        if (a2 != null) {
            hashMap.put("tt_ad_network_config_appid", a2.a());
            hashMap.put("tt_ad_network_config_appKey", a2.b());
        } else {
            String e = iVar.e();
            String m592do = gMNetworkRequestInfo != null ? eg.m592do(gMNetworkRequestInfo.getAdNetworkFlatFromId()) : null;
            if (gMNetworkRequestInfo != null && iVar.p() == -4 && !TextUtils.isEmpty(e) && e.equals(m592do)) {
                hashMap.put("tt_ad_network_config_appid", gMNetworkRequestInfo.getAppId());
                hashMap.put("tt_ad_network_config_appKey", gMNetworkRequestInfo.getAppKey());
            }
        }
        hashMap.put("tt_ad_origin_type", Integer.valueOf(iVar.s()));
        hashMap.put("tt_ad_sub_type", Integer.valueOf(iVar.z()));
        if (adSlot != null) {
            TTRequestExtraParams reuestParam = adSlot.getReuestParam();
            if (reuestParam != null) {
                hashMap.putAll(reuestParam.getExtraObject());
            }
            int imgAcceptedWidth = adSlot.getImgAcceptedWidth();
            int imgAcceptedHeight = adSlot.getImgAcceptedHeight();
            if (imgAcceptedWidth < 0) {
                imgAcceptedWidth = 0;
            }
            if (imgAcceptedHeight < 0) {
                imgAcceptedHeight = 0;
            }
            hashMap.put(TTRequestExtraParams.PARAM_AD_HEIGHT, Integer.valueOf(imgAcceptedHeight));
            hashMap.put(TTRequestExtraParams.PARAM_AD_WIDTH, Integer.valueOf(imgAcceptedWidth));
            hashMap.put(TTRequestExtraParams.PARAM_AD_TYPE, Integer.valueOf(adSlot.getAdType()));
        }
        hashMap.put("key_mediation_rit_req_type", Integer.valueOf(i));
        hashMap.put("key_mediation_rit_req_type_src", Integer.valueOf(i2));
        hashMap.put("key_is_from_developer_req", Boolean.valueOf(z));
        hashMap.put("key_requestwfb_ms", Long.valueOf(j));
        if (map != null && map.size() > 0) {
            hashMap.putAll(map);
        }
        return hashMap;
    }

    public static i a(String str, String str2, int i, int i2) {
        i iVar = new i();
        iVar.b(str2);
        iVar.a(str);
        iVar.c(0);
        iVar.e(SpeechSynthesizer.REQUEST_DNS_OFF);
        iVar.f("1");
        iVar.g(i);
        iVar.j(i2);
        iVar.i(3);
        iVar.g("%1$s%2$sAdapter");
        return iVar;
    }

    public static boolean a(Date date, Date date2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return ((calendar.get(1) == calendar2.get(1)) && calendar.get(2) == calendar2.get(2)) && calendar.get(5) == calendar2.get(5);
    }

    public static int a() {
        long a2 = c0.a((String) null, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).a(c, 0L);
        long currentTimeMillis = System.currentTimeMillis();
        boolean a3 = a(new Date(a2), new Date(currentTimeMillis));
        c0.a((String) null, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).b(c, currentTimeMillis);
        int a4 = (a3 ? c0.a((String) null, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).a(b, 0) : 0) + 1;
        c0.a((String) null, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()).b(b, a4);
        return a4;
    }

    public static void a(AdError adError, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().F() || adError == null || dVar == null) {
            return;
        }
        if (20001 == adError.code) {
            TToast.show(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), String.format("error_adn:%1$s no ads，please check ad network", dVar.c()));
        } else {
            TToast.show(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), String.format("test error_adn:%1$s  error_slot_id: %2$s  error_code:%3$d  error_message:%4$s", dVar.c(), dVar.d(), Integer.valueOf(adError.thirdSdkErrorCode), adError.thirdSdkErrorMessage));
        }
    }

    public static void a(String str, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar, TTBaseAd tTBaseAd) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().F() && dVar != null && a(str, tTBaseAd)) {
            TToast.show(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), String.format("fill_suceess ,test_adn:%1$s,slot_id : %2$s", dVar.c(), dVar.d()));
        }
    }

    public static boolean a(String str, TTBaseAd tTBaseAd) {
        if (tTBaseAd == null) {
            return false;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c c2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().c(str);
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().f(str) && c2 != null && c2.i() != null && c2.i().size() > 0 && c2.z() != null && c2.z().size() > 0;
    }
}
