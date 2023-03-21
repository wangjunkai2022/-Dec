package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122;

import androidx.core.app.NotificationManagerCompat;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.j0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BiddingUtil.java */
/* loaded from: classes8.dex */
public class c {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.List] */
    public static Map<Integer, List<i>> a(List<i> list) {
        ArrayList arrayList;
        int y;
        if (list == null || list.size() == 0) {
            return null;
        }
        j0.a(list);
        HashMap hashMap = new HashMap();
        int i = NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        for (int i2 = 0; i2 < list.size(); i2++) {
            i iVar = list.get(i2);
            if (iVar != null) {
                if (iVar.f() != 100 && iVar.f() != 0) {
                    if (iVar.p() != i) {
                        arrayList = new ArrayList();
                        y = iVar.p();
                    } else {
                        y = i;
                        arrayList = (List) hashMap.get(Integer.valueOf(i));
                    }
                } else {
                    arrayList = new ArrayList();
                    y = iVar.y();
                }
                if (arrayList != null) {
                    arrayList.add(iVar);
                    hashMap.put(Integer.valueOf(y), arrayList);
                }
                i = y;
            }
        }
        return hashMap;
    }

    public static Map<Integer, List<i>> b(List<i> list) {
        int i;
        List list2;
        if (list == null || list.size() == 0) {
            return null;
        }
        j0.a(list);
        HashMap hashMap = new HashMap();
        int i2 = NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
        for (int i3 = 0; i3 < list.size(); i3++) {
            i iVar = list.get(i3);
            if (iVar != null) {
                if (iVar.p() != i2) {
                    list2 = new ArrayList();
                    i = iVar.p();
                } else {
                    i = i2;
                    list2 = (List) hashMap.get(Integer.valueOf(i2));
                }
                if (list2 != null) {
                    list2.add(iVar);
                    hashMap.put(Integer.valueOf(i), list2);
                }
                i2 = i;
            }
        }
        return hashMap;
    }
}
