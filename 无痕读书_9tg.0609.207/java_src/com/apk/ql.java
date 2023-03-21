package com.apk;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
/* compiled from: BitmapPoolAdapter.java */
/* loaded from: classes8.dex */
public class ql implements pl {
    @Override // com.apk.pl
    /* renamed from: do */
    public void mo868do(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.apk.pl
    /* renamed from: for */
    public void mo2050for(int i) {
    }

    @Override // com.apk.pl
    @NonNull
    /* renamed from: if */
    public Bitmap mo2051if(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // com.apk.pl
    /* renamed from: new */
    public void mo2052new() {
    }

    @Override // com.apk.pl
    @NonNull
    /* renamed from: try */
    public Bitmap mo2053try(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }
}
