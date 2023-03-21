package com.apk;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Segment.kt */
/* loaded from: classes7.dex */
public final class gl0 {
    @JvmField
    @Nullable

    /* renamed from: case  reason: not valid java name */
    public gl0 f1602case;
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final byte[] f1603do;
    @JvmField
    @Nullable

    /* renamed from: else  reason: not valid java name */
    public gl0 f1604else;
    @JvmField

    /* renamed from: for  reason: not valid java name */
    public int f1605for;
    @JvmField

    /* renamed from: if  reason: not valid java name */
    public int f1606if;
    @JvmField

    /* renamed from: new  reason: not valid java name */
    public boolean f1607new;
    @JvmField

    /* renamed from: try  reason: not valid java name */
    public boolean f1608try;

    public gl0() {
        this.f1603do = new byte[8192];
        this.f1608try = true;
        this.f1607new = false;
    }

    @Nullable
    /* renamed from: do  reason: not valid java name */
    public final gl0 m977do() {
        gl0 gl0Var = this.f1602case;
        if (gl0Var == this) {
            gl0Var = null;
        }
        gl0 gl0Var2 = this.f1604else;
        nd0.m1874if(gl0Var2);
        gl0Var2.f1602case = this.f1602case;
        gl0 gl0Var3 = this.f1602case;
        nd0.m1874if(gl0Var3);
        gl0Var3.f1604else = this.f1604else;
        this.f1602case = null;
        this.f1604else = null;
        return gl0Var;
    }

    @NotNull
    /* renamed from: for  reason: not valid java name */
    public final gl0 m978for() {
        this.f1607new = true;
        return new gl0(this.f1603do, this.f1606if, this.f1605for, true, false);
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public final gl0 m979if(@NotNull gl0 gl0Var) {
        nd0.m1875new(gl0Var, "segment");
        gl0Var.f1604else = this;
        gl0Var.f1602case = this.f1602case;
        gl0 gl0Var2 = this.f1602case;
        nd0.m1874if(gl0Var2);
        gl0Var2.f1604else = gl0Var;
        this.f1602case = gl0Var;
        return gl0Var;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m980new(@NotNull gl0 gl0Var, int i) {
        nd0.m1875new(gl0Var, "sink");
        if (gl0Var.f1608try) {
            int i2 = gl0Var.f1605for;
            if (i2 + i > 8192) {
                if (!gl0Var.f1607new) {
                    int i3 = gl0Var.f1606if;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = gl0Var.f1603do;
                        uc0.m2696for(bArr, bArr, 0, i3, i2, 2);
                        gl0Var.f1605for -= gl0Var.f1606if;
                        gl0Var.f1606if = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            byte[] bArr2 = this.f1603do;
            byte[] bArr3 = gl0Var.f1603do;
            int i4 = gl0Var.f1605for;
            int i5 = this.f1606if;
            uc0.m2698if(bArr2, bArr3, i4, i5, i5 + i);
            gl0Var.f1605for += i;
            this.f1606if += i;
            return;
        }
        throw new IllegalStateException("only owner can write".toString());
    }

    public gl0(@NotNull byte[] bArr, int i, int i2, boolean z, boolean z2) {
        nd0.m1875new(bArr, "data");
        this.f1603do = bArr;
        this.f1606if = i;
        this.f1605for = i2;
        this.f1607new = z;
        this.f1608try = z2;
    }
}
