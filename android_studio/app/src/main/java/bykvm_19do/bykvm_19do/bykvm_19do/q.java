package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.telephony.TelephonyManager;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class q extends e2 {
    public final Context e;

    public q(Context context) {
        super(true, false);
        this.e = context;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    public boolean a(JSONObject jSONObject) {
        k2.a(jSONObject, "sim_region", ((TelephonyManager) this.e.getSystemService("phone")).getSimCountryIso());
        return true;
    }
}
