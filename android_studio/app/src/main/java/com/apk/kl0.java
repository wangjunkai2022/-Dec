package com.apk;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: JvmOkio.kt */
/* loaded from: classes7.dex */
public final class kl0 extends ok0 {

    /* renamed from: class  reason: not valid java name */
    public final Socket f2587class;

    public kl0(@NotNull Socket socket) {
        nd0.m1875new(socket, "socket");
        this.f2587class = socket;
    }

    @Override // com.apk.ok0
    @NotNull
    /* renamed from: break */
    public IOException mo973break(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // com.apk.ok0
    /* renamed from: catch */
    public void mo974catch() {
        try {
            this.f2587class.close();
        } catch (AssertionError e) {
            if (bl0.m205do(e)) {
                Logger logger = bl0.f357do;
                Level level = Level.WARNING;
                StringBuilder m1016super = Cgoto.m1016super("Failed to close timed out socket ");
                m1016super.append(this.f2587class);
                logger.log(level, m1016super.toString(), (Throwable) e);
                return;
            }
            throw e;
        } catch (Exception e2) {
            Logger logger2 = bl0.f357do;
            Level level2 = Level.WARNING;
            StringBuilder m1016super2 = Cgoto.m1016super("Failed to close timed out socket ");
            m1016super2.append(this.f2587class);
            logger2.log(level2, m1016super2.toString(), (Throwable) e2);
        }
    }
}
