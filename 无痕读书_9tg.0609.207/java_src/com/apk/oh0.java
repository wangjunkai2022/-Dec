package com.apk;

import androidx.core.app.Person;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiskLruCache.kt */
/* loaded from: classes7.dex */
public final class oh0 implements Closeable, Flushable {

    /* renamed from: do  reason: not valid java name */
    public long f3422do;

    /* renamed from: for  reason: not valid java name */
    public boolean f3423for;

    /* renamed from: if  reason: not valid java name */
    public sk0 f3424if;

    /* renamed from: new  reason: not valid java name */
    public boolean f3425new;

    /* renamed from: try  reason: not valid java name */
    public boolean f3426try;
    @JvmField
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public static final ge0 f3418case = new ge0("[a-z0-9_-]{1,120}");
    @JvmField
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public static final String f3419else = "CLEAN";
    @JvmField
    @NotNull

    /* renamed from: goto  reason: not valid java name */
    public static final String f3420goto = "DIRTY";
    @JvmField
    @NotNull

    /* renamed from: this  reason: not valid java name */
    public static final String f3421this = "REMOVE";
    @JvmField
    @NotNull

    /* renamed from: break  reason: not valid java name */
    public static final String f3417break = "READ";

    /* compiled from: DiskLruCache.kt */
    /* renamed from: com.apk.oh0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cdo {
    }

    /* compiled from: DiskLruCache.kt */
    /* renamed from: com.apk.oh0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cif implements Closeable {

        /* renamed from: do  reason: not valid java name */
        public final String f3427do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ oh0 f3428for;

        /* renamed from: if  reason: not valid java name */
        public final long f3429if;
    }

    /* renamed from: break  reason: not valid java name */
    public final synchronized void m1947break() throws IOException {
        if (jh0.f2333goto && !Thread.holdsLock(this)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Thread ");
            Thread currentThread = Thread.currentThread();
            nd0.m1872for(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST hold lock on ");
            sb.append(this);
            throw new AssertionError(sb.toString());
        }
        if (!this.f3423for) {
            throw null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f3423for && !this.f3425new) {
            throw null;
        }
        this.f3425new = true;
    }

    public final void delete() throws IOException {
        close();
        throw null;
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.f3423for) {
            m1948for();
            if (this.f3422do <= 0) {
                this.f3426try = false;
                sk0 sk0Var = this.f3424if;
                nd0.m1874if(sk0Var);
                sk0Var.flush();
                return;
            }
            throw null;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final synchronized void m1948for() {
        if (!(!this.f3425new)) {
            throw new IllegalStateException("cache is closed".toString());
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public final void m1949throw(String str) {
        if (f3418case.m956do(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    @JvmOverloads
    @Nullable
    /* renamed from: try  reason: not valid java name */
    public final synchronized Cdo m1950try(@NotNull String str, long j) throws IOException {
        nd0.m1875new(str, Person.KEY_KEY);
        m1947break();
        m1948for();
        m1949throw(str);
        throw null;
    }
}
