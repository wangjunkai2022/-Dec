package com.apk;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;

/* compiled from: ImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes8.dex */
public abstract class pn<T> implements oj<ImageDecoder.Source, T> {

    /* renamed from: do  reason: not valid java name */
    public final jo f3711do = jo.m1370do();

    /* compiled from: ImageDecoderResourceDecoder.java */
    /* renamed from: com.apk.pn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ImageDecoder.OnHeaderDecodedListener {

        /* renamed from: case  reason: not valid java name */
        public final /* synthetic */ nj f3712case;

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f3713do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f3715for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ int f3716if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ ej f3717new;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ co f3718try;

        /* compiled from: ImageDecoderResourceDecoder.java */
        /* renamed from: com.apk.pn$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0072do implements ImageDecoder.OnPartialImageListener {
            public C0072do(Cdo cdo) {
            }

            @Override // android.graphics.ImageDecoder.OnPartialImageListener
            public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        public Cdo(int i, int i2, boolean z, ej ejVar, co coVar, nj njVar) {
            this.f3713do = i;
            this.f3716if = i2;
            this.f3715for = z;
            this.f3717new = ejVar;
            this.f3718try = coVar;
            this.f3712case = njVar;
        }

        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            boolean z = false;
            if (pn.this.f3711do.m1371if(this.f3713do, this.f3716if, this.f3715for, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f3717new == ej.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C0072do(this));
            Size size = imageInfo.getSize();
            int i = this.f3713do;
            if (i == Integer.MIN_VALUE) {
                i = size.getWidth();
            }
            int i2 = this.f3716if;
            if (i2 == Integer.MIN_VALUE) {
                i2 = size.getHeight();
            }
            float mo375if = this.f3718try.mo375if(size.getWidth(), size.getHeight(), i, i2);
            int round = Math.round(size.getWidth() * mo375if);
            int round2 = Math.round(mo375if * size.getHeight());
            if (Log.isLoggable("ImageDecoder", 2)) {
                size.getWidth();
                size.getHeight();
            }
            imageDecoder.setTargetSize(round, round2);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 < 28) {
                if (i3 >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                    return;
                }
                return;
            }
            if (this.f3712case == nj.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                z = true;
            }
            imageDecoder.setTargetColorSpace(ColorSpace.get(z ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
        }
    }

    @Override // com.apk.oj
    /* renamed from: do */
    public boolean mo257do(@NonNull ImageDecoder.Source source, @NonNull mj mjVar) throws IOException {
        return true;
    }

    @Override // com.apk.oj
    @Nullable
    /* renamed from: for  reason: not valid java name */
    public final gl<T> mo259if(@NonNull ImageDecoder.Source source, int i, int i2, @NonNull mj mjVar) throws IOException {
        Cdo cdo = new Cdo(i, i2, mjVar.m1724for(eo.f1109this) != null && ((Boolean) mjVar.m1724for(eo.f1109this)).booleanValue(), (ej) mjVar.m1724for(eo.f1103case), (co) mjVar.m1724for(co.f684case), (nj) mjVar.m1724for(eo.f1107else));
        un unVar = (un) this;
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, cdo);
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            decodeBitmap.getWidth();
            decodeBitmap.getHeight();
        }
        return new vn(decodeBitmap, unVar.f4940if);
    }
}
