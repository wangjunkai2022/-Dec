package com.apk;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.apk.ko;
import java.io.IOException;

/* compiled from: ParcelFileDescriptorBitmapDecoder.java */
@RequiresApi(21)
/* loaded from: classes8.dex */
public final class no implements oj<ParcelFileDescriptor, Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final eo f3279do;

    public no(eo eoVar) {
        this.f3279do = eoVar;
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull mj mjVar) throws IOException {
        if (this.f3279do != null) {
            return true;
        }
        throw null;
    }

    @Override // com.apk.oj
    @Nullable
    /* renamed from: if */
    public gl<Bitmap> mo259if(@NonNull ParcelFileDescriptor parcelFileDescriptor, int i, int i2, @NonNull mj mjVar) throws IOException {
        eo eoVar = this.f3279do;
        return eoVar.m662do(new ko.Cif(parcelFileDescriptor, eoVar.f1113new, eoVar.f1111for), i, i2, mjVar, eo.f1104catch);
    }
}
