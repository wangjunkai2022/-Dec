package bykvm_19do.bykvm_19do.bykvm_19do;

import com.apk.Cgoto;
import java.util.LinkedList;
/* loaded from: classes8.dex */
public class d2 {

    /* renamed from: a  reason: collision with root package name */
    public static final LinkedList<u> f10617a = new LinkedList<>();
    public static final LinkedList<u> b = new LinkedList<>();

    public static void a(u uVar) {
        synchronized (f10617a) {
            if (f10617a.size() > 200) {
                l0.b("drop event in cache", null);
                b.add(f10617a.poll());
            }
            f10617a.add(uVar);
        }
    }

    public static void a() {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        synchronized (f10617a) {
            linkedList.addAll(f10617a);
            linkedList2.addAll(b);
            f10617a.clear();
            b.clear();
        }
        while (!linkedList.isEmpty()) {
            v1.a((u) linkedList.poll());
        }
        while (!linkedList2.isEmpty()) {
            u uVar = (u) linkedList2.poll();
            c0 c0Var = null;
            if (uVar instanceof c0) {
                c0Var = (c0) uVar;
            } else if (uVar instanceof w) {
                w wVar = (w) uVar;
                StringBuilder m1016super = Cgoto.m1016super("");
                m1016super.append(wVar.j());
                m1016super.append(wVar.k());
                c0Var = new c0(m1016super.toString(), "16", 1);
            } else if (uVar instanceof y) {
                c0Var = new c0(((y) uVar).k(), "16", 1);
            }
            v1.a(c0Var);
        }
    }
}
