package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.ak;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class n2 extends e2 {
    public n2(Context context, j2 j2Var) {
        super(true, false);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    public boolean a(JSONObject jSONObject) {
        String a2 = a.k() != null ? a.k().s().a() : "";
        if (TextUtils.isEmpty(a2)) {
            return true;
        }
        jSONObject.put(ak.A, a2);
        return true;
    }
}
