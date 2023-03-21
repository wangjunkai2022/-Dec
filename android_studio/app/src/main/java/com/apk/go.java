package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: DrawableTransformation.java */
/* loaded from: classes8.dex */
public class go implements qj<Drawable> {

    /* renamed from: for  reason: not valid java name */
    public final boolean f1616for;

    /* renamed from: if  reason: not valid java name */
    public final qj<Bitmap> f1617if;

    public go(qj<Bitmap> qjVar, boolean z) {
        this.f1617if = qjVar;
        this.f1616for = z;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        this.f1617if.mo76do(messageDigest);
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof go) {
            return this.f1617if.equals(((go) obj).f1617if);
        }
        return false;
    }

    @Override // com.apk.kj
    public int hashCode() {
        return this.f1617if.hashCode();
    }

    @Override // com.apk.qj
    @NonNull
    /* renamed from: if */
    public gl<Drawable> mo778if(@NonNull Context context, @NonNull gl<Drawable> glVar, int i, int i2) {
        pl plVar = ii.m1220new(context).f2119if;
        Drawable drawable = glVar.get();
        gl<Bitmap> m867do = fo.m867do(plVar, drawable, i, i2);
        if (m867do == null) {
            if (this.f1616for) {
                throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
            }
            return glVar;
        }
        gl<Bitmap> mo778if = this.f1617if.mo778if(context, m867do, i, i2);
        if (mo778if.equals(m867do)) {
            mo778if.mo65do();
            return glVar;
        }
        return mo.m1738try(context.getResources(), mo778if);
    }
}
