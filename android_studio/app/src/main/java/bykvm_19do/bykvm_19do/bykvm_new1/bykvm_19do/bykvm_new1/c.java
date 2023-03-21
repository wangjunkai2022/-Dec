package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1;

import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.i;

/* compiled from: CpuInfo.java */
/* loaded from: classes8.dex */
public class c {
    public static long a(int i) {
        String[] d = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.d.d("/proc/self/task/" + i + "/stat");
        if (d == null) {
            return -1L;
        }
        return (i.a.a() * Long.parseLong(d[12])) + (i.a.a() * Long.parseLong(d[11]));
    }
}
