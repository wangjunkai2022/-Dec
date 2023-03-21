package com.apk;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;

/* compiled from: ZxingUtils.java */
/* loaded from: classes8.dex */
public class jg {
    /* renamed from: do  reason: not valid java name */
    public static Bitmap m1311do(String str) {
        try {
            try {
                try {
                    BitMatrix encode = new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, 500, 500);
                    int width = encode.getWidth();
                    int height = encode.getHeight();
                    int[] iArr = new int[width * height];
                    for (int i = 0; i < height; i++) {
                        int i2 = i * width;
                        for (int i3 = 0; i3 < width; i3++) {
                            iArr[i2 + i3] = encode.get(i3, i) ? -16737910 : -1;
                        }
                    }
                    Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
                    return createBitmap;
                } catch (Exception e) {
                    throw new WriterException(e);
                }
            } catch (WriterException e2) {
                throw e2;
            }
        } catch (WriterException e3) {
            e3.printStackTrace();
            return null;
        }
    }
}
