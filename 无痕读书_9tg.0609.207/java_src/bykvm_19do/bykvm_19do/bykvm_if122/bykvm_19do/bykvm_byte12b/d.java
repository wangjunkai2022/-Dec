package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
/* compiled from: BaseIntervalBean.java */
/* loaded from: classes8.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public String f10852a;
    public String b;
    public String c;
    public String d;
    public int e;
    public boolean f;

    public d(String str, String str2, String str3, String str4, int i) {
        this.f10852a = str;
        this.c = str3;
        this.e = i;
        this.b = str2;
        this.f = !TextUtils.isEmpty(str2);
        this.d = str4;
    }

    public boolean a() {
        return this.e == 1;
    }

    public String b() {
        return this.d;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.f10852a;
    }

    public String e() {
        return this.c;
    }

    public int f() {
        return this.e;
    }

    public String g() {
        if (TextUtils.isEmpty(this.b)) {
            return this.f10852a;
        }
        return this.f10852a + "_" + this.b;
    }

    public boolean h() {
        return this.f;
    }
}
