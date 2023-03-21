package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ServerBiddingModel.java */
/* loaded from: classes8.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public String f10873a;
    public a b;
    public List<e> c;
    public List<g> d;

    /* compiled from: ServerBiddingModel.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f10874a;
        public List<i> b = new ArrayList();

        public void a(String str) {
            this.f10874a = str;
        }

        public void a(List<i> list) {
            this.b = list;
        }
    }

    public List<e> a() {
        return this.c;
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void a(g gVar) {
    }

    public void a(String str) {
    }

    public void a(List<e> list) {
        this.c = list;
    }

    public String b() {
        return this.f10873a;
    }

    public void b(String str) {
        this.f10873a = str;
    }

    public void b(List<g> list) {
        this.d = list;
    }

    public List<i> c() {
        a aVar = this.b;
        if (aVar == null) {
            return null;
        }
        return aVar.b;
    }

    public void c(String str) {
    }

    public List<g> d() {
        return this.d;
    }

    public boolean e() {
        a aVar = this.b;
        return (aVar == null || TextUtils.isEmpty(aVar.f10874a)) ? false : true;
    }
}
