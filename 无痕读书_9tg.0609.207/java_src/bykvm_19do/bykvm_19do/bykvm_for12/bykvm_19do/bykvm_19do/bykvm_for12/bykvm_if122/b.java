package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.v;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* compiled from: NetExecutor.java */
/* loaded from: classes8.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public v f10675a;
    public String b = null;
    public final Map<String, String> c = new HashMap();
    public String d = null;

    public b(v vVar) {
        this.f10675a = vVar;
        a(UUID.randomUUID().toString());
    }

    public void a(String str, String str2) {
        this.c.put(str, str2);
    }

    public void b(String str) {
        this.d = str;
    }

    public void a(String str) {
        this.b = str;
    }

    public String a() {
        return this.b;
    }

    public void a(y.a aVar) {
        if (aVar != null && this.c.size() > 0) {
            for (Map.Entry<String, String> entry : this.c.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key)) {
                    String value = entry.getValue();
                    if (value == null) {
                        value = "";
                    }
                    aVar.a(key, value);
                }
            }
        }
    }
}
