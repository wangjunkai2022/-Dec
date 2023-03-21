package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public final class g2 extends e2 {
    public final j2 e;

    public g2(Context context, j2 j2Var) {
        super(true, false);
        this.e = j2Var;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    public boolean a(JSONObject jSONObject) {
        String a2 = s0.a(this.e.w());
        if (TextUtils.isEmpty(a2)) {
            return false;
        }
        jSONObject.put("cdid", a2);
        return true;
    }
}
