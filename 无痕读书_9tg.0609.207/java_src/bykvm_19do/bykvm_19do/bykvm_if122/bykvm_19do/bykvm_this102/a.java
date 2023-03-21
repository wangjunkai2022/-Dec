package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_this102;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: TTTestToolUtil.java */
/* loaded from: classes8.dex */
public class a {
    public static c a(c cVar, String str) {
        if (cVar == null || TextUtils.isEmpty(str) || cVar.A() == null || cVar.A().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<i> it = cVar.A().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            i next = it.next();
            if (str.equals(next.d())) {
                arrayList.add(next.b());
                break;
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        i iVar = (i) arrayList.get(0);
        if (iVar != null && iVar.G() && !"pangle".equals(iVar.e())) {
            Iterator<i> it2 = cVar.A().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                i next2 = it2.next();
                if (next2.G() && "pangle".equals(next2.e())) {
                    arrayList.add(next2.b());
                    break;
                }
            }
        }
        c a2 = cVar.a();
        if (a2.I()) {
            a2.a(arrayList);
        } else {
            a2.b(arrayList);
        }
        i iVar2 = (i) arrayList.get(0);
        iVar2.f(0);
        if (iVar2.f() == 0) {
            a2.b(iVar2.i());
        }
        if (iVar2.f() == 2) {
            a2.b(true);
        }
        if (iVar2.f() == 1 || iVar2.f() == 3) {
            a2.a(true);
        }
        a2.h(0);
        return a2;
    }

    public static String a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("gm_test_slot_")) {
                return str.substring(13);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
