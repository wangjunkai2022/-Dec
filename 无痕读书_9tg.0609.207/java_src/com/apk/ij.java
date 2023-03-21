package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* compiled from: ImageHeaderParserUtils.java */
/* loaded from: classes8.dex */
public final class ij {

    /* compiled from: ImageHeaderParserUtils.java */
    /* renamed from: com.apk.ij$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Ccase {
        ImageHeaderParser.ImageType getType(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* renamed from: com.apk.ij$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Ccase {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ InputStream f2126do;

        public Cdo(InputStream inputStream) {
            this.f2126do = inputStream;
        }

        @Override // com.apk.ij.Ccase
        public ImageHeaderParser.ImageType getType(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.getType(this.f2126do);
            } finally {
                this.f2126do.reset();
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* renamed from: com.apk.ij$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Ccase {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ dk f2127do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ nl f2128if;

        public Cfor(dk dkVar, nl nlVar) {
            this.f2127do = dkVar;
            this.f2128if = nlVar;
        }

        @Override // com.apk.ij.Ccase
        public ImageHeaderParser.ImageType getType(ImageHeaderParser imageHeaderParser) throws IOException {
            oo ooVar = null;
            try {
                oo ooVar2 = new oo(new FileInputStream(this.f2127do.mo193do().getFileDescriptor()), this.f2128if);
                try {
                    ImageHeaderParser.ImageType type = imageHeaderParser.getType(ooVar2);
                    try {
                        ooVar2.close();
                    } catch (IOException unused) {
                    }
                    this.f2127do.mo193do();
                    return type;
                } catch (Throwable th) {
                    th = th;
                    ooVar = ooVar2;
                    if (ooVar != null) {
                        try {
                            ooVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f2127do.mo193do();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* renamed from: com.apk.ij$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Ccase {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ByteBuffer f2129do;

        public Cif(ByteBuffer byteBuffer) {
            this.f2129do = byteBuffer;
        }

        @Override // com.apk.ij.Ccase
        public ImageHeaderParser.ImageType getType(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.getType(this.f2129do);
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* renamed from: com.apk.ij$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements Ctry {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ InputStream f2130do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ nl f2131if;

        public Cnew(InputStream inputStream, nl nlVar) {
            this.f2130do = inputStream;
            this.f2131if = nlVar;
        }

        @Override // com.apk.ij.Ctry
        /* renamed from: do  reason: not valid java name */
        public int mo1229do(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.mo237do(this.f2130do, this.f2131if);
            } finally {
                this.f2130do.reset();
            }
        }
    }

    /* compiled from: ImageHeaderParserUtils.java */
    /* renamed from: com.apk.ij$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Ctry {
        /* renamed from: do */
        int mo1229do(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1226do(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull nl nlVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new oo(inputStream, nlVar);
        }
        inputStream.mark(5242880);
        return m1228if(list, new Cnew(inputStream, nlVar));
    }

    @NonNull
    /* renamed from: for  reason: not valid java name */
    public static ImageHeaderParser.ImageType m1227for(@NonNull List<ImageHeaderParser> list, Ccase ccase) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType type = ccase.getType(list.get(i));
            if (type != ImageHeaderParser.ImageType.UNKNOWN) {
                return type;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @NonNull
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull nl nlVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new oo(inputStream, nlVar);
        }
        inputStream.mark(5242880);
        return m1227for(list, new Cdo(inputStream));
    }

    /* renamed from: if  reason: not valid java name */
    public static int m1228if(@NonNull List<ImageHeaderParser> list, Ctry ctry) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int mo1229do = ctry.mo1229do(list.get(i));
            if (mo1229do != -1) {
                return mo1229do;
            }
        }
        return -1;
    }

    @NonNull
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        return m1227for(list, new Cif(byteBuffer));
    }

    @NonNull
    @RequiresApi(21)
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @NonNull dk dkVar, @NonNull nl nlVar) throws IOException {
        return m1227for(list, new Cfor(dkVar, nlVar));
    }
}
