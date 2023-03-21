package com.apk;

import androidx.annotation.NonNull;
import androidx.core.view.InputDeviceCompat;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* compiled from: DefaultImageHeaderParser.java */
/* loaded from: classes8.dex */
public final class bo implements ImageHeaderParser {

    /* renamed from: do  reason: not valid java name */
    public static final byte[] f394do = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: if  reason: not valid java name */
    public static final int[] f395if = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* compiled from: DefaultImageHeaderParser.java */
    /* renamed from: com.apk.bo$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements Cfor {

        /* renamed from: do  reason: not valid java name */
        public final ByteBuffer f396do;

        public Cdo(ByteBuffer byteBuffer) {
            this.f396do = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.apk.bo.Cfor
        /* renamed from: do  reason: not valid java name */
        public int mo239do() throws Cfor.Cdo {
            return (mo240for() << 8) | mo240for();
        }

        @Override // com.apk.bo.Cfor
        /* renamed from: for  reason: not valid java name */
        public short mo240for() throws Cfor.Cdo {
            if (this.f396do.remaining() >= 1) {
                return (short) (this.f396do.get() & ExifInterface.MARKER);
            }
            throw new Cfor.Cdo();
        }

        @Override // com.apk.bo.Cfor
        /* renamed from: if  reason: not valid java name */
        public int mo241if(byte[] bArr, int i) {
            int min = Math.min(i, this.f396do.remaining());
            if (min == 0) {
                return -1;
            }
            this.f396do.get(bArr, 0, min);
            return min;
        }

        @Override // com.apk.bo.Cfor
        public long skip(long j) {
            int min = (int) Math.min(this.f396do.remaining(), j);
            ByteBuffer byteBuffer = this.f396do;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* compiled from: DefaultImageHeaderParser.java */
    /* renamed from: com.apk.bo$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cfor {

        /* compiled from: DefaultImageHeaderParser.java */
        /* renamed from: com.apk.bo$for$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public static final class Cdo extends IOException {
            public Cdo() {
                super("Unexpectedly reached end of a file");
            }
        }

        /* renamed from: do */
        int mo239do() throws IOException;

        /* renamed from: for */
        short mo240for() throws IOException;

        /* renamed from: if */
        int mo241if(byte[] bArr, int i) throws IOException;

        long skip(long j) throws IOException;
    }

    /* compiled from: DefaultImageHeaderParser.java */
    /* renamed from: com.apk.bo$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif {

        /* renamed from: do  reason: not valid java name */
        public final ByteBuffer f397do;

        public Cif(byte[] bArr, int i) {
            this.f397do = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* renamed from: do  reason: not valid java name */
        public short m242do(int i) {
            if (this.f397do.remaining() - i >= 2) {
                return this.f397do.getShort(i);
            }
            return (short) -1;
        }

        /* renamed from: if  reason: not valid java name */
        public int m243if(int i) {
            if (this.f397do.remaining() - i >= 4) {
                return this.f397do.getInt(i);
            }
            return -1;
        }
    }

    /* compiled from: DefaultImageHeaderParser.java */
    /* renamed from: com.apk.bo$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cnew implements Cfor {

        /* renamed from: do  reason: not valid java name */
        public final InputStream f398do;

        public Cnew(InputStream inputStream) {
            this.f398do = inputStream;
        }

        @Override // com.apk.bo.Cfor
        /* renamed from: do */
        public int mo239do() throws IOException {
            return (mo240for() << 8) | mo240for();
        }

        @Override // com.apk.bo.Cfor
        /* renamed from: for */
        public short mo240for() throws IOException {
            int read = this.f398do.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Cfor.Cdo();
        }

        @Override // com.apk.bo.Cfor
        /* renamed from: if */
        public int mo241if(byte[] bArr, int i) throws IOException {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i && (i3 = this.f398do.read(bArr, i2, i - i2)) != -1) {
                i2 += i3;
            }
            if (i2 == 0 && i3 == -1) {
                throw new Cfor.Cdo();
            }
            return i2;
        }

