package com.bytedance.pangle.d;

import com.apk.Cgoto;
import com.bytedance.pangle.util.f;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public final class c implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final FileInputStream f11305a;
    public a b;
    public b[] c;
    public C0114c[] d;
    public final Map<String, C0114c> e = new HashMap();

    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f11306a;
        public final short b;
        public final short c;
        public final int d;
        public final long e;
        public final long f;
        public final long g;
        public final int h;
        public final short i;
        public final short j;
        public final short k;
        public final short l;
        public final short m;
        public final short n;

        public /* synthetic */ a(FileChannel fileChannel, byte b) {
            this(fileChannel);
        }

        public a(FileChannel fileChannel) {
            this.f11306a = new byte[16];
            fileChannel.position(0L);
            fileChannel.read(ByteBuffer.wrap(this.f11306a));
            byte[] bArr = this.f11306a;
            if (bArr[0] == Byte.MAX_VALUE && bArr[1] == 69 && bArr[2] == 76 && bArr[3] == 70) {
                byte b = bArr[4];
                c.a(b, 2, "bad elf class: " + ((int) this.f11306a[4]));
                byte b2 = this.f11306a[5];
                c.a(b2, 2, "bad elf data encoding: " + ((int) this.f11306a[5]));
                ByteBuffer allocate = ByteBuffer.allocate(this.f11306a[4] == 1 ? 36 : 48);
                allocate.order(this.f11306a[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
                c.b(fileChannel, allocate, "failed to read rest part of ehdr.");
                this.b = allocate.getShort();
                this.c = allocate.getShort();
                int i = allocate.getInt();
                this.d = i;
                c.a(i, 1, "bad elf version: " + this.d);
                byte b3 = this.f11306a[4];
                if (b3 == 1) {
                    this.e = allocate.getInt();
                    this.f = allocate.getInt();
                    this.g = allocate.getInt();
                } else if (b3 == 2) {
                    this.e = allocate.getLong();
                    this.f = allocate.getLong();
                    this.g = allocate.getLong();
                } else {
                    throw new IOException("Unexpected elf class: " + ((int) this.f11306a[4]));
                }
                this.h = allocate.getInt();
                this.i = allocate.getShort();
                this.j = allocate.getShort();
                this.k = allocate.getShort();
                this.l = allocate.getShort();
                this.m = allocate.getShort();
                this.n = allocate.getShort();
                return;
            }
            throw new IOException(String.format("bad elf magic: %x %x %x %x.", Byte.valueOf(this.f11306a[0]), Byte.valueOf(this.f11306a[1]), Byte.valueOf(this.f11306a[2]), Byte.valueOf(this.f11306a[3])));
        }
    }

    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f11307a;
        public final int b;
        public final long c;
        public final long d;
        public final long e;
        public final long f;
        public final long g;
        public final long h;

        public /* synthetic */ b(ByteBuffer byteBuffer, int i, byte b) {
            this(byteBuffer, i);
        }

        public b(ByteBuffer byteBuffer, int i) {
            if (i == 1) {
                this.f11307a = byteBuffer.getInt();
                this.c = byteBuffer.getInt();
                this.d = byteBuffer.getInt();
                this.e = byteBuffer.getInt();
                this.f = byteBuffer.getInt();
                this.g = byteBuffer.getInt();
                this.b = byteBuffer.getInt();
                this.h = byteBuffer.getInt();
            } else if (i == 2) {
                this.f11307a = byteBuffer.getInt();
                this.b = byteBuffer.getInt();
                this.c = byteBuffer.getLong();
                this.d = byteBuffer.getLong();
                this.e = byteBuffer.getLong();
                this.f = byteBuffer.getLong();
                this.g = byteBuffer.getLong();
                this.h = byteBuffer.getLong();
            } else {
                throw new IOException("Unexpected elf class: ".concat(String.valueOf(i)));
            }
        }
    }

    /* renamed from: com.bytedance.pangle.d.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class C0114c {

        /* renamed from: a  reason: collision with root package name */
        public final int f11308a;
        public final int b;
        public final long c;
        public final long d;
        public final long e;
        public final long f;
        public final int g;
        public final int h;
        public final long i;
        public final long j;
        public String k;

        public /* synthetic */ C0114c(ByteBuffer byteBuffer, int i, byte b) {
            this(byteBuffer, i);
        }

        public C0114c(ByteBuffer byteBuffer, int i) {
            if (i == 1) {
                this.f11308a = byteBuffer.getInt();
                this.b = byteBuffer.getInt();
                this.c = byteBuffer.getInt();
                this.d = byteBuffer.getInt();
                this.e = byteBuffer.getInt();
                this.f = byteBuffer.getInt();
                this.g = byteBuffer.getInt();
                this.h = byteBuffer.getInt();
                this.i = byteBuffer.getInt();
                this.j = byteBuffer.getInt();
            } else if (i == 2) {
                this.f11308a = byteBuffer.getInt();
                this.b = byteBuffer.getInt();
                this.c = byteBuffer.getLong();
                this.d = byteBuffer.getLong();
                this.e = byteBuffer.getLong();
                this.f = byteBuffer.getLong();
                this.g = byteBuffer.getInt();
                this.h = byteBuffer.getInt();
                this.i = byteBuffer.getLong();
                this.j = byteBuffer.getLong();
            } else {
                throw new IOException("Unexpected elf class: ".concat(String.valueOf(i)));
            }
            this.k = null;
        }
    }

    public c(File file) {
        C0114c[] c0114cArr;
        C0114c[] c0114cArr2;
        this.b = null;
        this.c = null;
        this.d = null;
        FileInputStream fileInputStream = new FileInputStream(file);
        this.f11305a = fileInputStream;
        FileChannel channel = fileInputStream.getChannel();
        this.b = new a(channel, (byte) 0);
        ByteBuffer allocate = ByteBuffer.allocate(128);
        allocate.limit(this.b.j);
        allocate.order(this.b.f11306a[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
        channel.position(this.b.f);
        this.c = new b[this.b.k];
        for (int i = 0; i < this.c.length; i++) {
            b(channel, allocate, "failed to read phdr.");
            this.c[i] = new b(allocate, this.b.f11306a[4], (byte) 0);
        }
        channel.position(this.b.g);
        allocate.limit(this.b.l);
        this.d = new C0114c[this.b.m];
        int i2 = 0;
        while (true) {
            c0114cArr = this.d;
            if (i2 >= c0114cArr.length) {
                break;
            }
            b(channel, allocate, "failed to read shdr.");
            this.d[i2] = new C0114c(allocate, this.b.f11306a[4], (byte) 0);
            i2++;
        }
        short s = this.b.n;
        if (s > 0) {
            C0114c c0114c = c0114cArr[s];
            ByteBuffer allocate2 = ByteBuffer.allocate((int) c0114c.f);
            this.f11305a.getChannel().position(c0114c.e);
            b(this.f11305a.getChannel(), allocate2, "failed to read section: " + c0114c.k);
            for (C0114c c0114c2 : this.d) {
                allocate2.position(c0114c2.f11308a);
                String a2 = a(allocate2);
                c0114c2.k = a2;
                this.e.put(a2, c0114c2);
            }
        }
    }

    public static void b(FileChannel fileChannel, ByteBuffer byteBuffer, String str) {
        byteBuffer.rewind();
        int read = fileChannel.read(byteBuffer);
        if (read == byteBuffer.limit()) {
            byteBuffer.flip();
            return;
        }
        StringBuilder m1025while = Cgoto.m1025while(str, " Rest bytes insufficient, expect to read ");
        m1025while.append(byteBuffer.limit());
        m1025while.append(" bytes but only ");
        m1025while.append(read);
        m1025while.append(" bytes were read.");
        throw new IOException(m1025while.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11305a.close();
        this.e.clear();
        this.c = null;
        this.d = null;
    }

    public static boolean a(File file) {
        try {
            f.a(new c(file));
            return true;
        } catch (IOException unused) {
            f.a((Closeable) null);
            return false;
        } catch (Throwable th) {
            f.a((Closeable) null);
            throw th;
        }
    }

    public static String a(ByteBuffer byteBuffer) {
        byte[] array = byteBuffer.array();
        int position = byteBuffer.position();
        while (byteBuffer.hasRemaining() && array[byteBuffer.position()] != 0) {
            byteBuffer.position(byteBuffer.position() + 1);
        }
        byteBuffer.position(byteBuffer.position() + 1);
        return new String(array, position, (byteBuffer.position() - position) - 1, Charset.forName("ASCII"));
    }

    public static /* synthetic */ void a(int i, int i2, String str) {
        if (i <= 0 || i > i2) {
            throw new IOException(str);
        }
    }
}
