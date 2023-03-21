package com.apk;

import android.app.Activity;
import androidx.core.text.BidiFormatter;
import com.umeng.commonsdk.framework.UMWorkDispatch;

/* compiled from: ToolBarHelper.java */
/* loaded from: classes8.dex */
public class u0 {

    /* renamed from: new  reason: not valid java name */
    public static u0 f4812new;

    /* renamed from: do  reason: not valid java name */
    public int f4813do;

    /* renamed from: for  reason: not valid java name */
    public boolean f4814for;

    /* renamed from: if  reason: not valid java name */
    public int f4815if;

    /* renamed from: do  reason: not valid java name */
    public static u0 m2663do() {
        if (f4812new == null) {
            synchronized (u0.class) {
                if (f4812new == null) {
                    f4812new = new u0();
                }
            }
        }
        return f4812new;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2664for(Activity activity, boolean z, boolean z2, boolean z3) {
        int i;
        try {
            if (z) {
                if (z2) {
                    i = 256;
                    if (z3) {
                        i = 1280;
                    }
                } else {
                    i = UMWorkDispatch.MSG_SEND_EVENT;
                    if (z3) {
                        i = BidiFormatter.DirectionalityEstimator.DIR_TYPE_CACHE_SIZE;
                    }
                }
                activity.getWindow().getDecorView().setSystemUiVisibility(i | 4096);
            } else {
                activity.getWindow().getDecorView().setSystemUiVisibility(z3 ? 7938 : 6914);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m2665if() {
        return this.f4815if > 0;
    }
}
