package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_int108;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.i;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.l;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.h;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.k;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.s;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.v;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import com.apk.Cgoto;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.baidu.tts.loopj.SimpleMultipartEntity;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* compiled from: Http1Codec.java */
/* loaded from: classes8.dex */
public final class a implements bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c {

    /* renamed from: a  reason: collision with root package name */
    public final v f10732a;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g b;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e c;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d d;
    public int e = 0;
    public long f = 262144;

    /* compiled from: Http1Codec.java */
    /* loaded from: classes8.dex */
    public final class c implements r {

        /* renamed from: a  reason: collision with root package name */
        public final i f10734a;
        public boolean b;

        public c() {
            this.f10734a = new i(a.this.d.b());
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public t b() {
            return this.f10734a;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            if (this.b) {
                return;
            }
            this.b = true;
            a.this.d.a("0\r\n\r\n");
            a.this.a(this.f10734a);
            a.this.e = 3;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.b) {
                return;
            }
            a.this.d.flush();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public void b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            if (this.b) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            a.this.d.e(j);
            a.this.d.a(SimpleMultipartEntity.STR_CR_LF);
            a.this.d.b(cVar, j);
            a.this.d.a(SimpleMultipartEntity.STR_CR_LF);
        }
    }

    /* compiled from: Http1Codec.java */
    /* loaded from: classes8.dex */
    public class d extends b {
        public final s e;
        public long f;
        public boolean g;

        public d(s sVar) {
            super();
            this.f = -1L;
            this.g = true;
            this.e = sVar;
        }

