package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import com.apk.Cgoto;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* compiled from: InflaterSource.java */
/* loaded from: classes8.dex */
public final class k implements s {

    /* renamed from: a  reason: collision with root package name */
    public final e f10691a;
    public final Inflater b;
    public int c;
    public boolean d;

    public k(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater != null) {
            this.f10691a = eVar;
            this.b = inflater;
            return;
        }
        throw new IllegalArgumentException("inflater == null");
    }

    private void i() throws IOException {
        int i = this.c;
        if (i == 0) {
            return;
        }
        int remaining = i - this.b.getRemaining();
        this.c -= remaining;
        this.f10691a.skip(remaining);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
    public long a(c cVar, long j) throws IOException {
        o b;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (this.d) {
                throw new IllegalStateException("closed");
            }
            if (i == 0) {
                return 0L;
            }
            while (true) {
                boolean h = h();
                try {
                    b = cVar.b(1);
                    int inflate = this.b.inflate(b.f10697a, b.c, (int) Math.min(j, 8192 - b.c));
                    if (inflate > 0) {
                        b.c += inflate;
                        long j2 = inflate;
                        cVar.b += j2;
                        return j2;
                    } else if (this.b.finished() || this.b.needsDictionary()) {
                        break;
                    } else if (h) {
                        throw new EOFException("source exhausted prematurely");
                    }
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            }
            i();
            if (b.b == b.c) {
                cVar.f10686a = b.b();
                p.a(b);
                return -1L;
            }
            return -1L;
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
    public t b() {
        return this.f10691a.b();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.d) {
            return;
        }
        this.b.end();
        this.d = true;
        this.f10691a.close();
    }

    public final boolean h() throws IOException {
        if (this.b.needsInput()) {
            i();
            if (this.b.getRemaining() == 0) {
                if (this.f10691a.f()) {
                    return true;
                }
                o oVar = this.f10691a.a().f10686a;
                int i = oVar.c;
                int i2 = oVar.b;
                int i3 = i - i2;
                this.c = i3;
                this.b.setInput(oVar.f10697a, i2, i3);
                return false;
            }
            throw new IllegalStateException("?");
        }
        return false;
    }
}
