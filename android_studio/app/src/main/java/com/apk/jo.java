package com.apk;

import android.os.Build;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.bytedance.msdk.api.AdError;
import java.io.File;

/* compiled from: HardwareConfigState.java */
/* loaded from: classes8.dex */
public final class jo {

    /* renamed from: case  reason: not valid java name */
    public static final File f2387case = new File("/proc/self/fd");

    /* renamed from: else  reason: not valid java name */
    public static volatile jo f2388else;

    /* renamed from: do  reason: not valid java name */
    public final boolean f2389do;

    /* renamed from: for  reason: not valid java name */
    public final int f2390for;

    /* renamed from: if  reason: not valid java name */
    public final int f2391if;
    @GuardedBy("this")

    /* renamed from: new  reason: not valid java name */
    public int f2392new;
    @GuardedBy("this")

    /* renamed from: try  reason: not valid java name */
    public boolean f2393try = true;

    @VisibleForTesting
    public jo() {
        boolean z = true;
        String str = Build.MODEL;
        if (str != null && str.length() >= 7) {
            String substring = Build.MODEL.substring(0, 7);
            char c = 65535;
            switch (substring.hashCode()) {
                case -1398613787:
                    if (substring.equals("SM-A520")) {
                        c = 6;
                        break;
                    }
                    break;
                case -1398431166:
                    if (substring.equals("SM-G930")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1398431161:
                    if (substring.equals("SM-G935")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1398431073:
                    if (substring.equals("SM-G960")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1398431068:
                    if (substring.equals("SM-G965")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1398343746:
                    if (substring.equals("SM-J720")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1398222624:
                    if (substring.equals("SM-N935")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    if (Build.VERSION.SDK_INT == 26) {
                        z = false;
                        break;
                    }
                    break;
            }
        }
        this.f2389do = z;
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2391if = AdError.ERROR_CODE_AD_LOAD_SUCCESS;
            this.f2390for = 0;
            return;
        }
        this.f2391if = 700;
        this.f2390for = 128;
    }

    /* renamed from: do  reason: not valid java name */
    public static jo m1370do() {
        if (f2388else == null) {
            synchronized (jo.class) {
                if (f2388else == null) {
                    f2388else = new jo();
                }
            }
        }
        return f2388else;
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m1371if(int i, int i2, boolean z, boolean z2) {
        int i3;
        boolean z3;
        if (!z || !this.f2389do || Build.VERSION.SDK_INT < 26 || z2 || i < (i3 = this.f2390for) || i2 < i3) {
            return false;
        }
        synchronized (this) {
            int i4 = this.f2392new + 1;
            this.f2392new = i4;
            if (i4 >= 50) {
                this.f2392new = 0;
                this.f2393try = f2387case.list().length < this.f2391if;
            }
            z3 = this.f2393try;
        }
        return z3;
    }
}
