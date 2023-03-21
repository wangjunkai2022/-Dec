package com.bytedance.pangle.util.a;

import android.util.Pair;
import com.google.android.flexbox.FlexboxHelper;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.ZipFile;
/* loaded from: classes8.dex */
public final class c {
    public static Pair<ByteBuffer, Long> a(RandomAccessFile randomAccessFile, int i) {
        if (i >= 0 && i <= 65535) {
            long length = randomAccessFile.length();
            if (length < 22) {
                return null;
            }
            ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, length - 22)) + 22);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            long capacity = length - allocate.capacity();
            randomAccessFile.seek(capacity);
            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
            int b = b(allocate);
            if (b == -1) {
                return null;
            }
            allocate.position(b);
            ByteBuffer slice = allocate.slice();
            slice.order(ByteOrder.LITTLE_ENDIAN);
            return Pair.create(slice, Long.valueOf(capacity + b));
        }
        throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i)));
    }

    public static int b(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int capacity = byteBuffer.capacity();
        if (capacity < 22) {
            return -1;
        }
        int i = capacity - 22;
        int min = Math.min(i, 65535);
        for (int i2 = 0; i2 <= min; i2++) {
            int i3 = i - i2;
            if (byteBuffer.getInt(i3) == 101010256 && (byteBuffer.getShort(i3 + 20) & 65535) == i2) {
                return i3;
            }
        }
        return -1;
    }

    public static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static long a(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & FlexboxHelper.MEASURE_SPEC_WIDTH_MASK;
    }

    public static void a(ZipFile zipFile) {
        if (zipFile == null) {
            return;
        }
        try {
            zipFile.close();
        } catch (Throwable unused) {
        }
    }
}
