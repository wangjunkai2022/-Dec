package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* compiled from: GifDrawableTransformation.java */
/* loaded from: classes8.dex */
public class kp implements qj<hp> {

    /* renamed from: if  reason: not valid java name */
    public final qj<Bitmap> f2631if;

    public kp(qj<Bitmap> qjVar) {
        eg.m593else(qjVar, "Argument must not be null");
        this.f2631if = qjVar;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        this.f2631if.mo76do(messageDigest);
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof kp) {
            return this.f2631if.equals(((kp) obj).f2631if);
        }
        return false;
    }

    @Override // com.apk.kj
    public int hashCode() {
        return this.f2631if.hashCode();
    }

    @Override // com.apk.qj
    @NonNull
    /* renamed from: if */
    public gl<hp> mo778if(@NonNull Context context, @NonNull gl<hp> glVar, int i, int i2) {
        hp hpVar = glVar.get();
        gl<Bitmap> vnVar = new vn(hpVar.m1152if(), ii.m1220new(context).f2119if);
        gl<Bitmap> mo778if = this.f2631if.mo778if(context, vnVar, i, i2);
        if (!vnVar.equals(mo778if)) {
            vnVar.mo65do();
        }
        qj<Bitmap> qjVar = this.f2631if;
        hpVar.f1929do.f1937do.m1649for(qjVar, mo778if.get());
        return glVar;
    }
}
