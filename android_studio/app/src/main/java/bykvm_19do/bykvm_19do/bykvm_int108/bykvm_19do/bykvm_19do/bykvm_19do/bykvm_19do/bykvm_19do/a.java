package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do;

import android.annotation.SuppressLint;
import android.content.Context;

/* compiled from: DBAdapter.java */
/* loaded from: classes8.dex */
public class a extends b {
    @SuppressLint({"StaticFieldLeak"})
    public static volatile a c;

    public a(Context context) {
        super(context);
    }

    public static a a(Context context) {
        if (c == null) {
            synchronized (a.class) {
                if (c == null) {
                    c = new a(context);
                }
            }
        }
        return c;
    }
}
