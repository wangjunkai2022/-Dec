package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: CallCenter.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public Map<c, List<a>> f11042a = new HashMap();
    public Map<String, String> b = new HashMap();
    public final List<f> c;
    public final List<f> d;
    public g e;

    public b() {
        new CopyOnWriteArrayList();
        this.c = new CopyOnWriteArrayList();
        new CopyOnWriteArrayList();
        this.d = new CopyOnWriteArrayList();
        this.e = null;
    }

    @Nullable
    public List<a> a(c cVar) {
        return this.f11042a.get(cVar);
    }

    @Nullable
    public g b() {
        return this.e;
    }

    @NonNull
    public List<f> c() {
        return this.c;
    }

    public Map<String, String> d() {
        return this.b;
    }

    public void a(Map<? extends String, ? extends String> map) {
        this.b.putAll(map);
    }

    @NonNull
    public List<f> a() {
        return this.d;
    }

    public void a(g gVar) {
        this.e = gVar;
    }
}
