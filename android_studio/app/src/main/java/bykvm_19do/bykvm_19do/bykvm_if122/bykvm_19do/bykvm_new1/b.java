package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1;

/* compiled from: SortAlgorithm.java */
/* loaded from: classes8.dex */
public class b {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
        if (r2 != '\'') goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0070, code lost:
        if (r1 >= 'T') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0072, code lost:
        r2 = 'L';
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0076, code lost:
        if (r2 > 22) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a A[FALL_THROUGH, PHI: r1 
      PHI: (r1v1 char) = (r1v0 char), (r1v2 char), (r1v2 char), (r1v2 char) binds: [B:21:0x0056, B:23:0x005e, B:36:0x0076, B:25:0x0062] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0074 A[PHI: r2 
      PHI: (r2v2 char) = (r2v1 char), (r2v3 char) binds: [B:23:0x005e, B:34:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005a -> B:23:0x005e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0070 -> B:29:0x0069). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0076 -> B:34:0x0072). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(java.util.List<java.lang.Integer> r9) {
        /*
            r0 = 39
            if (r9 == 0) goto L56
            int r1 = r9.size()
            r2 = 1
            if (r1 > r2) goto Lc
            goto L56
        Lc:
            int r1 = r9.size()
            int[] r3 = new int[r1]
            r4 = 0
            r5 = 0
        L14:
            if (r5 >= r1) goto L25
            java.lang.Object r6 = r9.get(r5)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            r3[r5] = r6
            int r5 = r5 + 1
            goto L14
        L25:
            if (r2 >= r1) goto L3e
            r5 = r3[r2]
            r6 = r2
        L2a:
            if (r6 <= 0) goto L39
            int r7 = r6 + (-1)
            r8 = r3[r7]
            if (r8 <= r5) goto L39
            r7 = r3[r7]
            r3[r6] = r7
            int r6 = r6 + (-1)
            goto L2a
        L39:
            r3[r6] = r5
            int r2 = r2 + 1
            goto L25
        L3e:
            r9.clear()
        L41:
            if (r4 >= r1) goto L4f
            r2 = r3[r4]
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r9.add(r2)
            int r4 = r4 + 1
            goto L41
        L4f:
            r9 = 68
            r1 = 66
            r2 = 39
            goto L5e
        L56:
            r9 = 80
            r1 = 80
        L5a:
            r9 = 70
            r2 = 30
        L5e:
            switch(r9) {
                case 68: goto L66;
                case 69: goto L74;
                case 70: goto L62;
                default: goto L61;
            }
        L61:
            goto L5a
        L62:
            switch(r2) {
                case 29: goto L6d;
                case 30: goto L6d;
                case 31: goto L5a;
                default: goto L65;
            }
        L65:
            goto L69
        L66:
            if (r2 == r0) goto L69
            goto L6e
        L69:
            switch(r1) {
                case 64: goto L6d;
                case 65: goto L6d;
                case 66: goto L6d;
                default: goto L6c;
            }
        L6c:
            goto L6e
        L6d:
            return
        L6e:
            r9 = 84
            if (r1 >= r9) goto L69
        L72:
            r2 = 76
        L74:
            r9 = 22
            if (r2 <= r9) goto L72
            goto L5a
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.b.a(java.util.List):void");
    }
}
