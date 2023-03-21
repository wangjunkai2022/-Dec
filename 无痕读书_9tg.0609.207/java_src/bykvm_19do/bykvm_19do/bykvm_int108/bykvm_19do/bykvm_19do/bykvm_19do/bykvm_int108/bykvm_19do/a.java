package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do;

import android.text.TextUtils;
import org.json.JSONObject;
/* compiled from: AdLogEvent.java */
/* loaded from: classes8.dex */
public class a implements bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a {

    /* renamed from: a  reason: collision with root package name */
    public b f11035a;
    public byte b;
    public byte c;
    public long d;
    public long e;
    public String f;
    public String g;
    public JSONObject h;
    public byte i;
    public String j;

    public a(String str, JSONObject jSONObject) {
        this.g = str;
        this.h = jSONObject;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public void a(byte b) {
        this.b = b;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public void a(long j) {
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public byte b() {
        return this.b;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public byte c() {
        return this.i;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public synchronized JSONObject d() {
        b bVar;
        if (this.h == null && (bVar = this.f11035a) != null) {
            this.h = bVar.a(k());
        }
        return this.h;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public byte e() {
        return this.c;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public String f() {
        if (TextUtils.isEmpty(this.g)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.g);
            jSONObject.put("event", d());
            jSONObject.put("genTime", j());
            jSONObject.put("priority", (int) this.c);
            jSONObject.put("type", (int) this.b);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public b g() {
        return this.f11035a;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public long h() {
        return this.e;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public String i() {
        return this.g;
    }

    public String j() {
        return this.f;
    }

    public String k() {
        return this.j;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public long a() {
        return this.d;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public void b(long j) {
        this.e = j;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public void c(long j) {
        this.d = j;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a
    public void b(byte b) {
        this.c = b;
    }

    public a(String str, b bVar) {
        this.g = str;
        this.f11035a = bVar;
    }
}
