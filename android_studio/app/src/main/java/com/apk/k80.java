package com.apk;

import android.app.Activity;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.core.view.ViewCompat;
import com.tr.comment.sdk.R$id;

/* compiled from: StatusBarUtil.java */
/* loaded from: classes7.dex */
public class k80 {

    /* renamed from: do  reason: not valid java name */
    public static final int f2493do = R$id.statusbarutil_fake_status_bar_view;

    /* renamed from: do  reason: not valid java name */
    public static int m1468do(@ColorInt int i, int i2) {
        if (i2 == 0) {
            return i;
        }
        float f = 1.0f - (i2 / 255.0f);
        return ((int) (((i & 255) * f) + 0.5d)) | (((int) ((((i >> 16) & 255) * f) + 0.5d)) << 16) | ViewCompat.MEASURED_STATE_MASK | (((int) ((((i >> 8) & 255) * f) + 0.5d)) << 8);
    }

    /* renamed from: if  reason: not valid java name */
    public static void m1469if(Activity activity, @ColorInt int i, @IntRange(from = 0, to = 255) int i2) {
        activity.getWindow().addFlags(Integer.MIN_VALUE);
        activity.getWindow().clearFlags(67108864);
        activity.getWindow().setStatusBarColor(m1468do(i, i2));
    }
}
