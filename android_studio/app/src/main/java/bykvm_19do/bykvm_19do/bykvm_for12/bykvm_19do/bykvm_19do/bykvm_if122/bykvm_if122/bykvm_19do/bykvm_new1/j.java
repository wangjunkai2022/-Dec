package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: Http2Writer.java */
/* loaded from: classes8.dex */
public final class j implements Closeable {
    public static final Logger g = Logger.getLogger(e.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d f10751a;
    public final boolean b;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c c;
    public int d;
    public boolean e;
    public final d.b f;

    public j(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d dVar, boolean z) {
        this.f10751a = dVar;
        this.b = z;
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c();
        this.c = cVar;
        this.f = new d.b(cVar);
        this.d = 16384;
    }

    public synchronized void a(n nVar) throws IOException {
        if (!this.e) {
            this.d = nVar.c(this.d);
            if (nVar.b() != -1) {
                this.f.a(nVar.b());
            }
            a(0, 0, (byte) 4, (byte) 1);
            this.f10751a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void b(n nVar) throws IOException {
        if (!this.e) {
            int i = 0;
            a(0, nVar.d() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (nVar.d(i)) {
                    this.f10751a.writeShort(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.f10751a.writeInt(nVar.a(i));
                }
                i++;
            }
            this.f10751a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.e = true;
        this.f10751a.close();
    }

    public synchronized void flush() throws IOException {
        if (!this.e) {
            this.f10751a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void i() throws IOException {
        if (!this.e) {
            if (this.b) {
                if (g.isLoggable(Level.FINE)) {
                    g.fine(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(">> CONNECTION %s", e.f10741a.b()));
                }
                this.f10751a.write(e.f10741a.g());
                this.f10751a.flush();
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    public int j() {
        return this.d;
    }

    public synchronized void a(int i, int i2, List<c> list) throws IOException {
        if (!this.e) {
            this.f.a(list);
            long o = this.c.o();
            int min = (int) Math.min(this.d - 4, o);
            long j = min;
            int i3 = (o > j ? 1 : (o == j ? 0 : -1));
            a(i, min + 4, (byte) 5, i3 == 0 ? (byte) 4 : (byte) 0);
            this.f10751a.writeInt(i2 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            this.f10751a.b(this.c, j);
            if (i3 > 0) {
                b(i, o - j);
            }
        } else {
            throw new IOException("closed");
        }
    }

    private void b(int i, long j) throws IOException {
        while (j > 0) {
            int min = (int) Math.min(this.d, j);
            long j2 = min;
            j -= j2;
            a(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.f10751a.b(this.c, j2);
        }
    }

    public synchronized void a(boolean z, int i, int i2, List<c> list) throws IOException {
        if (!this.e) {
            a(z, i, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i, b bVar) throws IOException {
        if (!this.e) {
            if (bVar.f10736a != -1) {
                a(i, 4, (byte) 3, (byte) 0);
                this.f10751a.writeInt(bVar.f10736a);
                this.f10751a.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(boolean z, int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, int i2) throws IOException {
        if (!this.e) {
            a(i, z ? (byte) 1 : (byte) 0, cVar, i2);
        } else {
            throw new IOException("closed");
        }
    }

    public void a(int i, byte b, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, int i2) throws IOException {
        a(i, i2, (byte) 0, b);
        if (i2 > 0) {
            this.f10751a.b(cVar, i2);
        }
    }

    public synchronized void a(boolean z, int i, int i2) throws IOException {
        if (!this.e) {
            a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.f10751a.writeInt(i);
            this.f10751a.writeInt(i2);
            this.f10751a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i, b bVar, byte[] bArr) throws IOException {
        if (!this.e) {
            if (bVar.f10736a != -1) {
                a(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.f10751a.writeInt(i);
                this.f10751a.writeInt(bVar.f10736a);
                if (bArr.length > 0) {
                    this.f10751a.write(bArr);
                }
                this.f10751a.flush();
            } else {
                e.a("errorCode.httpCode == -1", new Object[0]);
                throw null;
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i, long j) throws IOException {
        if (this.e) {
            throw new IOException("closed");
        }
        if (j != 0 && j <= 2147483647L) {
            a(i, 4, (byte) 8, (byte) 0);
            this.f10751a.writeInt((int) j);
            this.f10751a.flush();
        } else {
            e.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            throw null;
        }
    }

    public void a(int i, int i2, byte b, byte b2) throws IOException {
        if (g.isLoggable(Level.FINE)) {
            g.fine(e.a(false, i, i2, b, b2));
        }
        int i3 = this.d;
        if (i2 > i3) {
            e.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
            throw null;
        } else if ((Integer.MIN_VALUE & i) != 0) {
            e.a("reserved bit set: %s", Integer.valueOf(i));
            throw null;
        } else {
            a(this.f10751a, i2);
            this.f10751a.writeByte(b & ExifInterface.MARKER);
            this.f10751a.writeByte(b2 & ExifInterface.MARKER);
            this.f10751a.writeInt(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        }
    }

    public static void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d dVar, int i) throws IOException {
        dVar.writeByte((i >>> 16) & 255);
        dVar.writeByte((i >>> 8) & 255);
        dVar.writeByte(i & 255);
    }

    public void a(boolean z, int i, List<c> list) throws IOException {
        if (!this.e) {
            this.f.a(list);
            long o = this.c.o();
            int min = (int) Math.min(this.d, o);
            long j = min;
            int i2 = (o > j ? 1 : (o == j ? 0 : -1));
            byte b = i2 == 0 ? (byte) 4 : (byte) 0;
            if (z) {
                b = (byte) (b | 1);
            }
            a(i, min, (byte) 1, b);
            this.f10751a.b(this.c, j);
            if (i2 > 0) {
                b(i, o - j);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
