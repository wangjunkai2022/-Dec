package com.bytedance.pangle.util.a;

import com.bytedance.pangle.util.e;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static String f11384a = "";

    public static String[] a(File file) {
        String str;
        ByteBuffer b;
        boolean z;
        String str2 = "";
        try {
            b = b(file);
        } catch (Exception unused) {
            str = "";
        }
        if (b.order() == ByteOrder.LITTLE_ENDIAN) {
            ByteBuffer a2 = a(b, b.capacity() - 24);
            int i = 0;
            while (a2.hasRemaining()) {
                i++;
                if (a2.remaining() >= 8) {
                    long j = a2.getLong();
                    if (j >= 4 && j <= 2147483647L) {
                        int i2 = (int) j;
                        int position = a2.position() + i2;
                        if (i2 <= a2.remaining()) {
                            int i3 = a2.getInt();
                            if (i3 == -262969152) {
                                f11384a = "V3";
                            } else if (i3 == 1896449818) {
                                f11384a = "V2";
                            } else {
                                a2.position(position);
                            }
                            z = true;
                            break;
                        }
                        throw new Exception("APK Signing Block entry #" + i + " size out of range: " + i2 + ", available: " + a2.remaining());
                    }
                    throw new Exception("APK Signing Block entry #" + i + " size out of range: " + j);
                }
                throw new Exception("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i)));
            }
            z = false;
            if (z) {
                str2 = e.a(b.array());
                str = "";
            } else {
                str = "without v2 & v3 signature.";
            }
            return new String[]{str2, f11384a, str};
        }
        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004b A[Catch: all -> 0x018e, TryCatch #1 {all -> 0x018e, blocks: (B:4:0x0008, B:12:0x0024, B:14:0x003a, B:19:0x004b, B:21:0x005d, B:25:0x0075, B:27:0x00a8, B:29:0x00b5, B:33:0x00c9, B:35:0x00d3, B:37:0x00f6, B:40:0x0106, B:41:0x0121, B:42:0x0122, B:43:0x0131, B:44:0x0132, B:45:0x0141, B:46:0x0142, B:47:0x0149, B:48:0x014a, B:49:0x0159, B:50:0x015a, B:51:0x0161, B:52:0x0162, B:53:0x017d, B:54:0x017e, B:55:0x0185, B:56:0x0186, B:57:0x018d, B:7:0x0014, B:10:0x001b), top: B:66:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017e A[Catch: all -> 0x018e, TryCatch #1 {all -> 0x018e, blocks: (B:4:0x0008, B:12:0x0024, B:14:0x003a, B:19:0x004b, B:21:0x005d, B:25:0x0075, B:27:0x00a8, B:29:0x00b5, B:33:0x00c9, B:35:0x00d3, B:37:0x00f6, B:40:0x0106, B:41:0x0121, B:42:0x0122, B:43:0x0131, B:44:0x0132, B:45:0x0141, B:46:0x0142, B:47:0x0149, B:48:0x014a, B:49:0x0159, B:50:0x015a, B:51:0x0161, B:52:0x0162, B:53:0x017d, B:54:0x017e, B:55:0x0185, B:56:0x0186, B:57:0x018d, B:7:0x0014, B:10:0x001b), top: B:66:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.nio.ByteBuffer b(java.io.File r13) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.util.a.b.b(java.io.File):java.nio.ByteBuffer");
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
}
