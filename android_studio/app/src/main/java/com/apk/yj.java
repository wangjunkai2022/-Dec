package com.apk;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.IOException;

/* compiled from: FileDescriptorAssetPathFetcher.java */
/* loaded from: classes8.dex */
public class yj extends sj<ParcelFileDescriptor> {
    public yj(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do */
    public Class<ParcelFileDescriptor> mo58do() {
        return ParcelFileDescriptor.class;
    }

    @Override // com.apk.sj
    /* renamed from: for */
    public void mo634for(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // com.apk.sj
    /* renamed from: new */
    public ParcelFileDescriptor mo635new(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }
}
