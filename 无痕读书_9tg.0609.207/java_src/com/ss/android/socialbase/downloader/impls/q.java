package com.ss.android.socialbase.downloader.impls;

import android.text.TextUtils;
import com.ss.android.socialbase.downloader.downloader.s;
/* loaded from: classes7.dex */
public class q implements s {

    /* renamed from: a  reason: collision with root package name */
    public final long[] f11973a;

    public q(String str) {
        this.f11973a = a(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.s
    public long a(int i, int i2) {
        long[] jArr = this.f11973a;
        if (jArr == null || jArr.length <= 0) {
            return 0L;
        }
        int i3 = i - 1;
        if (i3 < 0) {
            i3 = 0;
        }
        long[] jArr2 = this.f11973a;
        if (i3 > jArr2.length - 1) {
            i3 = jArr2.length - 1;
        }
        return this.f11973a[i3];
    }

    private long[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] split = str.split(",");
            if (split.length == 0) {
                return null;
            }
            long[] jArr = new long[split.length];
            for (int i = 0; i < split.length; i++) {
                jArr[i] = Long.parseLong(split[i]);
            }
            return jArr;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
