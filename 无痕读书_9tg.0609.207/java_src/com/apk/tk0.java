package com.apk;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferedSource.kt */
/* loaded from: classes7.dex */
public interface tk0 extends ll0, ReadableByteChannel {
    @NotNull
    /* renamed from: case */
    byte[] mo850case() throws IOException;

    @NotNull
    /* renamed from: catch */
    String mo851catch(@NotNull Charset charset) throws IOException;

    @NotNull
    /* renamed from: do */
    rk0 mo852do();

    /* renamed from: else */
    boolean mo853else() throws IOException;

    @NotNull
    /* renamed from: goto */
    String mo855goto(long j) throws IOException;

    /* renamed from: native */
    void mo856native(long j) throws IOException;

    @NotNull
    /* renamed from: new */
    uk0 mo857new(long j) throws IOException;

    byte readByte() throws IOException;

    int readInt() throws IOException;

    short readShort() throws IOException;

    /* renamed from: return */
    long mo858return() throws IOException;

    void skip(long j) throws IOException;

    @NotNull
    /* renamed from: static */
    InputStream mo859static();

    @NotNull
    /* renamed from: super */
    String mo860super() throws IOException;

    /* renamed from: switch */
    int mo861switch(@NotNull cl0 cl0Var) throws IOException;
}
