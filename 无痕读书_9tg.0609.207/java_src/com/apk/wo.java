package com.apk;

import androidx.annotation.NonNull;
import com.apk.vj;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: ByteBufferRewinder.java */
/* loaded from: classes8.dex */
public class wo implements vj<ByteBuffer> {

    /* renamed from: do  reason: not valid java name */
    public final ByteBuffer f5358do;

    /* compiled from: ByteBufferRewinder.java */
    /* renamed from: com.apk.wo$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements vj.Cdo<ByteBuffer> {
        @Override // com.apk.vj.Cdo
        @NonNull
        /* renamed from: do */
        public Class<ByteBuffer> mo196do() {
            return ByteBuffer.class;
        }

        @Override // com.apk.vj.Cdo
        @NonNull
        /* renamed from: if */
        public vj<ByteBuffer> mo197if(ByteBuffer byteBuffer) {
            return new wo(byteBuffer);
        }
    }

    public wo(ByteBuffer byteBuffer) {
        this.f5358do = byteBuffer;
    }

    @Override // com.apk.vj
    @NonNull
    /* renamed from: do */
    public ByteBuffer mo193do() throws IOException {
        this.f5358do.position(0);
        return this.f5358do;
    }

    @Override // com.apk.vj
    /* renamed from: if */
    public void mo195if() {
    }
}
