package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public final class k extends e2 {
    public final Context e;
    public final j2 f;

    public k(Context context, j2 j2Var) {
        super(true, false);
        this.e = context;
        this.f = j2Var;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    public boolean a(JSONObject jSONObject) {
        Map<String, String> a2 = s0.a(this.e, this.f.w());
        if (a2 != null) {
            jSONObject.put(com.umeng.commonsdk.statistics.idtracking.h.d, new JSONObject(a2));
            return true;
        }
        return false;
    }
}
