package com.apk;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* compiled from: Iterables.kt */
/* loaded from: classes7.dex */
public final class ce0 implements Iterable<T>, ud0 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ be0 f582do;

    public ce0(be0 be0Var) {
        this.f582do = be0Var;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return this.f582do.iterator();
    }
}
