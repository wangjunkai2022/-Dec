package com.baidu.tts.loopj;

import com.apk.Cgoto;

/* loaded from: classes8.dex */
public class Utils {
    public static void asserts(boolean z, String str) {
        if (!z) {
            throw new AssertionError(str);
        }
    }

    public static <T> T notNull(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException(Cgoto.m989case(str, " should not be null!"));
    }
}
