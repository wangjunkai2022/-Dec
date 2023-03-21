package bykvm_19do.bykvm_19do.bykvm_19do;

import android.annotation.SuppressLint;
import android.content.Context;
import com.umeng.analytics.pro.ak;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class j extends e2 {
    public final Context e;

    public j(Context context) {
        super(true, true);
        this.e = context;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    @SuppressLint({"MissingPermission"})
    public boolean a(JSONObject jSONObject) {
        k2.a(jSONObject, ak.Q, h0.b(this.e));
        return true;
    }
}
