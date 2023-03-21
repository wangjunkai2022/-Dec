package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122;

import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.base.TTBaseAd;
/* compiled from: TTBaseAdCache.java */
/* loaded from: classes8.dex */
public class e implements Comparable<e> {

    /* renamed from: a  reason: collision with root package name */
    public TTBaseAd f10900a;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d b;
    public long c;
    public boolean d = false;
    public AdSlot e;

    public e(TTBaseAd tTBaseAd, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar, long j, AdSlot adSlot) {
        this.f10900a = tTBaseAd;
        this.b = dVar;
        this.c = j;
        this.e = adSlot;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(e eVar) {
        return this.f10900a.compareTo(eVar.f10900a);
    }

    public AdSlot a() {
        return this.e;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public long b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }
}
