package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.umeng.analytics.pro.ak;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class r extends e2 {
    public final Context e;
    public final j2 f;

    public r(Context context, j2 j2Var) {
        super(true, false);
        this.e = context;
        this.f = j2Var;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    public boolean a(JSONObject jSONObject) {
        TelephonyManager telephonyManager = (TelephonyManager) this.e.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                k2.a(jSONObject, ak.P, telephonyManager.getNetworkOperatorName());
                k2.a(jSONObject, "mcc_mnc", telephonyManager.getNetworkOperator());
                k2.a(jSONObject, "udid", this.f.o() ? i0.a(telephonyManager) : this.f.m());
                return true;
            } catch (Exception e) {
                l0.a(e);
            }
        }
        return false;
    }
}
