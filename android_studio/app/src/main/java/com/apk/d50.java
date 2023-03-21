package com.apk;

import android.app.Activity;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;

/* compiled from: TrFrontBackHelper.java */
/* loaded from: classes7.dex */
public class d50 {

    /* renamed from: case  reason: not valid java name */
    public static d50 f821case;

    /* renamed from: do  reason: not valid java name */
    public List<Cdo> f822do;

    /* renamed from: for  reason: not valid java name */
    public int f823for;

    /* renamed from: if  reason: not valid java name */
    public boolean f824if;

    /* renamed from: new  reason: not valid java name */
    public boolean f825new;

    /* renamed from: try  reason: not valid java name */
    public String f826try;

    /* compiled from: TrFrontBackHelper.java */
    /* renamed from: com.apk.d50$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cdo {
        /* renamed from: do  reason: not valid java name */
        void mo407do(Activity activity);

        /* renamed from: if  reason: not valid java name */
        void mo408if(Activity activity);
    }

    public d50() {
        TrAdSdk.getApp().registerActivityLifecycleCallbacks(new e50(this));
    }

    /* renamed from: do  reason: not valid java name */
    public static d50 m406do() {
        if (f821case == null) {
            synchronized (d50.class) {
                if (f821case == null) {
                    f821case = new d50();
                }
            }
        }
        return f821case;
    }
}
