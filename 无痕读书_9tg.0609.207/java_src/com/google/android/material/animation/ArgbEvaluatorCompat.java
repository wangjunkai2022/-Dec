package com.google.android.material.animation;

import android.animation.TypeEvaluator;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
/* loaded from: classes8.dex */
public class ArgbEvaluatorCompat implements TypeEvaluator<Integer> {
    public static final ArgbEvaluatorCompat instance = new ArgbEvaluatorCompat();

    @NonNull
    public static ArgbEvaluatorCompat getInstance() {
        return instance;
    }

    @Override // android.animation.TypeEvaluator
    @NonNull
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        int intValue2 = num2.intValue();
        float pow = (float) Math.pow(((intValue >> 16) & 255) / 255.0f, 2.2d);
        float pow2 = (float) Math.pow(((intValue >> 8) & 255) / 255.0f, 2.2d);
        float pow3 = (float) Math.pow((intValue & 255) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(((intValue2 >> 16) & 255) / 255.0f, 2.2d);
        float m995do = Cgoto.m995do(((intValue2 >> 24) & 255) / 255.0f, f2, f, f2);
        float m995do2 = Cgoto.m995do(pow4, pow, f, pow);
        float m995do3 = Cgoto.m995do((float) Math.pow(((intValue2 >> 8) & 255) / 255.0f, 2.2d), pow2, f, pow2);
        float m995do4 = Cgoto.m995do((float) Math.pow((intValue2 & 255) / 255.0f, 2.2d), pow3, f, pow3);
        int round = Math.round(((float) Math.pow(m995do2, 0.45454545454545453d)) * 255.0f) << 16;
        return Integer.valueOf(Math.round(((float) Math.pow(m995do4, 0.45454545454545453d)) * 255.0f) | round | (Math.round(m995do * 255.0f) << 24) | (Math.round(((float) Math.pow(m995do3, 0.45454545454545453d)) * 255.0f) << 8));
    }
}
