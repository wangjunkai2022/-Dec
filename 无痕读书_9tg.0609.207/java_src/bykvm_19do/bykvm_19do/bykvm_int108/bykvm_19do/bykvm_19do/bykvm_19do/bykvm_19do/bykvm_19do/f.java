package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do;

import android.text.TextUtils;
import android.util.Base64;
/* compiled from: ParamEncode.java */
/* loaded from: classes8.dex */
public class f {
    public static String a(String str) {
        return TextUtils.isEmpty(str) ? "" : Base64.encodeToString(str.getBytes(), 10);
    }
}
