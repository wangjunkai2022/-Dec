package com.apk;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.IOException;

/* compiled from: BitmapDrawableDecoder.java */
/* loaded from: classes8.dex */
public class rn<DataType> implements oj<DataType, BitmapDrawable> {

    /* renamed from: do  reason: not valid java name */
    public final oj<DataType, Bitmap> f4147do;

    /* renamed from: if  reason: not valid java name */
    public final Resources f4148if;

    public rn(@NonNull Resources resources, @NonNull oj<DataType, Bitmap> ojVar) {
        eg.m593else(resources, "Argument must not be null");
        this.f4148if = resources;
        eg.m593else(ojVar, "Argument must not be null");
        this.f4147do = ojVar;
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull DataType datatype, @NonNull mj mjVar) throws IOException {
        return this.f4147do.mo257do(datatype, mjVar);
    }

    @Override // com.apk.oj
    /* renamed from: if */
    public gl<BitmapDrawable> mo259if(@NonNull DataType datatype, int i, int i2, @NonNull mj mjVar) throws IOException {
        return mo.m1738try(this.f4148if, this.f4147do.mo259if(datatype, i, i2, mjVar));
    }
}
