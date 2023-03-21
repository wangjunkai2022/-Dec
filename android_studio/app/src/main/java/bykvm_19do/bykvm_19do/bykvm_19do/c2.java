package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import com.apk.Cgoto;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class c2 extends e2 {
    public final j2 e;

    public c2(Context context, j2 j2Var) {
        super(true, false);
        this.e = j2Var;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    public boolean a(JSONObject jSONObject) {
        if (!TextUtils.isEmpty(this.e.i())) {
            jSONObject.put("ab_client", this.e.i());
        }
        if (!TextUtils.isEmpty(this.e.L())) {
            if (l0.f10634a) {
                StringBuilder m1016super = Cgoto.m1016super("init config has abversion:");
                m1016super.append(this.e.L());
                l0.a(m1016super.toString(), null);
            }
            jSONObject.put("ab_version", this.e.L());
        }
        if (!TextUtils.isEmpty(this.e.j())) {
            jSONObject.put("ab_group", this.e.j());
        }
        if (TextUtils.isEmpty(this.e.k())) {
            return true;
        }
        jSONObject.put("ab_feature", this.e.k());
        return true;
    }
}
