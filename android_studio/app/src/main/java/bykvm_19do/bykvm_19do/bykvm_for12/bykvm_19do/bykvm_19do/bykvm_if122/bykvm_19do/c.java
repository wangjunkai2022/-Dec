package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* compiled from: Buffer.java */
/* loaded from: classes8.dex */
public final class c implements e, d, Cloneable, ByteChannel {
    public static final byte[] c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a  reason: collision with root package name */
    public o f10686a;
    public long b;

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c a() {
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public f b(long j) throws EOFException {
        return new f(d(j));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public short c() {
        return u.a(readShort());
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public String d() throws EOFException {
        return c(RecyclerView.FOREVER_NS);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            long j = this.b;
            if (j != cVar.b) {
                return false;
            }
            long j2 = 0;
            if (j == 0) {
                return true;
            }
            o oVar = this.f10686a;
            o oVar2 = cVar.f10686a;
            int i = oVar.b;
            int i2 = oVar2.b;
            while (j2 < this.b) {
                long min = Math.min(oVar.c - i, oVar2.c - i2);
                int i3 = 0;
                while (i3 < min) {
                    int i4 = i + 1;
                    int i5 = i2 + 1;
                    if (oVar.f10697a[i] != oVar2.f10697a[i2]) {
                        return false;
                    }
                    i3++;
                    i = i4;
                    i2 = i5;
                }
                if (i == oVar.c) {
                    oVar = oVar.f;
                    i = oVar.b;
                }
                if (i2 == oVar2.c) {
                    oVar2 = oVar2.f;
                    i2 = oVar2.b;
                }
                j2 += min;
            }
            return true;
        }
        return false;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public boolean f() {
        return this.b == 0;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r, java.io.Flushable
    public void flush() {
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009c A[EDGE_INSN: B:42:0x009c->B:38:0x009c ?: BREAK  , SYNTHETIC] */
    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long g() {
        /*
            r15 = this;
            long r0 = r15.b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La3
            r0 = 0
            r1 = 0
            r4 = r2
        Lb:
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.o r6 = r15.f10686a
            byte[] r7 = r6.f10697a
            int r8 = r6.b
            int r9 = r6.c
        L13:
            if (r8 >= r9) goto L88
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L39
        L22:
            r11 = 97
            if (r10 < r11) goto L2d
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2d
            int r11 = r10 + (-97)
            goto L37
        L2d:
            r11 = 65
            if (r10 < r11) goto L6d
            r11 = 70
            if (r10 > r11) goto L6d
            int r11 = r10 + (-65)
        L37:
            int r11 = r11 + 10
        L39:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L49
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L49:
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c r0 = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c
            r0.<init>()
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c r0 = r0.e(r4)
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Number too large: "
            java.lang.StringBuilder r2 = com.apk.Cgoto.m1016super(r2)
            java.lang.String r0 = r0.n()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L6d:
            if (r0 == 0) goto L71
            r1 = 1
            goto L88
        L71:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.StringBuilder r1 = com.apk.Cgoto.m1016super(r1)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L88:
            if (r8 != r9) goto L94
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.o r7 = r6.b()
            r15.f10686a = r7
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.p.a(r6)
            goto L96
        L94:
            r6.b = r8
        L96:
            if (r1 != 0) goto L9c
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.o r6 = r15.f10686a
            if (r6 != 0) goto Lb
        L9c:
            long r1 = r15.b
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.b = r1
            return r4
        La3:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c.g():long");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c h() {
        return this;
    }

    public int hashCode() {
        o oVar = this.f10686a;
        if (oVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = oVar.c;
            for (int i3 = oVar.b; i3 < i2; i3++) {
                i = (i * 31) + oVar.f10697a[i3];
            }
            oVar = oVar.f;
        } while (oVar != this.f10686a);
        return i;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final void j() {
        try {
            skip(this.b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final long k() {
        long j = this.b;
        if (j == 0) {
            return 0L;
        }
        o oVar = this.f10686a.g;
        int i = oVar.c;
        return (i >= 8192 || !oVar.e) ? j : j - (i - oVar.b);
    }

    public byte[] l() throws EOFException {
        try {
            return d(this.b);
        } catch (EOFException e) {
            throw e;
        }
    }

    public f m() throws EOFException {
        return new f(l());
    }

    public String n() {
        try {
            return a(this.b, u.f10700a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final long o() {
        return this.b;
    }

    public final f p() {
        long j = this.b;
        if (j <= 2147483647L) {
            return a((int) j);
        }
        StringBuilder m1016super = Cgoto.m1016super("size > Integer.MAX_VALUE: ");
        m1016super.append(this.b);
        throw new IllegalArgumentException(m1016super.toString());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        o oVar = this.f10686a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), oVar.c - oVar.b);
        byteBuffer.put(oVar.f10697a, oVar.b, min);
        int i = oVar.b + min;
        oVar.b = i;
        this.b -= min;
        if (i == oVar.c) {
            this.f10686a = oVar.b();
            p.a(oVar);
        }
        return min;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public byte readByte() {
        long j = this.b;
        if (j != 0) {
            o oVar = this.f10686a;
            int i = oVar.b;
            int i2 = oVar.c;
            int i3 = i + 1;
            byte b = oVar.f10697a[i];
            this.b = j - 1;
            if (i3 == i2) {
                this.f10686a = oVar.b();
                p.a(oVar);
            } else {
                oVar.b = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int a2 = a(bArr, i, bArr.length - i);
            if (a2 == -1) {
                throw new EOFException();
            }
            i += a2;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public int readInt() {
        long j = this.b;
        if (j >= 4) {
            o oVar = this.f10686a;
            int i = oVar.b;
            int i2 = oVar.c;
            if (i2 - i < 4) {
                return ((readByte() & ExifInterface.MARKER) << 24) | ((readByte() & ExifInterface.MARKER) << 16) | ((readByte() & ExifInterface.MARKER) << 8) | (readByte() & ExifInterface.MARKER);
            }
            byte[] bArr = oVar.f10697a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & ExifInterface.MARKER) << 24) | ((bArr[i3] & ExifInterface.MARKER) << 16);
            int i6 = i4 + 1;
            int i7 = i5 | ((bArr[i4] & ExifInterface.MARKER) << 8);
            int i8 = i6 + 1;
            int i9 = i7 | (bArr[i6] & ExifInterface.MARKER);
            this.b = j - 4;
            if (i8 == i2) {
                this.f10686a = oVar.b();
                p.a(oVar);
            } else {
                oVar.b = i8;
            }
            return i9;
        }
        StringBuilder m1016super = Cgoto.m1016super("size < 4: ");
        m1016super.append(this.b);
        throw new IllegalStateException(m1016super.toString());
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public short readShort() {
        long j = this.b;
        if (j >= 2) {
            o oVar = this.f10686a;
            int i = oVar.b;
            int i2 = oVar.c;
            if (i2 - i < 2) {
                return (short) (((readByte() & ExifInterface.MARKER) << 8) | (readByte() & ExifInterface.MARKER));
            }
            byte[] bArr = oVar.f10697a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & ExifInterface.MARKER) << 8) | (bArr[i3] & ExifInterface.MARKER);
            this.b = j - 2;
            if (i4 == i2) {
                this.f10686a = oVar.b();
                p.a(oVar);
            } else {
                oVar.b = i4;
            }
            return (short) i5;
        }
        StringBuilder m1016super = Cgoto.m1016super("size < 2: ");
        m1016super.append(this.b);
        throw new IllegalStateException(m1016super.toString());
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public void skip(long j) throws EOFException {
        o oVar;
        while (j > 0 && (oVar = this.f10686a) != null) {
            int min = (int) Math.min(j, oVar.c - oVar.b);
            long j2 = min;
            this.b -= j2;
            j -= j2;
            o oVar2 = this.f10686a;
            int i = oVar2.b + min;
            oVar2.b = i;
            if (i == oVar2.c) {
                this.f10686a = oVar2.b();
                p.a(oVar2);
            }
        }
    }

    public String toString() {
        return p().toString();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public void a(long j) throws EOFException {
        if (this.b < j) {
            throw new EOFException();
        }
    }

    public o b(int i) {
        if (i >= 1 && i <= 8192) {
            o oVar = this.f10686a;
            if (oVar == null) {
                o a2 = p.a();
                this.f10686a = a2;
                a2.g = a2;
                a2.f = a2;
                return a2;
            }
            o oVar2 = oVar.g;
            return (oVar2.c + i > 8192 || !oVar2.e) ? oVar2.a(p.a()) : oVar2;
        }
        throw new IllegalArgumentException();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public String c(long j) throws EOFException {
        if (j >= 0) {
            long j2 = RecyclerView.FOREVER_NS;
            if (j != RecyclerView.FOREVER_NS) {
                j2 = j + 1;
            }
            long a2 = a((byte) 10, 0L, j2);
            if (a2 != -1) {
                return h(a2);
            }
            if (j2 < o() && f(j2 - 1) == 13 && f(j2) == 10) {
                return h(j2);
            }
            c cVar = new c();
            a(cVar, 0L, Math.min(32L, o()));
            StringBuilder m1016super = Cgoto.m1016super("\\n not found: limit=");
            m1016super.append(Math.min(o(), j));
            m1016super.append(" content=");
            m1016super.append(cVar.m().b());
            m1016super.append((char) 8230);
            throw new EOFException(m1016super.toString());
        }
        throw new IllegalArgumentException(Cgoto.m1000for("limit < 0: ", j));
    }

    /* renamed from: clone */
    public c m7clone() {
        c cVar = new c();
        if (this.b == 0) {
            return cVar;
        }
        o c2 = this.f10686a.c();
        cVar.f10686a = c2;
        c2.g = c2;
        c2.f = c2;
        for (o oVar = this.f10686a.f; oVar != this.f10686a; oVar = oVar.f) {
            cVar.f10686a.g.a(oVar.c());
        }
        cVar.b = this.b;
        return cVar;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public byte[] d(long j) throws EOFException {
        u.a(this.b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount > Integer.MAX_VALUE: ", j));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public int e() {
        return u.a(readInt());
    }

    public final byte f(long j) {
        u.a(this.b, j, 1L);
        long j2 = this.b;
        if (j2 - j > j) {
            o oVar = this.f10686a;
            while (true) {
                int i = oVar.c;
                int i2 = oVar.b;
                long j3 = i - i2;
                if (j < j3) {
                    return oVar.f10697a[i2 + ((int) j)];
                }
                j -= j3;
                oVar = oVar.f;
            }
        } else {
            long j4 = j - j2;
            try {
                o oVar2 = this.f10686a.g;
                while (true) {
                    j4 += oVar2.c - oVar2.b;
                    if (j4 >= 0) {
                        return oVar2.f10697a[oVar2.b + ((int) j4)];
                    }
                    oVar2 = oVar2.g;
                }
            } catch (NullPointerException unused) {
                return (byte) 0;
            }
        }
    }

    public String h(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (f(j2) == 13) {
                String g = g(j2);
                skip(2L);
                return g;
            }
        }
        String g2 = g(j);
        skip(1L);
        return g2;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c writeByte(int i) {
        o b = b(1);
        byte[] bArr = b.f10697a;
        int i2 = b.c;
        b.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.b++;
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c writeInt(int i) {
        o b = b(4);
        byte[] bArr = b.f10697a;
        int i2 = b.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        b.c = i5 + 1;
        this.b += 4;
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c writeShort(int i) {
        o b = b(2);
        byte[] bArr = b.f10697a;
        int i2 = b.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        b.c = i3 + 1;
        this.b += 2;
        return this;
    }

    public final c a(c cVar, long j, long j2) {
        if (cVar != null) {
            u.a(this.b, j, j2);
            if (j2 == 0) {
                return this;
            }
            cVar.b += j2;
            o oVar = this.f10686a;
            while (true) {
                long j3 = oVar.c - oVar.b;
                if (j < j3) {
                    break;
                }
                j -= j3;
                oVar = oVar.f;
            }
            while (j2 > 0) {
                o c2 = oVar.c();
                int i = (int) (c2.b + j);
                c2.b = i;
                c2.c = Math.min(i + ((int) j2), c2.c);
                o oVar2 = cVar.f10686a;
                if (oVar2 == null) {
                    c2.g = c2;
                    c2.f = c2;
                    cVar.f10686a = c2;
                } else {
                    oVar2.g.a(c2);
                }
                j2 -= c2.c - c2.b;
                oVar = oVar.f;
                j = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c e(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        o b = b(numberOfTrailingZeros);
        byte[] bArr = b.f10697a;
        int i = b.c;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = c[(int) (15 & j)];
            j >>>= 4;
        }
        b.c += numberOfTrailingZeros;
        this.b += numberOfTrailingZeros;
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c write(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            u.a(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                o b = b(1);
                int min = Math.min(i3 - i, 8192 - b.c);
                System.arraycopy(bArr, i, b.f10697a, b.c, min);
                i += min;
                b.c += min;
            }
            this.b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.r
    public void b(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar != this) {
            u.a(cVar.b, 0L, j);
            while (j > 0) {
                o oVar = cVar.f10686a;
                if (j < oVar.c - oVar.b) {
                    o oVar2 = this.f10686a;
                    o oVar3 = oVar2 != null ? oVar2.g : null;
                    if (oVar3 != null && oVar3.e) {
                        if ((oVar3.c + j) - (oVar3.d ? 0 : oVar3.b) <= 8192) {
                            cVar.f10686a.a(oVar3, (int) j);
                            cVar.b -= j;
                            this.b += j;
                            return;
                        }
                    }
                    cVar.f10686a = cVar.f10686a.a((int) j);
                }
                o oVar4 = cVar.f10686a;
                long j2 = oVar4.c - oVar4.b;
                cVar.f10686a = oVar4.b();
                o oVar5 = this.f10686a;
                if (oVar5 == null) {
                    this.f10686a = oVar4;
                    oVar4.g = oVar4;
                    oVar4.f = oVar4;
                } else {
                    oVar5.g.a(oVar4).a();
                }
                cVar.b -= j2;
                this.b += j2;
                j -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    public c c(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i >= 55296 && i <= 57343) {
                writeByte(63);
            } else {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            }
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        } else {
            StringBuilder m1016super = Cgoto.m1016super("Unexpected code point: ");
            m1016super.append(Integer.toHexString(i));
            throw new IllegalArgumentException(m1016super.toString());
        }
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                o b = b(1);
                int min = Math.min(i, 8192 - b.c);
                byteBuffer.get(b.f10697a, b.c, min);
                i -= min;
                b.c += min;
            }
            this.b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public String a(Charset charset) {
        try {
            return a(this.b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public String g(long j) throws EOFException {
        return a(j, u.f10700a);
    }

    public String a(long j, Charset charset) throws EOFException {
        u.a(this.b, 0L, j);
        if (charset != null) {
            if (j <= 2147483647L) {
                if (j == 0) {
                    return "";
                }
                o oVar = this.f10686a;
                int i = oVar.b;
                if (i + j > oVar.c) {
                    return new String(d(j), charset);
                }
                String str = new String(oVar.f10697a, i, (int) j, charset);
                int i2 = (int) (oVar.b + j);
                oVar.b = i2;
                this.b -= j;
                if (i2 == oVar.c) {
                    this.f10686a = oVar.b();
                    p.a(oVar);
                }
                return str;
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount > Integer.MAX_VALUE: ", j));
        }
        throw new IllegalArgumentException("charset == null");
    }

    public int a(byte[] bArr, int i, int i2) {
        u.a(bArr.length, i, i2);
        o oVar = this.f10686a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(i2, oVar.c - oVar.b);
        System.arraycopy(oVar.f10697a, oVar.b, bArr, i, min);
        int i3 = oVar.b + min;
        oVar.b = i3;
        this.b -= min;
        if (i3 == oVar.c) {
            this.f10686a = oVar.b();
            p.a(oVar);
        }
        return min;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
    public t b() {
        return t.d;
    }

    public c a(f fVar) {
        if (fVar != null) {
            fVar.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d
    public c a(String str) {
        return a(str, 0, str.length());
    }

    public c a(String str, int i, int i2) {
        char charAt;
        if (str != null) {
            if (i >= 0) {
                if (i2 >= i) {
                    if (i2 > str.length()) {
                        StringBuilder m1020throw = Cgoto.m1020throw("endIndex > string.length: ", i2, " > ");
                        m1020throw.append(str.length());
                        throw new IllegalArgumentException(m1020throw.toString());
                    }
                    while (i < i2) {
                        char charAt2 = str.charAt(i);
                        if (charAt2 < 128) {
                            o b = b(1);
                            byte[] bArr = b.f10697a;
                            int i3 = b.c - i;
                            int min = Math.min(i2, 8192 - i3);
                            int i4 = i + 1;
                            bArr[i + i3] = (byte) charAt2;
                            while (true) {
                                i = i4;
                                if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                    break;
                                }
                                i4 = i + 1;
                                bArr[i + i3] = (byte) charAt;
                            }
                            int i5 = b.c;
                            int i6 = (i3 + i) - i5;
                            b.c = i5 + i6;
                            this.b += i6;
                        } else {
                            if (charAt2 < 2048) {
                                writeByte((charAt2 >> 6) | 192);
                                writeByte((charAt2 & '?') | 128);
                            } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                                int i7 = i + 1;
                                char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                                if (charAt2 <= 56319 && charAt3 >= 56320 && charAt3 <= 57343) {
                                    int i8 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                    writeByte((i8 >> 18) | 240);
                                    writeByte(((i8 >> 12) & 63) | 128);
                                    writeByte(((i8 >> 6) & 63) | 128);
                                    writeByte((i8 & 63) | 128);
                                    i += 2;
                                } else {
                                    writeByte(63);
                                    i = i7;
                                }
                            } else {
                                writeByte((charAt2 >> '\f') | 224);
                                writeByte(((charAt2 >> 6) & 63) | 128);
                                writeByte((charAt2 & '?') | 128);
                            }
                            i++;
                        }
                    }
                    return this;
                }
                throw new IllegalArgumentException(Cgoto.m1018synchronized("endIndex < beginIndex: ", i2, " < ", i));
            }
            throw new IllegalArgumentException(Cgoto.m1003implements("beginIndex < 0: ", i));
        }
        throw new IllegalArgumentException("string == null");
    }

    public c a(String str, int i, int i2, Charset charset) {
        if (str != null) {
            if (i >= 0) {
                if (i2 >= i) {
                    if (i2 > str.length()) {
                        StringBuilder m1020throw = Cgoto.m1020throw("endIndex > string.length: ", i2, " > ");
                        m1020throw.append(str.length());
                        throw new IllegalArgumentException(m1020throw.toString());
                    } else if (charset != null) {
                        if (charset.equals(u.f10700a)) {
                            return a(str, i, i2);
                        }
                        byte[] bytes = str.substring(i, i2).getBytes(charset);
                        return write(bytes, 0, bytes.length);
                    } else {
                        throw new IllegalArgumentException("charset == null");
                    }
                }
                throw new IllegalArgumentException(Cgoto.m1018synchronized("endIndex < beginIndex: ", i2, " < ", i));
            }
            throw new IllegalAccessError(Cgoto.m1003implements("beginIndex < 0: ", i));
        }
        throw new IllegalArgumentException("string == null");
    }

    public long a(s sVar) throws IOException {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long a2 = sVar.a(this, 8192L);
            if (a2 == -1) {
                return j;
            }
            j += a2;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.s
    public long a(c cVar, long j) {
        if (cVar != null) {
            if (j >= 0) {
                long j2 = this.b;
                if (j2 == 0) {
                    return -1L;
                }
                if (j > j2) {
                    j = j2;
                }
                cVar.b(this, j);
                return j;
            }
            throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j));
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public long a(byte b) {
        return a(b, 0L, RecyclerView.FOREVER_NS);
    }

    public long a(byte b, long j, long j2) {
        o oVar;
        long j3 = 0;
        if (j >= 0 && j2 >= j) {
            long j4 = this.b;
            if (j2 <= j4) {
                j4 = j2;
            }
            if (j == j4 || (oVar = this.f10686a) == null) {
                return -1L;
            }
            long j5 = this.b;
            if (j5 - j < j) {
                while (j5 > j) {
                    oVar = oVar.g;
                    j5 -= oVar.c - oVar.b;
                }
            } else {
                while (true) {
                    long j6 = (oVar.c - oVar.b) + j3;
                    if (j6 >= j) {
                        break;
                    }
                    oVar = oVar.f;
                    j3 = j6;
                }
                j5 = j3;
            }
            long j7 = j;
            while (j5 < j4) {
                byte[] bArr = oVar.f10697a;
                int min = (int) Math.min(oVar.c, (oVar.b + j4) - j5);
                for (int i = (int) ((oVar.b + j7) - j5); i < min; i++) {
                    if (bArr[i] == b) {
                        return (i - oVar.b) + j5;
                    }
                }
                j5 += oVar.c - oVar.b;
                oVar = oVar.f;
                j7 = j5;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.b), Long.valueOf(j), Long.valueOf(j2)));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.e
    public boolean a(long j, f fVar) {
        return a(j, fVar, 0, fVar.e());
    }

    public boolean a(long j, f fVar, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.b - j < i2 || fVar.e() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (f(i3 + j) != fVar.a(i + i3)) {
                return false;
            }
        }
        return true;
    }

    public final f a(int i) {
        if (i == 0) {
            return f.e;
        }
        return new q(this, i);
    }
}
