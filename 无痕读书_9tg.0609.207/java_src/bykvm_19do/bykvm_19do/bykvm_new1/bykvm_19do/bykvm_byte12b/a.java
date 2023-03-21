package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.h;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i;
import org.json.JSONObject;
/* compiled from: CrashUploadManager.java */
/* loaded from: classes8.dex */
public class a {
    @SuppressLint({"StaticFieldLeak"})
    public static volatile a b;

    /* renamed from: a  reason: collision with root package name */
    public volatile Context f11051a;

    public a(@NonNull Context context) {
        this.f11051a = context;
    }

    public static a a() {
        if (b == null) {
            b = new a(i.b());
        }
        return b;
    }

    public void b(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                String a2 = b.a(i.e().d());
                String a3 = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.d.a(h.c(this.f11051a), h.a(), a2, jSONObject, b.b());
                jSONObject.put("upload_scene", "direct");
                if (!b.a(a2, jSONObject.toString()).a()) {
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.d.a(a3);
            } catch (Throwable unused) {
            }
        }
    }

    @Nullable
    public String a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                return bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.d.a(h.c(this.f11051a), h.b(), b.a(i.e().d()), jSONObject, b.a());
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
