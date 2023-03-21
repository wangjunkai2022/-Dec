package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.renderscript.RSRuntimeException;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.lang.reflect.Array;
/* compiled from: BitmapTransformation.java */
/* loaded from: classes7.dex */
public abstract class fc0 implements qj<Bitmap> {
    @Override // com.apk.qj
    @NonNull
    /* renamed from: if  reason: not valid java name */
    public final gl<Bitmap> mo778if(@NonNull Context context, @NonNull gl<Bitmap> glVar, int i, int i2) {
        pl plVar;
        Bitmap bitmap;
        Bitmap bitmap2;
        int[] iArr;
        Bitmap bitmap3;
        if (gs.m1034const(i, i2)) {
            pl plVar2 = ii.m1220new(context).f2119if;
            Bitmap bitmap4 = glVar.get();
            if (i == Integer.MIN_VALUE) {
                bitmap4.getWidth();
            }
            if (i2 == Integer.MIN_VALUE) {
                bitmap4.getHeight();
            }
            Context applicationContext = context.getApplicationContext();
            gc0 gc0Var = (gc0) this;
            int width = bitmap4.getWidth();
            int height = bitmap4.getHeight();
            int i3 = gc0Var.f1551for;
            Bitmap mo2051if = plVar2.mo2051if(width / i3, height / i3, Bitmap.Config.ARGB_8888);
            mo2051if.setDensity(bitmap4.getDensity());
            Canvas canvas = new Canvas(mo2051if);
            float f = 1.0f / gc0Var.f1551for;
            canvas.scale(f, f);
            Paint paint = new Paint();
            paint.setFlags(2);
            canvas.drawBitmap(bitmap4, 0.0f, 0.0f, paint);
            try {
                sb0.m2401break(applicationContext, mo2051if, gc0Var.f1552if);
                plVar = plVar2;
                bitmap = bitmap4;
                bitmap2 = mo2051if;
            } catch (RSRuntimeException unused) {
                int i4 = gc0Var.f1552if;
                if (i4 < 1) {
                    bitmap3 = null;
                    plVar = plVar2;
                } else {
                    int width2 = mo2051if.getWidth();
                    int height2 = mo2051if.getHeight();
                    int i5 = width2 * height2;
                    int[] iArr2 = new int[i5];
                    mo2051if.getPixels(iArr2, 0, width2, 0, 0, width2, height2);
                    int i6 = width2 - 1;
                    int i7 = height2 - 1;
                    int i8 = i4 + i4 + 1;
                    int[] iArr3 = new int[i5];
                    int[] iArr4 = new int[i5];
                    int[] iArr5 = new int[i5];
                    int[] iArr6 = new int[Math.max(width2, height2)];
                    int i9 = (i8 + 1) >> 1;
                    int i10 = i9 * i9;
                    int i11 = i10 * 256;
                    int[] iArr7 = new int[i11];
                    plVar = plVar2;
                    for (int i12 = 0; i12 < i11; i12++) {
                        iArr7[i12] = i12 / i10;
                    }
                    int[][] iArr8 = (int[][]) Array.newInstance(int.class, i8, 3);
                    int i13 = i4 + 1;
                    int i14 = 0;
                    int i15 = 0;
                    int i16 = 0;
                    while (i14 < height2) {
                        Bitmap bitmap5 = bitmap4;
                        Bitmap bitmap6 = mo2051if;
                        int i17 = 0;
                        int i18 = 0;
                        int i19 = 0;
                        int i20 = 0;
                        int i21 = 0;
                        int i22 = 0;
                        int i23 = 0;
                        int i24 = 0;
                        int i25 = -i4;
                        int i26 = 0;
                        while (i25 <= i4) {
                            int i27 = height2;
                            int i28 = i7;
                            int i29 = iArr2[Math.min(i6, Math.max(i25, 0)) + i15];
                            int[] iArr9 = iArr8[i25 + i4];
                            iArr9[0] = (i29 & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16;
                            iArr9[1] = (i29 & 65280) >> 8;
                            iArr9[2] = i29 & 255;
                            int abs = i13 - Math.abs(i25);
                            i26 = (iArr9[0] * abs) + i26;
                            i17 = (iArr9[1] * abs) + i17;
                            i18 = (iArr9[2] * abs) + i18;
                            if (i25 > 0) {
                                i22 += iArr9[0];
                                i23 += iArr9[1];
                                i24 += iArr9[2];
                            } else {
                                i19 += iArr9[0];
                                i20 += iArr9[1];
                                i21 += iArr9[2];
                            }
                            i25++;
                            height2 = i27;
                            i7 = i28;
                        }
                        int i30 = height2;
                        int i31 = i7;
                        int i32 = i4;
                        int i33 = i26;
                        int i34 = 0;
                        while (i34 < width2) {
                            iArr3[i15] = iArr7[i33];
                            iArr4[i15] = iArr7[i17];
                            iArr5[i15] = iArr7[i18];
                            int i35 = i33 - i19;
                            int i36 = i17 - i20;
                            int i37 = i18 - i21;
                            int[] iArr10 = iArr8[((i32 - i4) + i8) % i8];
                            int i38 = i19 - iArr10[0];
                            int i39 = i20 - iArr10[1];
                            int i40 = i21 - iArr10[2];
                            if (i14 == 0) {
                                iArr = iArr7;
                                iArr6[i34] = Math.min(i34 + i4 + 1, i6);
                            } else {
                                iArr = iArr7;
                            }
                            int i41 = iArr2[i16 + iArr6[i34]];
                            iArr10[0] = (i41 & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16;
                            iArr10[1] = (i41 & 65280) >> 8;
                            iArr10[2] = i41 & 255;
                            int i42 = i22 + iArr10[0];
                            int i43 = i23 + iArr10[1];
                            int i44 = i24 + iArr10[2];
                            i33 = i35 + i42;
                            i17 = i36 + i43;
                            i18 = i37 + i44;
                            i32 = (i32 + 1) % i8;
                            int[] iArr11 = iArr8[i32 % i8];
                            i19 = i38 + iArr11[0];
                            i20 = i39 + iArr11[1];
                            i21 = i40 + iArr11[2];
                            i22 = i42 - iArr11[0];
                            i23 = i43 - iArr11[1];
                            i24 = i44 - iArr11[2];
                            i15++;
                            i34++;
                            iArr7 = iArr;
                        }
                        i16 += width2;
                        i14++;
                        bitmap4 = bitmap5;
                        mo2051if = bitmap6;
                        height2 = i30;
                        i7 = i31;
                    }
                    int[] iArr12 = iArr7;
                    bitmap = bitmap4;
                    bitmap2 = mo2051if;
                    int i45 = height2;
                    int i46 = i7;
                    int i47 = 0;
                    while (i47 < width2) {
                        int i48 = -i4;
                        int i49 = i8;
                        int[] iArr13 = iArr6;
                        int i50 = 0;
                        int i51 = 0;
                        int i52 = 0;
                        int i53 = 0;
                        int i54 = 0;
                        int i55 = 0;
                        int i56 = 0;
                        int i57 = i48;
                        int i58 = i48 * width2;
                        int i59 = 0;
                        int i60 = 0;
                        while (i57 <= i4) {
                            int i61 = width2;
                            int max = Math.max(0, i58) + i47;
                            int[] iArr14 = iArr8[i57 + i4];
                            iArr14[0] = iArr3[max];
                            iArr14[1] = iArr4[max];
                            iArr14[2] = iArr5[max];
                            int abs2 = i13 - Math.abs(i57);
                            i52 = (iArr3[max] * abs2) + i52;
                            i51 = (iArr4[max] * abs2) + i51;
                            i50 = (iArr5[max] * abs2) + i50;
                            if (i57 > 0) {
                                i54 += iArr14[0];
                                i55 += iArr14[1];
                                i56 += iArr14[2];
                            } else {
                                i60 += iArr14[0];
                                i59 += iArr14[1];
                                i53 += iArr14[2];
                            }
                            int i62 = i46;
                            if (i57 < i62) {
                                i58 += i61;
                            }
                            i57++;
                            i46 = i62;
                            width2 = i61;
                        }
                        int i63 = width2;
                        int i64 = i46;
                        int i65 = i4;
                        int i66 = i47;
                        int i67 = i52;
                        int i68 = i45;
                        int i69 = i51;
                        int i70 = i50;
                        int i71 = i60;
                        int i72 = i59;
                        int i73 = 0;
                        while (i73 < i68) {
                            iArr2[i66] = (iArr2[i66] & ViewCompat.MEASURED_STATE_MASK) | (iArr12[i67] << 16) | (iArr12[i69] << 8) | iArr12[i70];
                            int i74 = i67 - i71;
                            int i75 = i69 - i72;
                            int i76 = i70 - i53;
                            int[] iArr15 = iArr8[((i65 - i4) + i49) % i49];
                            int i77 = i71 - iArr15[0];
                            int i78 = i72 - iArr15[1];
                            int i79 = i53 - iArr15[2];
                            int i80 = i4;
                            if (i47 == 0) {
                                iArr13[i73] = Math.min(i73 + i13, i64) * i63;
                            }
                            int i81 = iArr13[i73] + i47;
                            iArr15[0] = iArr3[i81];
                            iArr15[1] = iArr4[i81];
                            iArr15[2] = iArr5[i81];
                            int i82 = i54 + iArr15[0];
                            int i83 = i55 + iArr15[1];
                            int i84 = i56 + iArr15[2];
                            i67 = i74 + i82;
                            i69 = i75 + i83;
                            i70 = i76 + i84;
                            i65 = (i65 + 1) % i49;
                            int[] iArr16 = iArr8[i65];
                            i71 = i77 + iArr16[0];
                            i72 = i78 + iArr16[1];
                            i53 = i79 + iArr16[2];
                            i54 = i82 - iArr16[0];
                            i55 = i83 - iArr16[1];
                            i56 = i84 - iArr16[2];
                            i66 += i63;
                            i73++;
                            i4 = i80;
                        }
                        i47++;
                        i46 = i64;
                        i45 = i68;
                        iArr6 = iArr13;
                        i8 = i49;
                        width2 = i63;
                    }
                    int i85 = width2;
                    bitmap2.setPixels(iArr2, 0, i85, 0, 0, i85, i45);
                }
            }
            bitmap4 = bitmap;
            bitmap3 = bitmap2;
            return bitmap4.equals(bitmap3) ? glVar : vn.m2827try(bitmap3, plVar);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
