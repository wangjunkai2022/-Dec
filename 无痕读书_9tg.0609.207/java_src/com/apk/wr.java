package com.apk;

import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: ByteBufferUtil.java */
/* loaded from: classes8.dex */
public final class wr {

    /* renamed from: do  reason: not valid java name */
    public static final AtomicReference<byte[]> f5381do = new AtomicReference<>();

    /* compiled from: ByteBufferUtil.java */
    /* renamed from: com.apk.wr$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif {

        /* renamed from: do  reason: not valid java name */
        public final int f5384do;

        /* renamed from: for  reason: not valid java name */
        public final byte[] f5385for;

        /* renamed from: if  reason: not valid java name */
        public final int f5386if;

        public Cif(@NonNull byte[] bArr, int i, int i2) {
            this.f5385for = bArr;
            this.f5384do = i;
            this.f5386if = i2;
        }
    }

    @NonNull
    /* renamed from: do  reason: not valid java name */
    public static ByteBuffer m2938do(@NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length <= 2147483647L) {
                if (length != 0) {
                    randomAccessFile = new RandomAccessFile(file, "r");
                    try {
                        fileChannel = randomAccessFile.getChannel();
                        MappedByteBuffer load = fileChannel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                        try {
                            fileChannel.close();
                        } catch (IOException unused) {
                        }
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused2) {
                        }
                        return load;
                    } catch (Throwable th) {
                        th = th;
                        if (fileChannel != null) {
                            try {
                                fileChannel.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused4) {
                            }
                        }
                        throw th;
                    }
                }
                throw new IOException("File unsuitable for memory mapping");
            }
            throw new IOException("File too large to map into memory");
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    @NonNull
    /* renamed from: for  reason: not valid java name */
    public static byte[] m2939for(@NonNull ByteBuffer byteBuffer) {
        Cif cif = (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) ? null : new Cif(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        if (cif != null && cif.f5384do == 0 && cif.f5386if == cif.f5385for.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        asReadOnlyBuffer.position(0);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    @NonNull
    /* renamed from: if  reason: not valid java name */
    public static ByteBuffer m2940if(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f5381do.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(andSet);
            if (read >= 0) {
                byteArrayOutputStream.write(andSet, 0, read);
            } else {
                f5381do.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static void m2941new(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        byteBuffer.position(0);
        FileChannel fileChannel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
                fileChannel.write(byteBuffer);
                fileChannel.force(false);
                fileChannel.close();
                randomAccessFile.close();
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    @NonNull
    /* renamed from: try  reason: not valid java name */
    public static InputStream m2942try(@NonNull ByteBuffer byteBuffer) {
        return new Cdo(byteBuffer);
    }

    /* compiled from: ByteBufferUtil.java */
    /* renamed from: com.apk.wr$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends InputStream {
        @NonNull

        /* renamed from: do  reason: not valid java name */
        public final ByteBuffer f5382do;

        /* renamed from: if  reason: not valid java name */
        public int f5383if = -1;

        public Cdo(@NonNull ByteBuffer byteBuffer) {
            this.f5382do = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f5382do.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            this.f5383if = this.f5382do.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f5382do.hasRemaining()) {
                return this.f5382do.get() & ExifInterface.MARKER;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            if (this.f5383if != -1) {
                this.f5382do.position(this.f5383if);
            } else {
                throw new IOException("Cannot reset to unset mark position");
            }
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (this.f5382do.hasRemaining()) {
                long min = Math.min(j, available());
                ByteBuffer byteBuffer = this.f5382do;
                byteBuffer.position((int) (byteBuffer.position() + min));
                return min;
            }
            return -1L;
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
            if (this.f5382do.hasRemaining()) {
                int min = Math.min(i2, available());
                this.f5382do.get(bArr, i, min);
                return min;
            }
            return -1;
        }
    }
}