        private void h() throws IOException {
            if (this.f != -1) {
                a.this.c.d();
            }
            try {
                this.f = a.this.c.g();
                String trim = a.this.c.d().trim();
                if (this.f >= 0 && (trim.isEmpty() || trim.startsWith(";"))) {
                    if (this.f == 0) {
                        this.g = false;
                        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.e.a(a.this.f10732a.f(), this.e, a.this.e());
                        a(true, (IOException) null);
                        return;
                    }
                    return;
                }
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f + trim + "\"");
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_int108.a.b, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public long a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            if (j >= 0) {
                if (!this.b) {
                    if (this.g) {
                        long j2 = this.f;
                        if (j2 == 0 || j2 == -1) {
                            h();
                            if (!this.g) {
                                return -1L;
                            }
                        }
                        long a2 = super.a(cVar, Math.min(j, this.f));
                        if (a2 != -1) {
                            this.f -= a2;
                            return a2;
                        }
                        ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                        a(false, (IOException) protocolException);
                        throw protocolException;
                    }
                    return -1L;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j));
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            if (this.g && !bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, (IOException) null);
            }
            this.b = true;
        }
    }

    /* compiled from: Http1Codec.java */
    /* loaded from: classes8.dex */
    public final class e implements r {

        /* renamed from: a  reason: collision with root package name */
        public final i f10735a;
        public boolean b;
        public long c;

        public e(long j) {
            this.f10735a = new i(a.this.d.b());
            this.c = j;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public t b() {
            return this.f10735a;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            this.b = true;
            if (this.c <= 0) {
                a.this.a(this.f10735a);
                a.this.e = 3;
                return;
            }
            throw new ProtocolException("unexpected end of stream");
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Flushable
        public void flush() throws IOException {
            if (this.b) {
                return;
            }
            a.this.d.flush();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
        public void b(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            if (!this.b) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(cVar.o(), 0L, j);
                if (j <= this.c) {
                    a.this.d.b(cVar, j);
                    this.c -= j;
                    return;
                }
                StringBuilder m1016super = Cgoto.m1016super("expected ");
                m1016super.append(this.c);
                m1016super.append(" bytes but received ");
                m1016super.append(j);
                throw new ProtocolException(m1016super.toString());
            }
            throw new IllegalStateException("closed");
        }
    }

    /* compiled from: Http1Codec.java */
    /* loaded from: classes8.dex */
    public class f extends b {
        public long e;

        public f(a aVar, long j) throws IOException {
            super();
            this.e = j;
            if (j == 0) {
                a(true, (IOException) null);
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_int108.a.b, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public long a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            if (j >= 0) {
                if (!this.b) {
                    long j2 = this.e;
                    if (j2 == 0) {
                        return -1L;
                    }
                    long a2 = super.a(cVar, Math.min(j2, j));
                    if (a2 != -1) {
                        long j3 = this.e - a2;
                        this.e = j3;
                        if (j3 == 0) {
                            a(true, (IOException) null);
                        }
                        return a2;
                    }
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a(false, (IOException) protocolException);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j));
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            if (this.e != 0 && !bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, (IOException) null);
            }
            this.b = true;
        }
    }

    /* compiled from: Http1Codec.java */
    /* loaded from: classes8.dex */
    public class g extends b {
        public boolean e;

        public g(a aVar) {
            super();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_int108.a.b, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public long a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            if (j >= 0) {
                if (!this.b) {
                    if (this.e) {
                        return -1L;
                    }
                    long a2 = super.a(cVar, j);
                    if (a2 == -1) {
                        this.e = true;
                        a(true, (IOException) null);
                        return -1L;
                    }
                    return a2;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j));
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            if (!this.e) {
                a(false, (IOException) null);
            }
            this.b = true;
        }
    }

    public a(v vVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g gVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d dVar) {
        this.f10732a = vVar;
        this.b = gVar;
        this.c = eVar;
        this.d = dVar;
    }

    private String f() throws IOException {
        String c2 = this.c.c(this.f);
        this.f -= c2.length();
        return c2;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c
    public r a(y yVar, long j) {
        if ("chunked".equalsIgnoreCase(yVar.a("Transfer-Encoding"))) {
            return c();
        }
        if (j != -1) {
            return a(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c
    public void b() throws IOException {
        this.d.flush();
    }

    public r c() {
        if (this.e == 1) {
            this.e = 2;
            return new c();
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.e);
        throw new IllegalStateException(m1016super.toString());
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s d() throws IOException {
        if (this.e == 4) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g gVar = this.b;
            if (gVar != null) {
                this.e = 5;
                gVar.d();
                return new g(this);
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.e);
        throw new IllegalStateException(m1016super.toString());
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r e() throws IOException {
        r.a aVar = new r.a();
        while (true) {
            String f2 = f();
            if (f2.length() != 0) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(aVar, f2);
            } else {
                return aVar.a();
            }
        }
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s b(long j) throws IOException {
        if (this.e == 4) {
            this.e = 5;
            return new f(this, j);
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.e);
        throw new IllegalStateException(m1016super.toString());
    }

    /* compiled from: Http1Codec.java */
    /* loaded from: classes8.dex */
    public abstract class b implements bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s {

        /* renamed from: a  reason: collision with root package name */
        public final i f10733a;
        public boolean b;
        public long c;

        public b() {
            this.f10733a = new i(a.this.c.b());
            this.c = 0L;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public long a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            try {
                long a2 = a.this.c.a(cVar, j);
                if (a2 > 0) {
                    this.c += a2;
                }
                return a2;
            } catch (IOException e) {
                a(false, e);
                throw e;
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public t b() {
            return this.f10733a;
        }

        public final void a(boolean z, IOException iOException) throws IOException {
            a aVar = a.this;
            int i = aVar.e;
            if (i == 6) {
                return;
            }
            if (i == 5) {
                aVar.a(this.f10733a);
                a aVar2 = a.this;
                aVar2.e = 6;
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g gVar = aVar2.b;
                if (gVar != null) {
                    gVar.a(!z, aVar2, this.c, iOException);
                    return;
                }
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("state: ");
            m1016super.append(a.this.e);
            throw new IllegalStateException(m1016super.toString());
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c
    public void a(y yVar) throws IOException {
        a(yVar.c(), bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.i.a(yVar, this.b.b().a().b().type()));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c
    public b0 a(a0 a0Var) throws IOException {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122.g gVar = this.b;
        gVar.f.e(gVar.e);
        String b2 = a0Var.b(AsyncHttpClient.HEADER_CONTENT_TYPE);
        if (!bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.e.b(a0Var)) {
            return new h(b2, 0L, l.a(b(0L)));
        }
        if ("chunked".equalsIgnoreCase(a0Var.b("Transfer-Encoding"))) {
            return new h(b2, -1L, l.a(a(a0Var.s().g())));
        }
        long a2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.e.a(a0Var);
        if (a2 != -1) {
            return new h(b2, a2, l.a(b(a2)));
        }
        return new h(b2, -1L, l.a(d()));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c
    public void a() throws IOException {
        this.d.flush();
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r rVar, String str) throws IOException {
        if (this.e == 0) {
            this.d.a(str).a(SimpleMultipartEntity.STR_CR_LF);
            int b2 = rVar.b();
            for (int i = 0; i < b2; i++) {
                this.d.a(rVar.a(i)).a(": ").a(rVar.b(i)).a(SimpleMultipartEntity.STR_CR_LF);
            }
            this.d.a(SimpleMultipartEntity.STR_CR_LF);
            this.e = 1;
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.e);
        throw new IllegalStateException(m1016super.toString());
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.c
    public a0.a a(boolean z) throws IOException {
        int i = this.e;
        if (i != 1 && i != 3) {
            StringBuilder m1016super = Cgoto.m1016super("state: ");
            m1016super.append(this.e);
            throw new IllegalStateException(m1016super.toString());
        }
        try {
            k a2 = k.a(f());
            a0.a a3 = new a0.a().a(a2.f10723a).a(a2.b).a(a2.c).a(e());
            if (z && a2.b == 100) {
                return null;
            }
            this.e = 4;
            return a3;
        } catch (EOFException e2) {
            StringBuilder m1016super2 = Cgoto.m1016super("unexpected end of stream on ");
            m1016super2.append(this.b);
            IOException iOException = new IOException(m1016super2.toString());
            iOException.initCause(e2);
            throw iOException;
        }
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r a(long j) {
        if (this.e == 1) {
            this.e = 2;
            return new e(j);
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.e);
        throw new IllegalStateException(m1016super.toString());
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s a(s sVar) throws IOException {
        if (this.e == 4) {
            this.e = 5;
            return new d(sVar);
        }
        StringBuilder m1016super = Cgoto.m1016super("state: ");
        m1016super.append(this.e);
        throw new IllegalStateException(m1016super.toString());
    }

    public void a(i iVar) {
        t g2 = iVar.g();
        iVar.a(t.d);
        g2.a();
        g2.b();
    }
}
