package com.apk;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamAssetPathFetcher.java */
/* loaded from: classes8.dex */
public class ek extends sj<InputStream> {
    public ek(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do */
    public Class<InputStream> mo58do() {
        return InputStream.class;
    }

    @Override // com.apk.sj
    /* renamed from: for  reason: not valid java name */
    public void mo634for(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.apk.sj
    /* renamed from: new  reason: not valid java name */
    public InputStream mo635new(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
