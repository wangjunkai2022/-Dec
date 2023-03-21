package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: AdnLoadFailShowControl.java */
/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.b> f10850a;
    public Map<String, ConcurrentHashMap<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.a>> b;

    /* compiled from: AdnLoadFailShowControl.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static c f10851a = new c();
    }

    public static c a() {
        return b.f10851a;
    }

    public c() {
        this.b = new ConcurrentHashMap();
    }

    public void a(ConcurrentHashMap<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.b> concurrentHashMap) {
        this.f10850a = concurrentHashMap;
        if (concurrentHashMap != null) {
            Logger.d("TTMediationSDK_AdnShowControl", "mAdnControlMap = " + concurrentHashMap);
            return;
        }
        Logger.d("TTMediationSDK_AdnShowControl", "mAdnControlMap is null ");
    }

    public void a(String str, String str2, String str3) {
        boolean z;
        StringBuilder m1004import = Cgoto.m1004import("setAdnError adnName = ", str, " slotId = ", str2, " error = ");
        m1004import.append(str3);
        Logger.d("TTMediationSDK_AdnShowControl", m1004import.toString());
        Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.b> map = this.f10850a;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.b bVar = map != null ? map.get(str) : null;
        if (bVar != null) {
            for (String str4 : bVar.b()) {
                if (TextUtils.equals(str4, str3)) {
                    Logger.d("TTMediationSDK_AdnShowControl", "setAdnError 命中errorCode = " + str4);
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            long a2 = bVar.a() + new Date().getTime();
            StringBuilder m1016super = Cgoto.m1016super("setAdnError 更新时间 = ");
            m1016super.append(f.b(a2));
            Logger.d("TTMediationSDK_AdnShowControl", m1016super.toString());
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.a aVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.a(str, str2, a2);
            if (this.b != null) {
                ConcurrentHashMap<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.a> concurrentHashMap = new ConcurrentHashMap<>();
                concurrentHashMap.put(str2, aVar);
                this.b.put(str, concurrentHashMap);
                Logger.d("TTMediationSDK_AdnShowControl", "setAdnError mAdnControlMap = " + this.b);
            }
        }
    }

    public boolean a(String str, String str2) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.a aVar;
        ConcurrentHashMap<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.a> concurrentHashMap;
        Logger.d("TTMediationSDK_AdnShowControl", "checkLoad adnName = " + str + " slotId = " + str2);
        Map<String, ConcurrentHashMap<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.a>> map = this.b;
        if (map == null || (concurrentHashMap = map.get(str)) == null) {
            aVar = null;
        } else {
            aVar = concurrentHashMap.get(str2);
            Logger.d("TTMediationSDK_AdnShowControl", "checkLoad 取出的showBean = " + aVar);
        }
        if (aVar == null || aVar.a() == 0) {
            return true;
        }
        long time = new Date().getTime();
        if (time <= aVar.a()) {
            StringBuilder m1016super = Cgoto.m1016super("checkLoad 当前时间 = ");
            m1016super.append(f.b(time));
            Logger.d("TTMediationSDK_AdnShowControl", m1016super.toString());
            Logger.d("TTMediationSDK_AdnShowControl", "checkLoad 规则有效时间 = " + f.b(aVar.a()));
            return false;
        }
        return true;
    }
}
