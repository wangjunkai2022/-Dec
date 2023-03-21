package com.apk;

import java.util.NoSuchElementException;

/* compiled from: ProgressionIterators.kt */
/* loaded from: classes7.dex */
public final class wd0 extends ad0 {

    /* renamed from: do  reason: not valid java name */
    public final int f5259do;

    /* renamed from: for  reason: not valid java name */
    public int f5260for;

    /* renamed from: if  reason: not valid java name */
    public boolean f5261if;

    /* renamed from: new  reason: not valid java name */
    public final int f5262new;

    public wd0(int i, int i2, int i3) {
        this.f5262new = i3;
        this.f5259do = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f5261if = z;
        this.f5260for = z ? i : this.f5259do;
    }

    @Override // com.apk.ad0
    /* renamed from: do */
    public int mo43do() {
        int i = this.f5260for;
        if (i == this.f5259do) {
            if (this.f5261if) {
                this.f5261if = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f5260for = this.f5262new + i;
        }
        return i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5261if;
    }
}
