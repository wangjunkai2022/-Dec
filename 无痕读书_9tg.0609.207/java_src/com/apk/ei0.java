package com.apk;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;
/* compiled from: RouteException.kt */
/* loaded from: classes7.dex */
public final class ei0 extends RuntimeException {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public IOException f1070do;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final IOException f1071if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ei0(@NotNull IOException iOException) {
        super(iOException);
        nd0.m1875new(iOException, "firstConnectException");
        this.f1071if = iOException;
        this.f1070do = iOException;
    }
}
