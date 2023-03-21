package com.apk;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: LazyBitmapDrawableResource.java */
/* loaded from: classes8.dex */
public final class mo implements gl<BitmapDrawable>, cl {

    /* renamed from: do  reason: not valid java name */
    public final Resources f3074do;

    /* renamed from: if  reason: not valid java name */
    public final gl<Bitmap> f3075if;

    public mo(@NonNull Resources resources, @NonNull gl<Bitmap> glVar) {
        eg.m593else(resources, "Argument must not be null");
        this.f3074do = resources;
        eg.m593else(glVar, "Argument must not be null");
        this.f3075if = glVar;
    }

    @Nullable
    /* renamed from: try  reason: not valid java name */
    public static gl<BitmapDrawable> m1738try(@NonNull Resources resources, @Nullable gl<Bitmap> glVar) {
        if (glVar == null) {
            return null;
        }
        return new mo(resources, glVar);
    }

    @Override // com.apk.gl
    /* renamed from: do */
    public void mo65do() {
        this.f3075if.mo65do();
    }

    @Override // com.apk.gl
    /* renamed from: for */
    public int mo66for() {
        return this.f3075if.mo66for();
    }

    @Override // com.apk.gl
    @NonNull
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f3074do, this.f3075if.get());
    }

    @Override // com.apk.cl
    /* renamed from: if */
    public void mo353if() {
        gl<Bitmap> glVar = this.f3075if;
        if (glVar instanceof cl) {
            ((cl) glVar).mo353if();
        }
    }

    @Override // com.apk.gl
    @NonNull
    /* renamed from: new */
    public Class<BitmapDrawable> mo68new() {
        return BitmapDrawable.class;
    }
}
