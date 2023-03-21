package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: HandlerObjUtil.java */
/* loaded from: classes8.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    public static Map<Integer, Integer> f11009a = new ConcurrentHashMap();

    public static Integer a(int i) {
        Integer num = f11009a.get(Integer.valueOf(i));
        if (num == null) {
            Integer valueOf = Integer.valueOf(i);
            f11009a.put(Integer.valueOf(i), valueOf);
            return valueOf;
        }
        return num;
    }
}
