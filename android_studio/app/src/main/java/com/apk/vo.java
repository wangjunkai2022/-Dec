package com.apk;

import android.media.MediaDataSource;
import com.apk.uo;
import java.nio.ByteBuffer;

/* compiled from: VideoDecoder.java */
/* loaded from: classes8.dex */
public class vo extends MediaDataSource {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ByteBuffer f5182do;

    public vo(uo.Cnew cnew, ByteBuffer byteBuffer) {
        this.f5182do = byteBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // android.media.MediaDataSource
    public long getSize() {
        return this.f5182do.limit();
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) {
        if (j >= this.f5182do.limit()) {
            return -1;
        }
        this.f5182do.position((int) j);
        int min = Math.min(i2, this.f5182do.remaining());
        this.f5182do.get(bArr, i, min);
        return min;
    }
}
