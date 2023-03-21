package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.t;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: Http2Reader.java */
/* loaded from: classes8.dex */
public final class h implements Closeable {
    public static final Logger e = Logger.getLogger(e.class.getName());

    /* renamed from: a  reason: collision with root package name */
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e f10746a;
    public final a b;
    public final boolean c;
    public final d.a d;

    /* compiled from: Http2Reader.java */
    /* loaded from: classes8.dex */
    public static final class a implements s {

        /* renamed from: a  reason: collision with root package name */
        public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e f10747a;
        public int b;
        public byte c;
        public int d;
        public int e;
        public short f;

        public a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar) {
            this.f10747a = eVar;
        }

        private void h() throws IOException {
            int i = this.d;
            int a2 = h.a(this.f10747a);
            this.e = a2;
            this.b = a2;
            byte readByte = (byte) (this.f10747a.readByte() & ExifInterface.MARKER);
            this.c = (byte) (this.f10747a.readByte() & ExifInterface.MARKER);
            if (h.e.isLoggable(Level.FINE)) {
                h.e.fine(e.a(true, this.d, this.b, readByte, this.c));
            }
            int readInt = this.f10747a.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            this.d = readInt;
            if (readByte != 9) {
                e.b("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
                throw null;
            } else if (readInt == i) {
            } else {
                e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
                throw null;
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public long a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c cVar, long j) throws IOException {
            while (true) {
                int i = this.e;
                if (i == 0) {
                    this.f10747a.skip(this.f);
                    this.f = (short) 0;
                    if ((this.c & 4) != 0) {
                        return -1L;
                    }
                    h();
                } else {
                    long a2 = this.f10747a.a(cVar, Math.min(j, i));
                    if (a2 == -1) {
                        return -1L;
                    }
                    this.e = (int) (this.e - a2);
                    return a2;
                }
            }
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
        public t b() {
            return this.f10747a.b();
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }

    /* compiled from: Http2Reader.java */
    /* loaded from: classes8.dex */
    public interface b {
        void a();

        void a(int i, int i2, int i3, boolean z);

        void a(int i, int i2, List<c> list) throws IOException;

        void a(int i, long j);

        void a(int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar);

        void a(int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f fVar);

        void a(boolean z, int i, int i2);

        void a(boolean z, int i, int i2, List<c> list);

        void a(boolean z, int i, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar, int i2) throws IOException;

        void a(boolean z, n nVar);
    }

    public h(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar, boolean z) {
        this.f10746a = eVar;
        this.c = z;
        a aVar = new a(eVar);
        this.b = aVar;
        this.d = new d.a(4096, aVar);
    }

    private void b(b bVar, int i, byte b2, int i2) throws IOException {
        if (i < 8) {
            e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 == 0) {
            int readInt = this.f10746a.readInt();
            int readInt2 = this.f10746a.readInt();
            int i3 = i - 8;
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b a2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.a(readInt2);
            if (a2 == null) {
                e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
                throw null;
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f fVar = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f.e;
            if (i3 > 0) {
                fVar = this.f10746a.b(i3);
            }
            bVar.a(readInt, a2, fVar);
        } else {
            e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
            throw null;
        }
    }

    private void c(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 != 0) {
            boolean z = (b2 & 1) != 0;
            short readByte = (b2 & 8) != 0 ? (short) (this.f10746a.readByte() & ExifInterface.MARKER) : (short) 0;
            if ((b2 & 32) != 0) {
                a(bVar, i2);
                i -= 5;
            }
            bVar.a(z, i2, -1, a(a(i, b2, readByte), readByte, b2, i2));
            return;
        }
        e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        throw null;
    }

    private void d(b bVar, int i, byte b2, int i2) throws IOException {
        if (i != 8) {
            e.b("TYPE_PING length != 8: %s", Integer.valueOf(i));
            throw null;
        } else if (i2 == 0) {
            bVar.a((b2 & 1) != 0, this.f10746a.readInt(), this.f10746a.readInt());
        } else {
            e.b("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
    }

    private void e(b bVar, int i, byte b2, int i2) throws IOException {
        if (i != 5) {
            e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
            throw null;
        } else if (i2 != 0) {
            a(bVar, i2);
        } else {
            e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
            throw null;
        }
    }

    private void f(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 != 0) {
            short readByte = (b2 & 8) != 0 ? (short) (this.f10746a.readByte() & ExifInterface.MARKER) : (short) 0;
            bVar.a(i2, this.f10746a.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, a(a(i - 4, b2, readByte), readByte, b2, i2));
            return;
        }
        e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        throw null;
    }

    private void g(b bVar, int i, byte b2, int i2) throws IOException {
        if (i != 4) {
            e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
            throw null;
        } else if (i2 != 0) {
            int readInt = this.f10746a.readInt();
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b a2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1.b.a(readInt);
            if (a2 != null) {
                bVar.a(i2, a2);
            } else {
                e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
                throw null;
            }
        } else {
            e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
    }

    private void h(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 != 0) {
            e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        } else if ((b2 & 1) != 0) {
            if (i == 0) {
                bVar.a();
            } else {
                e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
        } else if (i % 6 != 0) {
            e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            throw null;
        } else {
            n nVar = new n();
            for (int i3 = 0; i3 < i; i3 += 6) {
                short readShort = this.f10746a.readShort();
                int readInt = this.f10746a.readInt();
                if (readShort != 2) {
                    if (readShort == 3) {
                        readShort = 4;
                    } else if (readShort == 4) {
                        readShort = 7;
                        if (readInt < 0) {
                            e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                            throw null;
                        }
                    } else if (readShort == 5 && (readInt < 16384 || readInt > 16777215)) {
                        e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                        throw null;
                    }
                } else if (readInt != 0 && readInt != 1) {
                    e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                    throw null;
                }
                nVar.a(readShort, readInt);
            }
            bVar.a(false, nVar);
        }
    }

    private void i(b bVar, int i, byte b2, int i2) throws IOException {
        if (i != 4) {
            e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            throw null;
        }
        long readInt = this.f10746a.readInt() & 2147483647L;
        if (readInt != 0) {
            bVar.a(i2, readInt);
        } else {
            e.b("windowSizeIncrement was 0", Long.valueOf(readInt));
            throw null;
        }
    }

    public void a(b bVar) throws IOException {
        if (this.c) {
            if (a(true, bVar)) {
                return;
            }
            e.b("Required SETTINGS preface not received", new Object[0]);
            throw null;
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.f b2 = this.f10746a.b(e.f10741a.e());
        if (e.isLoggable(Level.FINE)) {
            e.fine(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a("<< CONNECTION %s", b2.b()));
        }
        if (e.f10741a.equals(b2)) {
            return;
        }
        e.b("Expected a connection header but was %s", b2.h());
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10746a.close();
    }

    public boolean a(boolean z, b bVar) throws IOException {
        try {
            this.f10746a.a(9L);
            int a2 = a(this.f10746a);
            if (a2 < 0 || a2 > 16384) {
                e.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(a2));
                throw null;
            }
            byte readByte = (byte) (this.f10746a.readByte() & ExifInterface.MARKER);
            if (z && readByte != 4) {
                e.b("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
                throw null;
            }
            byte readByte2 = (byte) (this.f10746a.readByte() & ExifInterface.MARKER);
            int readInt = this.f10746a.readInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            if (e.isLoggable(Level.FINE)) {
                e.fine(e.a(true, readInt, a2, readByte, readByte2));
            }
            switch (readByte) {
                case 0:
                    a(bVar, a2, readByte2, readInt);
                    break;
                case 1:
                    c(bVar, a2, readByte2, readInt);
                    break;
                case 2:
                    e(bVar, a2, readByte2, readInt);
                    break;
                case 3:
                    g(bVar, a2, readByte2, readInt);
                    break;
                case 4:
                    h(bVar, a2, readByte2, readInt);
                    break;
                case 5:
                    f(bVar, a2, readByte2, readInt);
                    break;
                case 6:
                    d(bVar, a2, readByte2, readInt);
                    break;
                case 7:
                    b(bVar, a2, readByte2, readInt);
                    break;
                case 8:
                    i(bVar, a2, readByte2, readInt);
                    break;
                default:
                    this.f10746a.skip(a2);
                    break;
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private List<c> a(int i, short s, byte b2, int i2) throws IOException {
        a aVar = this.b;
        aVar.e = i;
        aVar.b = i;
        aVar.f = s;
        aVar.c = b2;
        aVar.d = i2;
        this.d.c();
        return this.d.a();
    }

    private void a(b bVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
            throw null;
        }
        boolean z = (b2 & 1) != 0;
        if (!((b2 & 32) != 0)) {
            short readByte = (b2 & 8) != 0 ? (short) (this.f10746a.readByte() & ExifInterface.MARKER) : (short) 0;
            bVar.a(z, i2, this.f10746a, a(i, b2, readByte));
            this.f10746a.skip(readByte);
            return;
        }
        e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        throw null;
    }

    private void a(b bVar, int i) throws IOException {
        int readInt = this.f10746a.readInt();
        bVar.a(i, readInt & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, (this.f10746a.readByte() & ExifInterface.MARKER) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    public static int a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e eVar) throws IOException {
        return (eVar.readByte() & ExifInterface.MARKER) | ((eVar.readByte() & ExifInterface.MARKER) << 16) | ((eVar.readByte() & ExifInterface.MARKER) << 8);
    }

    public static int a(int i, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        e.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        throw null;
    }
}
