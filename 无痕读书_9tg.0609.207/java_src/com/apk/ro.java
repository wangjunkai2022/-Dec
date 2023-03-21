package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.apk.eo;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: StreamBitmapDecoder.java */
/* loaded from: classes8.dex */
public class ro implements oj<InputStream, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final eo f4158do;

    /* renamed from: if  reason: not valid java name */
    public final nl f4159if;

    /* compiled from: StreamBitmapDecoder.java */
    /* renamed from: com.apk.ro$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements eo.Cif {

        /* renamed from: do  reason: not valid java name */
        public final oo f4160do;

        /* renamed from: if  reason: not valid java name */
        public final zr f4161if;

        public Cdo(oo ooVar, zr zrVar) {
            this.f4160do = ooVar;
            this.f4161if = zrVar;
        }

        @Override // com.apk.eo.Cif
        /* renamed from: do */
        public void mo665do(pl plVar, Bitmap bitmap) throws IOException {
            IOException iOException = this.f4161if.f6236if;
            if (iOException != null) {
                if (bitmap != null) {
                    plVar.mo868do(bitmap);
                }
                throw iOException;
            }
        }

        @Override // com.apk.eo.Cif
        /* renamed from: if */
        public void mo666if() {
            oo ooVar = this.f4160do;
            synchronized (ooVar) {
                ooVar.f3480for = ooVar.f3479do.length;
            }
        }
    }

    public ro(eo eoVar, nl nlVar) {
        this.f4158do = eoVar;
        this.f4159if = nlVar;
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull InputStream inputStream, @NonNull mj mjVar) throws IOException {
        if (this.f4158do != null) {
            return true;
        }
        throw null;
    }

    @Override // com.apk.oj
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull InputStream inputStream, int i, int i2, @NonNull mj mjVar) throws IOException {
        oo ooVar;
        boolean z;
        zr poll;
        InputStream inputStream2 = inputStream;
        if (inputStream2 instanceof oo) {
            ooVar = (oo) inputStream2;
            z = false;
        } else {
            ooVar = new oo(inputStream2, this.f4159if);
            z = true;
        }
        synchronized (zr.f6234for) {
            poll = zr.f6234for.poll();
        }
        if (poll == null) {
            poll = new zr();
        }
        poll.f6235do = ooVar;
        try {
            return this.f4158do.m664if(new es(poll), i, i2, mjVar, new Cdo(ooVar, poll));
        } finally {
            poll.m3245for();
            if (z) {
                ooVar.m1978try();
            }
        }
    }
}
