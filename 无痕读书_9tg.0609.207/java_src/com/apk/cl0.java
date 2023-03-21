package com.apk;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.RandomAccess;
import org.jetbrains.annotations.NotNull;
/* compiled from: Options.kt */
/* loaded from: classes7.dex */
public final class cl0 extends rc0<uk0> implements RandomAccess {

    /* renamed from: for  reason: not valid java name */
    public static final Cdo f649for = new Cdo(null);
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final uk0[] f650do;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final int[] f651if;

    /* compiled from: Options.kt */
    /* renamed from: com.apk.cl0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public final void m355do(long j, rk0 rk0Var, int i, List<? extends uk0> list, int i2, int i3, List<Integer> list2) {
            int i4;
            int i5;
            int i6;
            int i7;
            rk0 rk0Var2;
            int i8 = i;
            if (i2 < i3) {
                for (int i9 = i2; i9 < i3; i9++) {
                    if (!(list.get(i9).mo1239for() >= i8)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                uk0 uk0Var = list.get(i2);
                uk0 uk0Var2 = list.get(i3 - 1);
                if (i8 == uk0Var.mo1239for()) {
                    int i10 = i2 + 1;
                    i4 = i10;
                    i5 = list2.get(i2).intValue();
                    uk0Var = list.get(i10);
                } else {
                    i4 = i2;
                    i5 = -1;
                }
                if (uk0Var.mo1233case(i8) != uk0Var2.mo1233case(i8)) {
                    int i11 = 1;
                    for (int i12 = i4 + 1; i12 < i3; i12++) {
                        if (list.get(i12 - 1).mo1233case(i8) != list.get(i12).mo1233case(i8)) {
                            i11++;
                        }
                    }
                    long m356if = m356if(rk0Var) + j + 2 + (i11 * 2);
                    rk0Var.h(i11);
                    rk0Var.h(i5);
                    for (int i13 = i4; i13 < i3; i13++) {
                        byte mo1233case = list.get(i13).mo1233case(i8);
                        if (i13 == i4 || mo1233case != list.get(i13 - 1).mo1233case(i8)) {
                            rk0Var.h(mo1233case & ExifInterface.MARKER);
                        }
                    }
                    rk0 rk0Var3 = new rk0();
                    while (i4 < i3) {
                        byte mo1233case2 = list.get(i4).mo1233case(i8);
                        int i14 = i4 + 1;
                        int i15 = i14;
                        while (true) {
                            if (i15 >= i3) {
                                i6 = i3;
                                break;
                            } else if (mo1233case2 != list.get(i15).mo1233case(i8)) {
                                i6 = i15;
                                break;
                            } else {
                                i15++;
                            }
                        }
                        if (i14 == i6 && i8 + 1 == list.get(i4).mo1239for()) {
                            rk0Var.h(list2.get(i4).intValue());
                            i7 = i6;
                            rk0Var2 = rk0Var3;
                        } else {
                            rk0Var.h(((int) (m356if(rk0Var3) + m356if)) * (-1));
                            i7 = i6;
                            rk0Var2 = rk0Var3;
                            m355do(m356if, rk0Var3, i8 + 1, list, i4, i6, list2);
                        }
                        rk0Var3 = rk0Var2;
                        i4 = i7;
                    }
                    rk0Var.mo638const(rk0Var3);
                    return;
                }
                int min = Math.min(uk0Var.mo1239for(), uk0Var2.mo1239for());
                int i16 = 0;
                for (int i17 = i8; i17 < min && uk0Var.mo1233case(i17) == uk0Var2.mo1233case(i17); i17++) {
                    i16++;
                }
                long m356if2 = m356if(rk0Var) + j + 2 + i16 + 1;
                rk0Var.h(-i16);
                rk0Var.h(i5);
                int i18 = i8 + i16;
                while (i8 < i18) {
                    rk0Var.h(uk0Var.mo1233case(i8) & ExifInterface.MARKER);
                    i8++;
                }
                if (i4 + 1 == i3) {
                    if (i18 == list.get(i4).mo1239for()) {
                        rk0Var.h(list2.get(i4).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                rk0 rk0Var4 = new rk0();
                rk0Var.h(((int) (m356if(rk0Var4) + m356if2)) * (-1));
                m355do(m356if2, rk0Var4, i18, list, i4, i3, list2);
                rk0Var.mo638const(rk0Var4);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        /* renamed from: if  reason: not valid java name */
        public final long m356if(rk0 rk0Var) {
            return rk0Var.f4108if / 4;
        }
    }

    public cl0(uk0[] uk0VarArr, int[] iArr, md0 md0Var) {
        this.f650do = uk0VarArr;
        this.f651if = iArr;
    }

    @Override // com.apk.qc0, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof uk0) {
            return super.contains((uk0) obj);
        }
        return false;
    }

    @Override // com.apk.qc0
    /* renamed from: do  reason: not valid java name */
    public int mo354do() {
        return this.f650do.length;
    }

    @Override // com.apk.rc0, java.util.List
    public Object get(int i) {
        return this.f650do[i];
    }

    @Override // com.apk.rc0, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof uk0) {
            return super.indexOf((uk0) obj);
        }
        return -1;
    }

    @Override // com.apk.rc0, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof uk0) {
            return super.lastIndexOf((uk0) obj);
        }
        return -1;
    }
}
