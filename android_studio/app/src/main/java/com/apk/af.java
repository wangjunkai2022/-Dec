package com.apk;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* compiled from: BitmapUtils.java */
/* loaded from: classes8.dex */
public final class af extends c1<Bitmap> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f85do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ g1 f86if;

    public af(String str, g1 g1Var) {
        this.f85do = str;
        this.f86if = g1Var;
    }

    @Override // com.apk.c1
    public Bitmap doInBackground() {
        Bitmap m2649if = u.m2649if(this.f85do);
        if (m2649if != null) {
            int m587catch = eg.m587catch(17.0f);
            int width = m2649if.getWidth();
            int height = m2649if.getHeight();
            float f = m587catch;
            Matrix matrix = new Matrix();
            matrix.postScale(f / width, f / height);
            return Bitmap.createBitmap(m2649if, 0, 0, width, height, matrix, true);
        }
        return m2649if;
    }

    @Override // com.apk.c1
    public void onPostExecute(Bitmap bitmap) {
        g1 g1Var;
        Bitmap bitmap2 = bitmap;
        super.onPostExecute(bitmap2);
        if (bitmap2 == null || (g1Var = this.f86if) == null) {
            return;
        }
        g1Var.onData(bitmap2);
    }
}
