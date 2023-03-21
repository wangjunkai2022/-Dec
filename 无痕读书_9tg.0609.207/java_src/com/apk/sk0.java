package com.apk;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferedSink.kt */
/* loaded from: classes7.dex */
public interface sk0 extends jl0, WritableByteChannel {
    /* renamed from: const */
    long mo638const(@NotNull ll0 ll0Var) throws IOException;

    @NotNull
    /* renamed from: do */
    rk0 mo639do();

    @NotNull
    /* renamed from: final */
    sk0 mo640final(long j) throws IOException;

    @Override // com.apk.jl0, java.io.Flushable
    void flush() throws IOException;

    @NotNull
    /* renamed from: public */
    sk0 mo642public(long j) throws IOException;

    @NotNull
    /* renamed from: this */
    sk0 mo643this(@NotNull String str) throws IOException;

    @NotNull
    /* renamed from: while */
    sk0 mo644while(@NotNull uk0 uk0Var) throws IOException;

    @NotNull
    sk0 write(@NotNull byte[] bArr) throws IOException;

    @NotNull
    sk0 write(@NotNull byte[] bArr, int i, int i2) throws IOException;

    @NotNull
    sk0 writeByte(int i) throws IOException;

    @NotNull
    sk0 writeInt(int i) throws IOException;

    @NotNull
    sk0 writeShort(int i) throws IOException;
}
