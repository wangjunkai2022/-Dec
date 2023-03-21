package com.apk;
/* compiled from: CallbackException.java */
/* loaded from: classes8.dex */
public final class mk extends RuntimeException {
    public mk(Throwable th) {
        super("Unexpected exception thrown by non-Glide code", th);
    }
}
