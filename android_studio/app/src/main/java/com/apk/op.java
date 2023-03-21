package com.apk;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: StreamGifDecoder.java */
/* loaded from: classes8.dex */
public class op implements oj<InputStream, hp> {

    /* renamed from: do  reason: not valid java name */
    public final List<ImageHeaderParser> f3484do;

    /* renamed from: for  reason: not valid java name */
    public final nl f3485for;

    /* renamed from: if  reason: not valid java name */
    public final oj<ByteBuffer, hp> f3486if;

    public op(List<ImageHeaderParser> list, oj<ByteBuffer, hp> ojVar, nl nlVar) {
        this.f3484do = list;
        this.f3486if = ojVar;
        this.f3485for = nlVar;
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull InputStream inputStream, @NonNull mj mjVar) throws IOException {
        return !((Boolean) mjVar.m1724for(np.f3286if)).booleanValue() && ij.getType(this.f3484do, inputStream, this.f3485for) == ImageHeaderParser.ImageType.GIF;
    }

    @Override // com.apk.oj
    /* renamed from: if */
    public gl<hp> mo259if(@NonNull InputStream inputStream, int i, int i2, @NonNull mj mjVar) throws IOException {
        byte[] bArr;
        InputStream inputStream2 = inputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr2 = new byte[16384];
            while (true) {
                int read = inputStream2.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            byteArrayOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            bArr = null;
        }
        if (bArr == null) {
            return null;
        }
        return this.f3486if.mo259if(ByteBuffer.wrap(bArr), i, i2, mjVar);
    }
}
