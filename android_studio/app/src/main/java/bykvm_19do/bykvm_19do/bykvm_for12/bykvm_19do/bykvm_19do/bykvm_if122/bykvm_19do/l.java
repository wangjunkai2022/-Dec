package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import com.apk.Cgoto;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Okio.java */
/* loaded from: classes8.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f10692a = Logger.getLogger(l.class.getName());

    /* compiled from: Okio.java */
    /* loaded from: classes8.dex */
    public static class b implements s {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ t f10694a;
        public final /* synthetic */ InputStream b;

        public b(t tVar, InputStream inputStream) {
            this.f10694a = tVar;
            this.b = inputStream;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public long a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i >= 0) {
                if (i == 0) {
                    return 0L;
                }
                try {
                    this.f10694a.e();
                    o b = cVar.b(1);
                    int read = this.b.read(b.f10697a, b.c, (int) Math.min(j, 8192 - b.c));
                    if (read == -1) {
                        return -1L;
                    }
                    b.c += read;
                    long j2 = read;
                    cVar.b += j2;
                    return j2;
                } catch (AssertionError e) {
                    if (l.a(e)) {
                        throw new IOException(e);
                    }
                    throw e;
                } catch (Throwable th) {
                    throw new IOException(th.getMessage());
                }
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j));
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public t b() {
            return this.f10694a;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.b.close();
        }

        public String toString() {
            StringBuilder m1016super = Cgoto.m1016super("source(");
            m1016super.append(this.b);
            m1016super.append(")");
            return m1016super.toString();
        }
    }

    /* compiled from: Okio.java */
    /* loaded from: classes8.dex */
    public static class c extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a {
        public final /* synthetic */ Socket k;

        public c(Socket socket) {
            this.k = socket;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a
        public IOException b(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a
        public void i() {
            try {
                this.k.close();
            } catch (AssertionError e) {
                if (l.a(e)) {
                    Logger logger = l.f10692a;
                    Level level = Level.WARNING;
                    StringBuilder m1016super = Cgoto.m1016super("Failed to close timed out socket ");
                    m1016super.append(this.k);
                    logger.log(level, m1016super.toString(), (Throwable) e);
                    return;
                }
                throw e;
            } catch (Exception e2) {
                Logger logger2 = l.f10692a;
                Level level2 = Level.WARNING;
                StringBuilder m1016super2 = Cgoto.m1016super("Failed to close timed out socket ");
                m1016super2.append(this.k);
                logger2.log(level2, m1016super2.toString(), (Throwable) e2);
            }
        }
    }

    public static e a(s sVar) {
        return new n(sVar);
    }

    public static s b(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getInputStream() != null) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a c2 = c(socket);
                return c2.a(a(socket.getInputStream(), c2));
            }
            throw new IOException("socket's input stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    public static bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a c(Socket socket) {
        return new c(socket);
    }

    public static d a(r rVar) {
        return new m(rVar);
    }

    public static r a(OutputStream outputStream, t tVar) {
        if (outputStream != null) {
            if (tVar != null) {
                return new a(tVar, outputStream);
            }
            throw new IllegalArgumentException("timeout == null");
        }
        throw new IllegalArgumentException("out == null");
    }

    public static r a(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getOutputStream() != null) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a c2 = c(socket);
                return c2.a(a(socket.getOutputStream(), c2));
            }
            throw new IOException("socket's output stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    /* compiled from: Okio.java */
    /* loaded from: classes8.dex */
    public static class a implements r {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ t f10693a;
        public final /* synthetic */ OutputStream b;

        public a(t tVar, OutputStream outputStream) {
            this.f10693a = tVar;
            this.b = outputStream;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public void b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            try {
                u.a(cVar.b, 0L, j);
                while (j > 0) {
                    this.f10693a.e();
                    o oVar = cVar.f10686a;
                    int min = (int) Math.min(j, oVar.c - oVar.b);
                    this.b.write(oVar.f10697a, oVar.b, min);
                    int i = oVar.b + min;
                    oVar.b = i;
                    long j2 = min;
                    j -= j2;
                    cVar.b -= j2;
                    if (i == oVar.c) {
                        cVar.f10686a = oVar.b();
                        p.a(oVar);
                    }
                }
            } catch (IOException e) {
                throw e;
            } catch (Exception unused) {
                throw new IOException("Okio write error");
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.b.close();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Flushable
        public void flush() throws IOException {
            this.b.flush();
        }

        public String toString() {
            StringBuilder m1016super = Cgoto.m1016super("sink(");
            m1016super.append(this.b);
            m1016super.append(")");
            return m1016super.toString();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public t b() {
            return this.f10693a;
        }
    }

    public static s a(InputStream inputStream) {
        return a(inputStream, new t());
    }

    public static s a(InputStream inputStream, t tVar) {
        if (inputStream != null) {
            if (tVar != null) {
                return new b(tVar, inputStream);
            }
            throw new IllegalArgumentException("timeout == null");
        }
        throw new IllegalArgumentException("in == null");
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
