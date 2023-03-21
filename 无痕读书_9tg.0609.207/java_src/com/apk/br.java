package com.apk;

import android.graphics.drawable.Drawable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: RequestFutureTarget.java */
/* loaded from: classes8.dex */
public class br<R> implements yq<R>, cr<R> {

    /* renamed from: catch  reason: not valid java name */
    public static final Cdo f446catch = new Cdo();
    @Nullable
    @GuardedBy("this")

    /* renamed from: break  reason: not valid java name */
    public bl f447break;
    @Nullable
    @GuardedBy("this")

    /* renamed from: case  reason: not valid java name */
    public zq f448case;

    /* renamed from: do  reason: not valid java name */
    public final int f449do;
    @GuardedBy("this")

    /* renamed from: else  reason: not valid java name */
    public boolean f450else;

    /* renamed from: for  reason: not valid java name */
    public final boolean f451for;
    @GuardedBy("this")

    /* renamed from: goto  reason: not valid java name */
    public boolean f452goto;

    /* renamed from: if  reason: not valid java name */
    public final int f453if;

    /* renamed from: new  reason: not valid java name */
    public final Cdo f454new;
    @GuardedBy("this")

    /* renamed from: this  reason: not valid java name */
    public boolean f455this;
    @Nullable
    @GuardedBy("this")

    /* renamed from: try  reason: not valid java name */
    public R f456try;

    /* compiled from: RequestFutureTarget.java */
    @VisibleForTesting
    /* renamed from: com.apk.br$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {
    }

    public br(int i, int i2) {
        Cdo cdo = f446catch;
        this.f449do = i;
        this.f453if = i2;
        this.f451for = true;
        this.f454new = cdo;
    }

    @Override // com.apk.pr
    /* renamed from: break  reason: not valid java name */
    public void mo268break(@NonNull or orVar) {
        orVar.mo886if(this.f449do, this.f453if);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.f450else = true;
            zq zqVar = null;
            if (this.f454new != null) {
                notifyAll();
                if (z) {
                    zq zqVar2 = this.f448case;
                    this.f448case = null;
                    zqVar = zqVar2;
                }
                if (zqVar != null) {
                    zqVar.clear();
                }
                return true;
            }
            throw null;
        }
    }

    @Override // com.apk.cr
    /* renamed from: case  reason: not valid java name */
    public synchronized boolean mo269case(R r, Object obj, pr<R> prVar, dj djVar, boolean z) {
        this.f452goto = true;
        this.f456try = r;
        if (this.f454new != null) {
            notifyAll();
        } else {
            throw null;
        }
        return false;
    }

    /* renamed from: catch  reason: not valid java name */
    public final synchronized R m270catch(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f451for && !isDone() && !gs.m1032catch()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
        if (!this.f450else) {
            if (!this.f455this) {
                if (this.f452goto) {
                    return this.f456try;
                }
                if (l == null) {
                    if (this.f454new == null) {
                        throw null;
                    }
                    wait(0L);
                } else if (l.longValue() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    long longValue = l.longValue() + currentTimeMillis;
                    while (!isDone() && currentTimeMillis < longValue) {
                        long j = longValue - currentTimeMillis;
                        if (this.f454new != null) {
                            wait(j);
                            currentTimeMillis = System.currentTimeMillis();
                        } else {
                            throw null;
                        }
                    }
                }
                if (!Thread.interrupted()) {
                    if (!this.f455this) {
                        if (!this.f450else) {
                            if (this.f452goto) {
                                return this.f456try;
                            }
                            throw new TimeoutException();
                        }
                        throw new CancellationException();
                    }
                    throw new ExecutionException(this.f447break);
                }
                throw new InterruptedException();
            }
            throw new ExecutionException(this.f447break);
        }
        throw new CancellationException();
    }

    @Override // com.apk.pr
    /* renamed from: do  reason: not valid java name */
    public void mo271do(@NonNull or orVar) {
    }

    @Override // com.apk.pr
    /* renamed from: else  reason: not valid java name */
    public void mo272else(@Nullable Drawable drawable) {
    }

    @Override // com.apk.pr
    /* renamed from: for  reason: not valid java name */
    public synchronized void mo273for(@Nullable zq zqVar) {
        this.f448case = zqVar;
    }

    @Override // java.util.concurrent.Future
    public R get() throws InterruptedException, ExecutionException {
        try {
            return m270catch(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.apk.pr
    @Nullable
    /* renamed from: goto  reason: not valid java name */
    public synchronized zq mo274goto() {
        return this.f448case;
    }

    @Override // com.apk.pr
    /* renamed from: if  reason: not valid java name */
    public synchronized void mo275if(@NonNull R r, @Nullable sr<? super R> srVar) {
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.f450else;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        boolean z;
        if (!this.f450else && !this.f452goto) {
            z = this.f455this;
        }
        return z;
    }

    @Override // com.apk.cr
    /* renamed from: new  reason: not valid java name */
    public synchronized boolean mo276new(@Nullable bl blVar, Object obj, pr<R> prVar, boolean z) {
        this.f455this = true;
        this.f447break = blVar;
        if (this.f454new != null) {
            notifyAll();
        } else {
            throw null;
        }
        return false;
    }

    @Override // com.apk.eq
    public void onDestroy() {
    }

    @Override // com.apk.eq
    public void onStart() {
    }

    @Override // com.apk.eq
    public void onStop() {
    }

    @Override // com.apk.pr
    /* renamed from: this  reason: not valid java name */
    public void mo277this(@Nullable Drawable drawable) {
    }

    @Override // com.apk.pr
    /* renamed from: try  reason: not valid java name */
    public synchronized void mo278try(@Nullable Drawable drawable) {
    }

    @Override // java.util.concurrent.Future
    public R get(long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m270catch(Long.valueOf(timeUnit.toMillis(j)));
    }
}
