package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.text.TextUtils;

/* compiled from: Predicate.java */
/* loaded from: classes8.dex */
public class a0 {
    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            a(str2);
            throw null;
        }
    }

    public static void a(String str) {
        throw new IllegalArgumentException(str);
    }
}
