package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* compiled from: AdEventModel.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public String f10954a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public long i;
    public String j;
    public String k;
    public String l;
    public String m;
    public int n;
    public String o;
    public String p;
    public int q;
    public long r;
    public String u;
    public int s = -1;
    public int t = -1;
    public Map<String, Object> v = new HashMap();
    public long w = -1;

    public static d b() {
        return new d();
    }

    public long a() {
        return this.w;
    }

    public d a(int i) {
        this.m = String.valueOf(i);
        return this;
    }

    public d a(long j) {
        this.r = j;
        return this;
    }

    public d a(String str) {
        this.d = str;
        return this;
    }

    public d a(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.v.put(str, obj);
        }
        return this;
    }

    public d a(Map<String, Object> map) {
        if (map != null && map.size() > 0) {
            this.v.putAll(map);
        }
        return this;
    }

    public d b(int i) {
        this.q = i;
        return this;
    }

    public d b(long j) {
        this.w = j;
        return this;
    }

    public d b(String str) {
        this.c = str;
        return this;
    }

    public d c(int i) {
        this.n = i;
        return this;
    }

    public d c(long j) {
        this.i = j;
        return this;
    }

    public d c(String str) {
        this.f = str;
        return this;
    }

    public d d(int i) {
        this.o = String.valueOf(i);
        return this;
    }

    public d d(String str) {
        this.k = str;
        return this;
    }

    public d e(int i) {
        this.s = i;
        return this;
    }

    public d e(String str) {
        this.f10954a = str;
        return this;
    }

    public d f(int i) {
        this.p = String.valueOf(i);
        return this;
    }

    public d f(String str) {
        this.u = str;
        return this;
    }

    public d g(int i) {
        this.t = i;
        return this;
    }

    public d g(String str) {
        this.b = str;
        return this;
    }

    public d h(String str) {
        this.e = str;
        return this;
    }

    public d i(String str) {
        this.h = str;
        return this;
    }

    public d j(String str) {
        this.g = str;
        return this;
    }

    public d k(String str) {
        this.j = str;
        return this;
    }
}
