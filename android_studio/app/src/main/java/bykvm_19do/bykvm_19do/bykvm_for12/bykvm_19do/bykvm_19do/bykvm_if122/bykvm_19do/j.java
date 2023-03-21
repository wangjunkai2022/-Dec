package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import com.apk.Cgoto;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* compiled from: GzipSource.java */
/* loaded from: classes8.dex */
public final class j implements s {
    public final e b;
    public final Inflater c;
    public final k d;

    /* renamed from: a  reason: collision with root package name */
    public int f10690a = 0;
    public final CRC32 e = new CRC32();

    public j(s sVar) {
        if (sVar != null) {
            this.c = new Inflater(true);
            e a2 = l.a(sVar);
            this.b = a2;
            this.d = new k(a2, this.c);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    private void h() throws IOException {
        this.b.a(10L);
        byte f = this.b.a().f(3L);
        boolean z = ((f >> 1) & 1) == 1;
        if (z) {
            a(this.b.a(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.b.readShort());
        this.b.skip(8L);
        if (((f >> 2) & 1) == 1) {
            this.b.a(2L);
            if (z) {
                a(this.b.a(), 0L, 2L);
            }
            long c = this.b.a().c();
            this.b.a(c);
            if (z) {
                a(this.b.a(), 0L, c);
            }
            this.b.skip(c);
        }
        if (((f >> 3) & 1) == 1) {
            long a2 = this.b.a((byte) 0);
            if (a2 != -1) {
                if (z) {
                    a(this.b.a(), 0L, a2 + 1);
                }
                this.b.skip(a2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((f >> 4) & 1) == 1) {
            long a3 = this.b.a((byte) 0);
            if (a3 != -1) {
                if (z) {
                    a(this.b.a(), 0L, a3 + 1);
                }
                this.b.skip(a3 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            a("FHCRC", this.b.c(), (short) this.e.getValue());
            this.e.reset();
        }
    }

    private void i() throws IOException {
        a("CRC", this.b.e(), (int) this.e.getValue());
        a("ISIZE", this.b.e(), (int) this.c.getBytesWritten());
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
    public long a(c cVar, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (i == 0) {
                return 0L;
            }
            if (this.f10690a == 0) {
                h();
                this.f10690a = 1;
            }
            if (this.f10690a == 1) {
                long j2 = cVar.b;
                long a2 = this.d.a(cVar, j);
                if (a2 != -1) {
                    a(cVar, j2, a2);
                    return a2;
                }
                this.f10690a = 2;
            }
            if (this.f10690a == 2) {
                i();
                this.f10690a = 3;
                if (!this.b.f()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
    public t b() {
        return this.b.b();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.d.close();
    }

    private void a(c cVar, long j, long j2) {
        int i;
        o oVar = cVar.f10686a;
        while (true) {
            long j3 = oVar.c - oVar.b;
            if (j < j3) {
                break;
            }
            j -= j3;
            oVar = oVar.f;
        }
        while (j2 > 0) {
            int min = (int) Math.min(oVar.c - i, j2);
            this.e.update(oVar.f10697a, (int) (oVar.b + j), min);
            j2 -= min;
            oVar = oVar.f;
            j = 0;
        }
    }

    private void a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }
}
