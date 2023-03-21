package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.text.TextUtils;
/* compiled from: GMNumberUtil.java */
/* loaded from: classes8.dex */
public class s {
    public static int a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("network_ad_num_")) {
                return Integer.valueOf(str.substring(15)).intValue();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String a(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < iArr.length; i++) {
            sb.append(iArr[i]);
            if (i != iArr.length - 1) {
                sb.append(",");
            }
        }
        return sb.toString();
    }
}
