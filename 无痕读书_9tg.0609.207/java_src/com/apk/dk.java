package com.apk;

import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.apk.vj;
import java.io.IOException;
/* compiled from: ParcelFileDescriptorRewinder.java */
/* loaded from: classes8.dex */
public final class dk implements vj<ParcelFileDescriptor> {

    /* renamed from: do  reason: not valid java name */
    public final Cif f916do;

    /* compiled from: ParcelFileDescriptorRewinder.java */
    @RequiresApi(21)
    /* renamed from: com.apk.dk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements vj.Cdo<ParcelFileDescriptor> {
        @Override // com.apk.vj.Cdo
        @NonNull
        /* renamed from: do */
        public Class<ParcelFileDescriptor> mo196do() {
            return ParcelFileDescriptor.class;
        }

        @Override // com.apk.vj.Cdo
        @NonNull
        /* renamed from: if */
        public vj<ParcelFileDescriptor> mo197if(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
            return new dk(parcelFileDescriptor);
        }
    }

    /* compiled from: ParcelFileDescriptorRewinder.java */
    @RequiresApi(21)
    /* renamed from: com.apk.dk$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif {

        /* renamed from: do  reason: not valid java name */
        public final ParcelFileDescriptor f917do;

        public Cif(ParcelFileDescriptor parcelFileDescriptor) {
            this.f917do = parcelFileDescriptor;
        }
    }

    @RequiresApi(21)
    public dk(ParcelFileDescriptor parcelFileDescriptor) {
        this.f916do = new Cif(parcelFileDescriptor);
    }

    @Override // com.apk.vj
    @NonNull
    @RequiresApi(21)
    /* renamed from: for  reason: not valid java name */
    public ParcelFileDescriptor mo193do() throws IOException {
        Cif cif = this.f916do;
        if (cif != null) {
            try {
                Os.lseek(cif.f917do.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                return cif.f917do;
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        }
        throw null;
    }

    @Override // com.apk.vj
    /* renamed from: if */
    public void mo195if() {
    }
}
