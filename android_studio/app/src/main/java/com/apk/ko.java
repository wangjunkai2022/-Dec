package com.apk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: ImageReader.java */
/* loaded from: classes8.dex */
public interface ko {

    /* compiled from: ImageReader.java */
    /* renamed from: com.apk.ko$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements ko {

        /* renamed from: do  reason: not valid java name */
        public final bk f2611do;

        /* renamed from: for  reason: not valid java name */
        public final List<ImageHeaderParser> f2612for;

        /* renamed from: if  reason: not valid java name */
        public final nl f2613if;

        public Cdo(InputStream inputStream, List<ImageHeaderParser> list, nl nlVar) {
            eg.m593else(nlVar, "Argument must not be null");
            this.f2613if = nlVar;
            eg.m593else(list, "Argument must not be null");
            this.f2612for = list;
            this.f2611do = new bk(inputStream, nlVar);
        }

        @Override // com.apk.ko
        /* renamed from: do */
        public int mo1536do() throws IOException {
            return ij.m1226do(this.f2612for, this.f2611do.mo193do(), this.f2613if);
        }

        @Override // com.apk.ko
        /* renamed from: for */
        public void mo1537for() {
            oo ooVar = this.f2611do.f346do;
            synchronized (ooVar) {
                ooVar.f3480for = ooVar.f3479do.length;
            }
        }

        @Override // com.apk.ko
        @Nullable
        /* renamed from: if */
        public Bitmap mo1538if(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.f2611do.mo193do(), null, options);
        }

        @Override // com.apk.ko
        /* renamed from: new */
        public ImageHeaderParser.ImageType mo1539new() throws IOException {
            return ij.getType(this.f2612for, this.f2611do.mo193do(), this.f2613if);
        }
    }

    /* compiled from: ImageReader.java */
    @RequiresApi(21)
    /* renamed from: com.apk.ko$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif implements ko {

        /* renamed from: do  reason: not valid java name */
        public final nl f2614do;

        /* renamed from: for  reason: not valid java name */
        public final dk f2615for;

        /* renamed from: if  reason: not valid java name */
        public final List<ImageHeaderParser> f2616if;

        public Cif(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, nl nlVar) {
            eg.m593else(nlVar, "Argument must not be null");
            this.f2614do = nlVar;
            eg.m593else(list, "Argument must not be null");
            this.f2616if = list;
            this.f2615for = new dk(parcelFileDescriptor);
        }

        @Override // com.apk.ko
        /* renamed from: do */
        public int mo1536do() throws IOException {
            return ij.m1228if(this.f2616if, new jj(this.f2615for, this.f2614do));
        }

        @Override // com.apk.ko
        /* renamed from: for */
        public void mo1537for() {
        }

        @Override // com.apk.ko
        @Nullable
        /* renamed from: if */
        public Bitmap mo1538if(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.f2615for.mo193do().getFileDescriptor(), null, options);
        }

        @Override // com.apk.ko
        /* renamed from: new */
        public ImageHeaderParser.ImageType mo1539new() throws IOException {
            return ij.getType(this.f2616if, this.f2615for, this.f2614do);
        }
    }

    /* renamed from: do  reason: not valid java name */
    int mo1536do() throws IOException;

    /* renamed from: for  reason: not valid java name */
    void mo1537for();

    @Nullable
    /* renamed from: if  reason: not valid java name */
    Bitmap mo1538if(BitmapFactory.Options options) throws IOException;

    /* renamed from: new  reason: not valid java name */
    ImageHeaderParser.ImageType mo1539new() throws IOException;
}
