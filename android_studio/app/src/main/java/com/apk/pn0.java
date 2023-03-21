package com.apk;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.StringTokenizer;

/* compiled from: XPather.java */
/* loaded from: classes7.dex */
public class pn0 {

    /* renamed from: do  reason: not valid java name */
    public String[] f3719do;

    public pn0(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "/()[]\"'=<>", true);
        this.f3719do = new String[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            this.f3719do[i] = stringTokenizer.nextToken();
            i++;
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final Collection m2061case(Object obj) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:167:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03ed  */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Collection m2062do(java.util.Collection r22, int r23, int r24, boolean r25, int r26, int r27, boolean r28, java.util.Collection r29) throws com.apk.qn0 {
        /*
            Method dump skipped, instructions count: 1089
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.pn0.m2062do(java.util.Collection, int, int, boolean, int, int, boolean, java.util.Collection):java.util.Collection");
    }

    /* renamed from: else  reason: not valid java name */
    public final String m2063else(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof kn0) {
            return ((StringBuilder) ((kn0) obj).m1530super()).toString();
        }
        return obj.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int] */
    /* renamed from: for  reason: not valid java name */
    public final int m2064for(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (i < i2) {
            String str = this.f3719do[i];
            boolean z = true;
            if ("\"".equals(str)) {
                for (int i6 = i + 1; i6 <= i2; i6++) {
                    if ("\"".equals(this.f3719do[i6])) {
                        return i6;
                    }
                }
                return -1;
            } else if ("'".equals(str)) {
                for (int i7 = i + 1; i7 <= i2; i7++) {
                    if ("'".equals(this.f3719do[i7])) {
                        return i7;
                    }
                }
                return -1;
            } else if ("(".equals(str) || "[".equals(str) || "/".equals(str)) {
                boolean equals = "(".equals(str);
                int i8 = i + 1;
                int equals2 = "[".equals(str);
                int i9 = equals;
                boolean z2 = true;
                int i10 = "/".equals(str);
                while (i8 <= i2) {
                    if ("\"".equals(this.f3719do[i8])) {
                        z = !z;
                        i5 = i10;
                        i4 = i9;
                        i3 = equals2;
                    } else if ("'".equals(this.f3719do[i8])) {
                        z2 = !z2;
                        i5 = i10;
                        i4 = i9;
                        i3 = equals2;
                    } else if ("(".equals(this.f3719do[i8]) && z && z2) {
                        i5 = i10;
                        i4 = i9 + 1;
                        i3 = equals2;
                    } else if (")".equals(this.f3719do[i8]) && z && z2) {
                        i5 = i10;
                        i4 = i9 - 1;
                        i3 = equals2;
                    } else if ("[".equals(this.f3719do[i8]) && z && z2) {
                        i5 = i10;
                        i4 = i9;
                        i3 = equals2 + 1;
                    } else if ("]".equals(this.f3719do[i8]) && z && z2) {
                        i5 = i10;
                        i4 = i9;
                        i3 = equals2 - 1;
                    } else {
                        i5 = i10;
                        i5 = i10;
                        i5 = i10;
                        i5 = i10;
                        i5 = i10;
                        i4 = i9;
                        i4 = i9;
                        i4 = i9;
                        i4 = i9;
                        i4 = i9;
                        i3 = equals2;
                        i3 = equals2;
                        i3 = equals2;
                        i3 = equals2;
                        i3 = equals2;
                        if ("/".equals(this.f3719do[i8]) && z && z2 && i9 == 0 && equals2 == 0) {
                            i5 = i10 - 1;
                            i4 = i9;
                            i3 = equals2;
                        }
                    }
                    if (z && z2 && i4 == 0 && i3 == 0 && i5 == 0) {
                        return i8;
                    }
                    i8++;
                    i10 = i5;
                    i9 = i4;
                    equals2 = i3;
                }
                return -1;
            } else {
                return -1;
            }
        }
        return -1;
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m2065if(Collection collection, Collection collection2, String str) {
        if (collection == null || collection.size() == 0 || collection2 == null || collection2.size() == 0) {
            return false;
        }
        Object next = collection.iterator().next();
        Object next2 = collection2.iterator().next();
        if ((next instanceof Number) && (next2 instanceof Number)) {
            double doubleValue = ((Number) next).doubleValue();
            double doubleValue2 = ((Number) next2).doubleValue();
            return "=".equals(str) ? doubleValue == doubleValue2 : "<".equals(str) ? doubleValue < doubleValue2 : ">".equals(str) ? doubleValue > doubleValue2 : "<=".equals(str) ? doubleValue <= doubleValue2 : ">=".equals(str) && doubleValue >= doubleValue2;
        }
        int compareTo = m2063else(next).compareTo(m2063else(next2));
        return "=".equals(str) ? compareTo == 0 : "<".equals(str) ? compareTo < 0 : ">".equals(str) ? compareTo > 0 : "<=".equals(str) ? compareTo <= 0 : ">=".equals(str) && compareTo >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.util.AbstractCollection, java.util.LinkedHashSet] */
    /* JADX WARN: Type inference failed for: r22v0, types: [com.apk.pn0] */
    /* renamed from: new  reason: not valid java name */
    public final Collection m2066new(Collection collection, int i, int i2, boolean z, boolean z2) throws qn0 {
        Collection m1517break;
        ?? r0;
        String trim = this.f3719do[i].trim();
        if (trim != null && trim.length() > 1 && trim.startsWith("@")) {
            String substring = trim.substring(1);
            ArrayList arrayList = new ArrayList();
            if (z) {
                r0 = new LinkedHashSet();
                for (Object obj : collection) {
                    if (obj instanceof kn0) {
                        r0.addAll(((kn0) obj).m1517break(new un0(), true));
                    }
                }
            } else {
                r0 = collection;
            }
            for (Object obj2 : r0) {
                if (obj2 instanceof kn0) {
                    kn0 kn0Var = (kn0) obj2;
                    if ("*".equals(substring)) {
                        arrayList.addAll(m2062do(((LinkedHashMap) kn0Var.m1520class()).values(), i + 1, i2, false, 1, 1, z2, null));
                    } else {
                        String m1519catch = kn0Var.m1519catch(substring);
                        if (m1519catch != null) {
                            arrayList.addAll(m2062do(m2061case(m1519catch), i + 1, i2, false, 1, 1, z2, null));
                        }
                    }
                } else {
                    throw new qn0();
                }
            }
            return arrayList;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i3 = 0;
        for (Object obj3 : collection) {
            if (obj3 instanceof kn0) {
                kn0 kn0Var2 = (kn0) obj3;
                int i4 = i3 + 1;
                boolean equals = ".".equals(trim);
                boolean equals2 = "..".equals(trim);
                boolean equals3 = "*".equals(trim);
                if (equals) {
                    m1517break = m2061case(kn0Var2);
                } else if (equals2) {
                    kn0 mo985for = kn0Var2.mo985for();
                    m1517break = mo985for != null ? m2061case(mo985for) : new ArrayList();
                } else if (equals3) {
                    m1517break = kn0Var2.m1523final();
                } else {
                    m1517break = kn0Var2.m1517break(new wn0(trim), false);
                }
                LinkedHashSet linkedHashSet2 = new LinkedHashSet(m1517break);
                Collection m2062do = m2062do(linkedHashSet2, i + 1, i2, false, i4, linkedHashSet2.size(), z2, null);
                if (z) {
                    List<kn0> m1523final = kn0Var2.m1523final();
                    if (equals || equals2 || equals3) {
                        linkedHashSet.addAll(m2062do);
                    }
                    Iterator it = ((ArrayList) m1523final).iterator();
                    while (it.hasNext()) {
                        kn0 kn0Var3 = (kn0) it.next();
                        Collection m2066new = m2066new(m2061case(kn0Var3), i, i2, z, z2);
                        if (!equals && !equals2 && !equals3 && m2062do.contains(kn0Var3)) {
                            linkedHashSet.add(kn0Var3);
                        }
                        linkedHashSet.addAll(m2066new);
                    }
                } else {
                    linkedHashSet.addAll(m2062do);
                }
                i3 = i4;
            } else {
                throw new qn0();
            }
        }
        return linkedHashSet;
    }

    /* renamed from: try  reason: not valid java name */
    public final boolean m2067try(String str, int i) {
        String[] strArr = this.f3719do;
        return i >= 0 && i < strArr.length && strArr[i].trim().equals(str.trim());
    }
}
