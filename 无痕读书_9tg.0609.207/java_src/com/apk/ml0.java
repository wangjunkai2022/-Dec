package com.apk;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: Timeout.kt */
/* loaded from: classes7.dex */
public class ml0 {
    @JvmField
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public static final ml0 f3064new = new Cdo();

    /* renamed from: do  reason: not valid java name */
    public boolean f3065do;

    /* renamed from: for  reason: not valid java name */
    public long f3066for;

    /* renamed from: if  reason: not valid java name */
    public long f3067if;

    /* compiled from: Timeout.kt */
    /* renamed from: com.apk.ml0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends ml0 {
        @Override // com.apk.ml0
        /* renamed from: case */
        public void mo1728case() {
        }

        @Override // com.apk.ml0
        @NotNull
        /* renamed from: else */
        public ml0 mo1730else(long j, @NotNull TimeUnit timeUnit) {
            nd0.m1875new(timeUnit, "unit");
            return this;
        }

        @Override // com.apk.ml0
        @NotNull
        /* renamed from: new */
        public ml0 mo1733new(long j) {
            return this;
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void mo1728case() throws IOException {
        if (!Thread.interrupted()) {
            if (this.f3065do && this.f3067if - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        Thread.currentThread().interrupt();
        throw new InterruptedIOException("interrupted");
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public ml0 mo1729do() {
        this.f3065do = false;
        return this;
    }

    @NotNull
    /* renamed from: else  reason: not valid java name */
    public ml0 mo1730else(long j, @NotNull TimeUnit timeUnit) {
        nd0.m1875new(timeUnit, "unit");
        if (j >= 0) {
            this.f3066for = timeUnit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException(Cgoto.m1000for("timeout < 0: ", j).toString());
    }

    /* renamed from: for  reason: not valid java name */
    public long mo1731for() {
        if (this.f3065do) {
            return this.f3067if;
        }
        throw new IllegalStateException("No deadline".toString());
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public ml0 mo1732if() {
        this.f3066for = 0L;
        return this;
    }

    @NotNull
    /* renamed from: new  reason: not valid java name */
    public ml0 mo1733new(long j) {
        this.f3065do = true;
        this.f3067if = j;
        return this;
    }

    /* renamed from: try  reason: not valid java name */
    public boolean mo1734try() {
        return this.f3065do;
    }
}