        @Override // com.apk.bo.Cfor
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.f398do.skip(j2);
                if (skip <= 0) {
                    if (this.f398do.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j2 -= skip;
            }
            return j - j2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0028 A[Catch: do -> 0x006c, LOOP:0: B:14:0x0028->B:26:0x0050, LOOP_START, TryCatch #2 {do -> 0x006c, blocks: (B:3:0x000e, B:14:0x0028, B:30:0x0056, B:32:0x0062, B:17:0x0031, B:23:0x003f, B:25:0x0049, B:31:0x005e), top: B:38:0x000e }] */
    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo237do(@androidx.annotation.NonNull java.io.InputStream r7, @androidx.annotation.NonNull com.apk.nl r8) throws java.io.IOException {
        /*
            r6 = this;
            com.apk.bo$new r0 = new com.apk.bo$new
            java.lang.String r1 = "Argument must not be null"
            com.apk.eg.m593else(r7, r1)
            r0.<init>(r7)
            com.apk.eg.m593else(r8, r1)
            r7 = -1
            int r1 = r0.mo239do()     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            r2 = 65496(0xffd8, float:9.178E-41)
            r3 = r1 & r2
            if (r3 == r2) goto L24
            r2 = 19789(0x4d4d, float:2.773E-41)
            if (r1 == r2) goto L24
            r2 = 18761(0x4949, float:2.629E-41)
            if (r1 != r2) goto L22
            goto L24
        L22:
            r1 = 0
            goto L25
        L24:
            r1 = 1
        L25:
            if (r1 != 0) goto L28
            goto L6c
        L28:
            short r1 = r0.mo240for()     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            r2 = 255(0xff, float:3.57E-43)
            if (r1 == r2) goto L31
            goto L52
        L31:
            short r1 = r0.mo240for()     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            r2 = 218(0xda, float:3.05E-43)
            if (r1 != r2) goto L3a
            goto L52
        L3a:
            r2 = 217(0xd9, float:3.04E-43)
            if (r1 != r2) goto L3f
            goto L52
        L3f:
            int r2 = r0.mo239do()     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            int r2 = r2 + (-2)
            r3 = 225(0xe1, float:3.15E-43)
            if (r1 == r3) goto L53
            long r1 = (long) r2     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            long r3 = r0.skip(r1)     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 == 0) goto L28
        L52:
            r2 = -1
        L53:
            if (r2 != r7) goto L56
            goto L6c
        L56:
            java.lang.Class<byte[]> r1 = byte[].class
            java.lang.Object r1 = r8.mo1887case(r2, r1)     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            byte[] r1 = (byte[]) r1     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            int r0 = r6.m238if(r0, r1, r2)     // Catch: java.lang.Throwable -> L67
            r8.put(r1)     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            r7 = r0
            goto L6c
        L67:
            r0 = move-exception
            r8.put(r1)     // Catch: com.apk.bo.Cfor.Cdo -> L6c
            throw r0     // Catch: com.apk.bo.Cfor.Cdo -> L6c
        L6c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.bo.mo237do(java.io.InputStream, com.apk.nl):int");
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull InputStream inputStream) throws IOException {
        eg.m593else(inputStream, "Argument must not be null");
        return getType(new Cnew(inputStream));
    }

    /* renamed from: if  reason: not valid java name */
    public final int m238if(Cfor cfor, byte[] bArr, int i) throws IOException {
        ByteOrder byteOrder;
        short m242do;
        int m243if;
        int i2;
        int i3;
        if (cfor.mo241if(bArr, i) != i) {
            return -1;
        }
        boolean z = bArr != null && i > f394do.length;
        if (z) {
            int i4 = 0;
            while (true) {
                byte[] bArr2 = f394do;
                if (i4 >= bArr2.length) {
                    break;
                } else if (bArr[i4] != bArr2[i4]) {
                    z = false;
                    break;
                } else {
                    i4++;
                }
            }
        }
        if (z) {
            Cif cif = new Cif(bArr, i);
            short m242do2 = cif.m242do(6);
            if (m242do2 == 18761) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            } else if (m242do2 != 19789) {
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.BIG_ENDIAN;
            }
            cif.f397do.order(byteOrder);
            int m243if2 = cif.m243if(10) + 6;
            short m242do3 = cif.m242do(m243if2);
            for (int i5 = 0; i5 < m242do3; i5++) {
                int i6 = (i5 * 12) + m243if2 + 2;
                if (cif.m242do(i6) == 274 && (m242do = cif.m242do(i6 + 2)) >= 1 && m242do <= 12 && (m243if = cif.m243if(i6 + 4)) >= 0 && (i2 = m243if + f395if[m242do]) <= 4 && (i3 = i6 + 8) >= 0 && i3 <= cif.f397do.remaining() && i2 >= 0 && i2 + i3 <= cif.f397do.remaining()) {
                    return cif.m242do(i3);
                }
            }
            return -1;
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType getType(@NonNull ByteBuffer byteBuffer) throws IOException {
        eg.m593else(byteBuffer, "Argument must not be null");
        return getType(new Cdo(byteBuffer));
    }

    @NonNull
    private ImageHeaderParser.ImageType getType(Cfor cfor) throws IOException {
        try {
            int mo239do = cfor.mo239do();
            if (mo239do == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int mo240for = (mo239do << 8) | cfor.mo240for();
            if (mo240for == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int mo240for2 = (mo240for << 8) | cfor.mo240for();
            if (mo240for2 == -1991225785) {
                cfor.skip(21L);
                try {
                    return cfor.mo240for() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
                } catch (Cfor.Cdo unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            } else if (mo240for2 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            } else {
                cfor.skip(4L);
                if (((cfor.mo239do() << 16) | cfor.mo239do()) != 1464156752) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int mo239do2 = (cfor.mo239do() << 16) | cfor.mo239do();
                if ((mo239do2 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int i = mo239do2 & 255;
                if (i == 88) {
                    cfor.skip(4L);
                    return (cfor.mo240for() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                } else if (i == 76) {
                    cfor.skip(4L);
                    return (cfor.mo240for() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
                } else {
                    return ImageHeaderParser.ImageType.WEBP;
                }
            }
        } catch (Cfor.Cdo unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }
}
