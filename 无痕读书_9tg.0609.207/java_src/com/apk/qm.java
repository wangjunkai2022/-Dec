package com.apk;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import com.apk.uj;
import com.apk.ym;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: FileLoader.java */
/* loaded from: classes8.dex */
public class qm<Data> implements ym<File, Data> {

    /* renamed from: do  reason: not valid java name */
    public final Cnew<Data> f3889do;

    /* compiled from: FileLoader.java */
    /* renamed from: com.apk.qm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo<Data> implements zm<File, Data> {

        /* renamed from: do  reason: not valid java name */
        public final Cnew<Data> f3890do;

        public Cdo(Cnew<Data> cnew) {
            this.f3890do = cnew;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public final void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public final ym<File, Data> mo55for(@NonNull cn cnVar) {
            return new qm(this.f3890do);
        }
    }

    /* compiled from: FileLoader.java */
    /* renamed from: com.apk.qm$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cfor<Data> implements uj<Data> {

        /* renamed from: do  reason: not valid java name */
        public final File f3891do;

        /* renamed from: for  reason: not valid java name */
        public Data f3892for;

        /* renamed from: if  reason: not valid java name */
        public final Cnew<Data> f3893if;

        public Cfor(File file, Cnew<Data> cnew) {
            this.f3891do = file;
            this.f3893if = cnew;
        }

        @Override // com.apk.uj
        public void cancel() {
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, Data] */
        @Override // com.apk.uj
        /* renamed from: case */
        public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super Data> cdo) {
            try {
                Data mo2146if = this.f3893if.mo2146if(this.f3891do);
                this.f3892for = mo2146if;
                cdo.mo213new(mo2146if);
            } catch (FileNotFoundException e) {
                Log.isLoggable("FileLoader", 3);
                cdo.mo212for(e);
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: do */
        public Class<Data> mo58do() {
            return this.f3893if.mo2144do();
        }

        @Override // com.apk.uj
        /* renamed from: if */
        public void mo60if() {
            Data data = this.f3892for;
            if (data != null) {
                try {
                    this.f3893if.mo2145for(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: try */
        public dj mo61try() {
            return dj.LOCAL;
        }
    }

    /* compiled from: FileLoader.java */
    /* renamed from: com.apk.qm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends Cdo<ParcelFileDescriptor> {

        /* compiled from: FileLoader.java */
        /* renamed from: com.apk.qm$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Cnew<ParcelFileDescriptor> {
            @Override // com.apk.qm.Cnew
            /* renamed from: do  reason: not valid java name */
            public Class<ParcelFileDescriptor> mo2144do() {
                return ParcelFileDescriptor.class;
            }

            @Override // com.apk.qm.Cnew
            /* renamed from: for  reason: not valid java name */
            public void mo2145for(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }

            @Override // com.apk.qm.Cnew
            /* renamed from: if  reason: not valid java name */
            public ParcelFileDescriptor mo2146if(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        public Cif() {
            super(new Cdo());
        }
    }

    /* compiled from: FileLoader.java */
    /* renamed from: com.apk.qm$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cnew<Data> {
        /* renamed from: do */
        Class<Data> mo2144do();

        /* renamed from: for */
        void mo2145for(Data data) throws IOException;

        /* renamed from: if */
        Data mo2146if(File file) throws FileNotFoundException;
    }

    /* compiled from: FileLoader.java */
    /* renamed from: com.apk.qm$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry extends Cdo<InputStream> {

        /* compiled from: FileLoader.java */
        /* renamed from: com.apk.qm$try$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Cnew<InputStream> {
            @Override // com.apk.qm.Cnew
            /* renamed from: do */
            public Class<InputStream> mo2144do() {
                return InputStream.class;
            }

            @Override // com.apk.qm.Cnew
            /* renamed from: for */
            public void mo2145for(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // com.apk.qm.Cnew
            /* renamed from: if */
            public InputStream mo2146if(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }
        }

        public Ctry() {
            super(new Cdo());
        }
    }

    public qm(Cnew<Data> cnew) {
        this.f3889do = cnew;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull File file) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo mo53if(@NonNull File file, int i, int i2, @NonNull mj mjVar) {
        File file2 = file;
        return new ym.Cdo(new vr(file2), new Cfor(file2, this.f3889do));
    }
}
