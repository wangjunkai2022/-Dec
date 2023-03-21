package com.apk;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Progressions.kt */
/* loaded from: classes7.dex */
public class vd0 implements Iterable<Integer>, ud0 {

    /* renamed from: do  reason: not valid java name */
    public final int f5067do;

    /* renamed from: for  reason: not valid java name */
    public final int f5068for;

    /* renamed from: if  reason: not valid java name */
    public final int f5069if;

    public vd0(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 != Integer.MIN_VALUE) {
            this.f5067do = i;
            if (i3 > 0) {
                if (i < i2) {
                    i2 -= sb0.m2419interface(sb0.m2419interface(i2, i3) - sb0.m2419interface(i, i3), i3);
                }
            } else if (i3 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            } else {
                if (i > i2) {
                    int i4 = -i3;
                    i2 += sb0.m2419interface(sb0.m2419interface(i, i4) - sb0.m2419interface(i2, i4), i4);
                }
            }
            this.f5069if = i2;
            this.f5068for = i3;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof vd0) {
            if (!isEmpty() || !((vd0) obj).isEmpty()) {
                vd0 vd0Var = (vd0) obj;
                if (this.f5067do != vd0Var.f5067do || this.f5069if != vd0Var.f5069if || this.f5068for != vd0Var.f5068for) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f5067do * 31) + this.f5069if) * 31) + this.f5068for;
    }

    public boolean isEmpty() {
        if (this.f5068for > 0) {
            if (this.f5067do > this.f5069if) {
                return true;
            }
        } else if (this.f5067do < this.f5069if) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<Integer> iterator() {
        return new wd0(this.f5067do, this.f5069if, this.f5068for);
    }

    @NotNull
    public String toString() {
        StringBuilder sb;
        int i;
        if (this.f5068for > 0) {
            sb = new StringBuilder();
            sb.append(this.f5067do);
            sb.append("..");
            sb.append(this.f5069if);
            sb.append(" step ");
            i = this.f5068for;
        } else {
            sb = new StringBuilder();
            sb.append(this.f5067do);
            sb.append(" downTo ");
            sb.append(this.f5069if);
            sb.append(" step ");
            i = -this.f5068for;
        }
        sb.append(i);
        return sb.toString();
    }
}
