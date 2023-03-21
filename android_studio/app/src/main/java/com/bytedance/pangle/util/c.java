package com.bytedance.pangle.util;

import androidx.annotation.Nullable;

/* loaded from: classes8.dex */
public final class c {
    public static <T> boolean a(@Nullable T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static <T> boolean a(@Nullable T[] tArr, T[] tArr2) {
        if (tArr2 == null) {
            return true;
        }
        for (T t : tArr2) {
            if (!a(tArr, t)) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean a(@Nullable T[] tArr, T t) {
        int i;
        if (tArr != null) {
            i = 0;
            while (i < tArr.length) {
                if (tArr[i] == t || (tArr[i] != null && tArr[i].equals(t))) {
                    break;
                }
                i++;
            }
        }
        i = -1;
        return i != -1;
    }
}
