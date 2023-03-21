package com.apk;

import java.util.Iterator;
/* compiled from: Iterators.kt */
/* loaded from: classes7.dex */
public abstract class ad0 implements Iterator<Integer>, ud0 {
    /* renamed from: do  reason: not valid java name */
    public abstract int mo43do();

    @Override // java.util.Iterator
    public Integer next() {
        return Integer.valueOf(mo43do());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
