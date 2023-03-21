package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: IntervalPacingCache.java */
/* loaded from: classes8.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public Map<String, i> f10857a;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.e<i> b;

    /* compiled from: IntervalPacingCache.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static j f10858a = new j();
    }

    public static j a() {
        return b.f10858a;
    }

    public i b(String str) {
        if (this.b != null) {
            Map<String, i> map = this.f10857a;
            i iVar = map != null ? map.get(str) : null;
            if (iVar != null) {
                return iVar;
            }
            i b2 = this.b.b(str);
            if (b2 != null) {
                this.f10857a.put(b2.d(), b2);
            }
            return b2;
        }
        return null;
    }

    public j() {
        this.b = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.f(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
        this.f10857a = new ConcurrentHashMap();
    }

    public void a(String str, long j) {
        if (this.b != null) {
            Map<String, i> map = this.f10857a;
            i iVar = map != null ? map.get(str) : null;
            if (iVar != null) {
                iVar.a(j);
            }
            this.b.a(str, j);
        }
    }

    public i b(String str, String str2) {
        i iVar = null;
        if (this.b != null) {
            Map<String, i> map = this.f10857a;
            if (map != null) {
                iVar = map.get(str + "_" + str2);
            }
            if (iVar != null) {
                return iVar;
            }
            i b2 = this.b.b(str, str2);
            if (b2 != null) {
                this.f10857a.put(b2.g(), b2);
            }
            return b2;
        }
        return null;
    }

    public void a(String str, String str2, long j) {
        if (this.b != null) {
            i iVar = null;
            Map<String, i> map = this.f10857a;
            if (map != null) {
                iVar = map.get(str + "_" + str2);
            }
            if (iVar != null) {
                iVar.a(j);
            }
            this.b.a(str, str2, j);
        }
    }

    public void a(String str) {
        if (this.b != null) {
            Map<String, i> map = this.f10857a;
            if (map != null) {
                map.remove(str);
            }
            this.b.a(str);
        }
    }

    public void a(String str, String str2) {
        if (this.b != null) {
            Map<String, i> map = this.f10857a;
            if (map != null) {
                map.remove(str + "_" + str2);
            }
            this.b.a(str, str2);
        }
    }

    public void a(i iVar) {
        if (this.b == null || TextUtils.isEmpty(iVar.j())) {
            return;
        }
        Map<String, i> map = this.f10857a;
        if (map != null) {
            map.put(iVar.g(), iVar);
        }
        this.b.a((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.e<i>) iVar);
    }
}
