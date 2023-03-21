package com.apk;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: FileDescriptorLocalUriFetcher.java */
/* loaded from: classes8.dex */
public class zj extends ck<ParcelFileDescriptor> {
    public zj(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do */
    public Class<ParcelFileDescriptor> mo58do() {
        return ParcelFileDescriptor.class;
    }

    @Override // com.apk.ck
    /* renamed from: for */
    public void mo351for(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // com.apk.ck
    /* renamed from: new */
    public ParcelFileDescriptor mo352new(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor.getParcelFileDescriptor();
        }
        throw new FileNotFoundException(Cgoto.m1008new("FileDescriptor is null for: ", uri));
    }
}
