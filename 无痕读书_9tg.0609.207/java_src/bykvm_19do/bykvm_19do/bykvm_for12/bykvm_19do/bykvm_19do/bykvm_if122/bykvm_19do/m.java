package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import com.apk.Cgoto;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: RealBufferedSink.java */
/* loaded from: classes8.dex */
public final class m implements d {

    /* renamed from: a  reason: collision with root package name */
    public final c f10695a = new c();
    public final r b;
    public boolean c;

    public m(r rVar) {
        if (rVar != null) {
            this.b = rVar;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c a() {
        return this.f10695a;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
    public void b(c cVar, long j) throws IOException {
        if (!this.c) {
            this.f10695a.b(cVar, j);
            h();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.c) {
            return;
        }
        try {
            if (this.f10695a.b > 0) {
                this.b.b(this.f10695a, this.f10695a.b);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.b.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.c = true;
        if (th == null) {
            return;
        }
        u.a(th);
        throw null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public d e(long j) throws IOException {
        if (!this.c) {
            this.f10695a.e(j);
            return h();
        }
        throw new IllegalStateException("closed");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Flushable
    public void flush() throws IOException {
        if (!this.c) {
            c cVar = this.f10695a;
            long j = cVar.b;
            if (j > 0) {
                this.b.b(cVar, j);
            }
            this.b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public d h() throws IOException {
        if (!this.c) {
            long k = this.f10695a.k();
            if (k > 0) {
                this.b.b(this.f10695a, k);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.c;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("buffer(");
        m1016super.append(this.b);
        m1016super.append(")");
        return m1016super.toString();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public d write(byte[] bArr) throws IOException {
        if (!this.c) {
            this.f10695a.write(bArr);
            return h();
        }
        throw new IllegalStateException("closed");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public d writeByte(int i) throws IOException {
        if (!this.c) {
            this.f10695a.writeByte(i);
            return h();
        }
        throw new IllegalStateException("closed");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public d writeInt(int i) throws IOException {
        if (!this.c) {
            this.f10695a.writeInt(i);
            return h();
        }
        throw new IllegalStateException("closed");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public d writeShort(int i) throws IOException {
        if (!this.c) {
            this.f10695a.writeShort(i);
            return h();
        }
        throw new IllegalStateException("closed");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public d a(String str) throws IOException {
        if (!this.c) {
            this.f10695a.a(str);
            return h();
        }
        throw new IllegalStateException("closed");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
    public t b() {
        return this.b.b();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public d write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.c) {
            this.f10695a.write(bArr, i, i2);
            return h();
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.c) {
            int write = this.f10695a.write(byteBuffer);
            h();
            return write;
        }
        throw new IllegalStateException("closed");
    }
}
