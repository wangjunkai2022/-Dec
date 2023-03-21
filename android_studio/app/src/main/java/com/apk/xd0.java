package com.apk;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Ranges.kt */
/* loaded from: classes7.dex */
public final class xd0 extends vd0 {

    /* renamed from: new  reason: not valid java name */
    public static final xd0 f5514new = new xd0(1, 0);
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public static final xd0 f5515try = null;

    public xd0(int i, int i2) {
        super(i, i2, 1);
    }

    @Override // com.apk.vd0
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof xd0) {
            if (!isEmpty() || !((xd0) obj).isEmpty()) {
                xd0 xd0Var = (xd0) obj;
                if (this.f5067do != xd0Var.f5067do || this.f5069if != xd0Var.f5069if) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.apk.vd0
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f5067do * 31) + this.f5069if;
    }

    @Override // com.apk.vd0
    public boolean isEmpty() {
        return this.f5067do > this.f5069if;
    }

    @Override // com.apk.vd0
    @NotNull
    public String toString() {
        return this.f5067do + ".." + this.f5069if;
    }
}
