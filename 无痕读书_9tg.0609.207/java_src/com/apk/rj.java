package com.apk;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
/* compiled from: AssetFileDescriptorLocalUriFetcher.java */
/* loaded from: classes8.dex */
public final class rj extends ck<AssetFileDescriptor> {
    public rj(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do */
    public Class<AssetFileDescriptor> mo58do() {
        return AssetFileDescriptor.class;
    }

    @Override // com.apk.ck
    /* renamed from: for */
    public void mo351for(AssetFileDescriptor assetFileDescriptor) throws IOException {
        assetFileDescriptor.close();
    }

    @Override // com.apk.ck
    /* renamed from: new */
    public AssetFileDescriptor mo352new(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor;
        }
        throw new FileNotFoundException(Cgoto.m1008new("FileDescriptor is null for: ", uri));
    }
}
