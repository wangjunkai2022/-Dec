package com.apk;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;
import org.jetbrains.annotations.NotNull;

/* compiled from: JvmOkio.kt */
/* loaded from: classes7.dex */
public final /* synthetic */ class bl0 {

    /* renamed from: do  reason: not valid java name */
    public static final Logger f357do = Logger.getLogger("okio.Okio");

    /* renamed from: do  reason: not valid java name */
    public static final boolean m205do(@NotNull AssertionError assertionError) {
        nd0.m1875new(assertionError, "$this$isAndroidGetsocknameError");
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            return message != null ? ie0.m1200if(message, "getsockname failed", false, 2) : false;
        }
        return false;
    }

    @NotNull
    /* renamed from: for  reason: not valid java name */
    public static final ll0 m206for(@NotNull File file) throws FileNotFoundException {
        nd0.m1875new(file, "$this$source");
        return m208new(new FileInputStream(file));
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public static final jl0 m207if(@NotNull Socket socket) throws IOException {
        nd0.m1875new(socket, "$this$sink");
        kl0 kl0Var = new kl0(socket);
        OutputStream outputStream = socket.getOutputStream();
        nd0.m1872for(outputStream, "getOutputStream()");
        dl0 dl0Var = new dl0(outputStream, kl0Var);
        nd0.m1875new(dl0Var, "sink");
        return new pk0(kl0Var, dl0Var);
    }

    @NotNull
    /* renamed from: new  reason: not valid java name */
    public static final ll0 m208new(@NotNull InputStream inputStream) {
        nd0.m1875new(inputStream, "$this$source");
        return new al0(inputStream, new ml0());
    }

    @NotNull
    /* renamed from: try  reason: not valid java name */
    public static final ll0 m209try(@NotNull Socket socket) throws IOException {
        nd0.m1875new(socket, "$this$source");
        kl0 kl0Var = new kl0(socket);
        InputStream inputStream = socket.getInputStream();
        nd0.m1872for(inputStream, "getInputStream()");
        al0 al0Var = new al0(inputStream, kl0Var);
        nd0.m1875new(al0Var, "source");
        return new qk0(kl0Var, al0Var);
    }
}
