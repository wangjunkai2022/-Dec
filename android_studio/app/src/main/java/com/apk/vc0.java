package com.apk;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* compiled from: Sequences.kt */
/* loaded from: classes7.dex */
public final class vc0 implements be0<T> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Iterable f5064do;

    public vc0(Iterable iterable) {
        this.f5064do = iterable;
    }

    @Override // com.apk.be0
    @NotNull
    public Iterator<T> iterator() {
        return this.f5064do.iterator();
    }
}
