package com.bytedance.pangle.f;

import android.util.ArrayMap;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import androidx.core.view.InputDeviceCompat;
import com.apk.Cgoto;
import com.google.android.flexbox.FlexboxHelper;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.litepal.util.cipher.AESCrypt;
/* loaded from: classes8.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final HashMap<String, SparseArray<m>> f11326a = new HashMap<>();

    /* loaded from: classes8.dex */
    public static class a implements j {

        /* renamed from: a  reason: collision with root package name */
        public final MessageDigest[] f11327a;

        public a(MessageDigest[] messageDigestArr) {
            this.f11327a = messageDigestArr;
        }

        @Override // com.bytedance.pangle.f.j
        public final void a(ByteBuffer byteBuffer) {
            MessageDigest[] messageDigestArr;
            ByteBuffer slice = byteBuffer.slice();
            for (MessageDigest messageDigest : this.f11327a) {
                slice.position(0);
                messageDigest.update(slice);
            }
        }
    }

    @RequiresApi(api = 21)
    public static void a(Map<Integer, byte[]> map, RandomAccessFile randomAccessFile, m mVar) {
        if (!map.isEmpty()) {
            ArrayMap arrayMap = new ArrayMap();
            boolean z = true;
            if (map.containsKey(1)) {
                arrayMap.put(1, map.get(1));
            }
            if (map.containsKey(2)) {
                arrayMap.put(2, map.get(2));
            }
            boolean z2 = false;
            if (!arrayMap.isEmpty()) {
                try {
                    a(arrayMap, randomAccessFile.getFD(), mVar);
                    z = false;
                } catch (IOException e) {
                    throw new SecurityException("Cannot get FD", e);
                }
            }
            if (map.containsKey(3)) {
                try {
                    if (!Arrays.equals(a(map.get(3), randomAccessFile.length(), mVar), g.a(randomAccessFile, mVar, new i() { // from class: com.bytedance.pangle.f.f.1
                        @Override // com.bytedance.pangle.f.i
                        public final ByteBuffer a(int i) {
                            return ByteBuffer.allocate(i);
                        }
                    }).b)) {
                        throw new SecurityException("APK verity digest of contents did not verify");
                    }
                } catch (IOException | DigestException | NoSuchAlgorithmException e2) {
                    throw new SecurityException("Error during verification", e2);
                }
            } else {
                z2 = z;
            }
            if (z2) {
                throw new SecurityException("No known digest exists for integrity check");
            }
            return;
        }
        throw new SecurityException("No digests provided");
    }

    public static String b(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return AESCrypt.HASH_ALGORITHM;
                }
                throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i)));
            }
            return "SHA-512";
        }
        return AESCrypt.HASH_ALGORITHM;
    }

    public static String c(int i) {
        if (i == 513 || i == 514) {
            return "EC";
        }
        if (i != 769) {
            if (i != 1057) {
                if (i != 1059) {
                    if (i != 1061) {
                        switch (i) {
                            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                            case 258:
                            case 259:
                            case 260:
                                return "RSA";
                            default:
                                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i & (-1)));
                        }
                    }
                    return "DSA";
                }
                return "EC";
            }
            return "RSA";
        }
        return "DSA";
    }

    public static Pair<String, ? extends AlgorithmParameterSpec> d(int i) {
        if (i != 513) {
            if (i != 514) {
                if (i != 769) {
                    if (i != 1057) {
                        if (i != 1059) {
                            if (i != 1061) {
                                switch (i) {
                                    case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                                        return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec(AESCrypt.HASH_ALGORITHM, "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                                    case 258:
                                        return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                                    case 259:
                                        break;
                                    case 260:
                                        return Pair.create("SHA512withRSA", null);
                                    default:
                                        throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i & (-1)));
                                }
                            }
                        }
                    }
                    return Pair.create("SHA256withRSA", null);
                }
                return Pair.create("SHA256withDSA", null);
            }
            return Pair.create("SHA512withECDSA", null);
        }
        return Pair.create("SHA256withECDSA", null);
    }

    public static int e(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return 32;
                }
                throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i)));
            }
            return 64;
        }
        return 32;
    }

    public static ByteBuffer b(ByteBuffer byteBuffer, int i) {
        if (i >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i2 = i + position;
            if (i2 >= position && i2 <= limit) {
                byteBuffer.limit(i2);
                try {
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    byteBuffer.position(i2);
                    return slice;
                } finally {
                    byteBuffer.limit(limit);
                }
            }
            throw new BufferUnderflowException();
        }
        throw new IllegalArgumentException("size: ".concat(String.valueOf(i)));
    }

    public static byte[] b(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i];
                byteBuffer.get(bArr);
                return bArr;
            }
            throw new IOException("Underflow while reading length-prefixed value. Length: " + i + ", available: " + byteBuffer.remaining());
        }
        throw new IOException("Negative length");
    }

    public static void a(Map<Integer, byte[]> map, FileDescriptor fileDescriptor, m mVar) {
        l lVar = new l(fileDescriptor, 0L, mVar.b);
        long j = mVar.c;
        l lVar2 = new l(fileDescriptor, j, mVar.d - j);
        ByteBuffer duplicate = mVar.e.duplicate();
        duplicate.order(ByteOrder.LITTLE_ENDIAN);
        long j2 = mVar.b;
        s.a(duplicate);
        int position = duplicate.position() + 16;
        if (j2 >= 0 && j2 <= FlexboxHelper.MEASURE_SPEC_WIDTH_MASK) {
            duplicate.putInt(duplicate.position() + position, (int) j2);
            h hVar = new h(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] a2 = a(iArr, new k[]{lVar, lVar2, hVar});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), a2[i2])) {
                        throw new SecurityException(b(i3) + " digest of contents did not verify");
                    }
                }
                return;
            } catch (DigestException e) {
                throw new SecurityException("Failed to compute digest(s) of contents", e);
            }
        }
        throw new IllegalArgumentException("uint32 value of out range: ".concat(String.valueOf(j2)));
    }

    public static byte[][] a(int[] iArr, k[] kVarArr) {
        int i;
        long j;
        String str;
        MessageDigest messageDigest;
        long j2 = 0;
        int i2 = 0;
        long j3 = 0;
        while (true) {
            i = 3;
            j = DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
            if (i2 >= 3) {
                break;
            }
            j3 += ((kVarArr[i2].a() + DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL) - 1) / DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
            i2++;
        }
        if (j3 < 2097151) {
            int i3 = (int) j3;
            byte[][] bArr = new byte[iArr.length];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                byte[] bArr2 = new byte[(e(iArr[i4]) * i3) + 5];
                bArr2[0] = 90;
                a(i3, bArr2);
                bArr[i4] = bArr2;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            int length = iArr.length;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            int i5 = 0;
            while (true) {
                str = " digest not supported";
                if (i5 >= iArr.length) {
                    break;
                }
                String b = b(iArr[i5]);
                try {
                    messageDigestArr[i5] = MessageDigest.getInstance(b);
                    i5++;
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(Cgoto.m989case(b, " digest not supported"), e);
                }
            }
            a aVar = new a(messageDigestArr);
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (i6 < i) {
                k kVar = kVarArr[i6];
                int i9 = i6;
                int i10 = i8;
                String str2 = str;
                long j4 = j;
                long a2 = kVar.a();
                long j5 = j2;
                while (a2 > j2) {
                    int min = (int) Math.min(a2, j4);
                    a(min, bArr3);
                    for (int i11 = 0; i11 < length; i11++) {
                        messageDigestArr[i11].update(bArr3);
                    }
                    try {
                        kVar.a(aVar, j5, min);
                        int i12 = 0;
                        while (i12 < iArr.length) {
                            int i13 = iArr[i12];
                            byte[] bArr4 = bArr[i12];
                            int e2 = e(i13);
                            int i14 = length;
                            byte[] bArr5 = bArr3;
                            int digest = messageDigestArr[i12].digest(bArr4, (i10 * e2) + 5, e2);
                            if (digest != e2) {
                                throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + digest);
                            }
                            i12++;
                            length = i14;
                            bArr3 = bArr5;
                        }
                        long j6 = min;
                        j5 += j6;
                        a2 -= j6;
                        i10++;
                        j2 = 0;
                        j4 = DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
                    } catch (IOException e3) {
                        throw new DigestException("Failed to digest chunk #" + i10 + " of section #" + i7, e3);
                    }
                }
                i8 = i10;
                i7++;
                i6 = i9 + 1;
                j2 = 0;
                i = 3;
                j = DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
                str = str2;
            }
            String str3 = str;
            byte[][] bArr6 = new byte[iArr.length];
            for (int i15 = 0; i15 < iArr.length; i15++) {
                int i16 = iArr[i15];
                byte[] bArr7 = bArr[i15];
                String b2 = b(i16);
                try {
                    bArr6[i15] = MessageDigest.getInstance(b2).digest(bArr7);
                } catch (NoSuchAlgorithmException e4) {
                    throw new RuntimeException(Cgoto.m989case(b2, str3), e4);
                }
            }
            return bArr6;
        }
        throw new DigestException("Too many chunks: ".concat(String.valueOf(j3)));
    }

    public static byte[] a(byte[] bArr, long j, m mVar) {
        if (bArr.length == 40) {
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            order.position(32);
            if (order.getLong() == j - (mVar.c - mVar.b)) {
                return Arrays.copyOfRange(bArr, 0, 32);
            }
            throw new SecurityException("APK content size did not verify");
        }
        throw new SecurityException("Verity digest size is wrong: " + bArr.length);
    }

    public static int a(int i, int i2) {
        int a2 = a(i);
        int a3 = a(i2);
        if (a2 == 1) {
            if (a3 != 1) {
                if (a3 == 2 || a3 == 3) {
                    return -1;
                }
                throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a3)));
            }
            return 0;
        } else if (a2 == 2) {
            if (a3 != 1) {
                if (a3 == 2) {
                    return 0;
                }
                if (a3 != 3) {
                    throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a3)));
                }
            }
            return 1;
        } else if (a2 == 3) {
            if (a3 != 1) {
                if (a3 != 2) {
                    if (a3 == 3) {
                        return 0;
                    }
                    throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a3)));
                }
                return -1;
            }
            return 1;
        } else {
            throw new IllegalArgumentException("Unknown digestAlgorithm1: ".concat(String.valueOf(a2)));
        }
    }

    public static int a(int i) {
        if (i != 513) {
            if (i != 514) {
                if (i != 769) {
                    if (i == 1057 || i == 1059 || i == 1061) {
                        return 3;
                    }
                    switch (i) {
                        case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                        case 259:
                            return 1;
                        case 258:
                        case 260:
                            return 2;
                        default:
                            throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i & (-1)));
                    }
                }
                return 1;
            }
            return 2;
        }
        return 1;
    }

    public static ByteBuffer a(ByteBuffer byteBuffer, int i) {
        if (i >= 8) {
            int capacity = byteBuffer.capacity();
            if (i <= byteBuffer.capacity()) {
                int limit = byteBuffer.limit();
                int position = byteBuffer.position();
                try {
                    byteBuffer.position(0);
                    byteBuffer.limit(i);
                    byteBuffer.position(8);
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    return slice;
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(limit);
                    byteBuffer.position(position);
                }
            }
            throw new IllegalArgumentException("end > capacity: " + i + " > " + capacity);
        }
        throw new IllegalArgumentException("end < start: " + i + " < 8");
    }

    public static ByteBuffer a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i >= 0) {
                if (i <= byteBuffer.remaining()) {
                    return b(byteBuffer, i);
                }
                throw new IOException("Length-prefixed field longer than remaining buffer. Field length: " + i + ", remaining: " + byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Negative length");
        }
        throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
    }

    public static void a(int i, byte[] bArr) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) ((i >>> 24) & 255);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0237  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.lang.String r23, java.io.RandomAccessFile r24, int... r25) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.f.f.a(java.lang.String, java.io.RandomAccessFile, int[]):void");
    }
}
