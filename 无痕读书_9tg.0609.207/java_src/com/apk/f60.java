package com.apk;

import android.app.Activity;
import com.apk.i70;
import com.apk.j70;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: TrRectangleAd.java */
/* loaded from: classes7.dex */
public class f60 extends b60 {

    /* renamed from: case  reason: not valid java name */
    public j60 f1236case;

    /* renamed from: new  reason: not valid java name */
    public final Activity f1237new;

    /* renamed from: try  reason: not valid java name */
    public final x60 f1238try;

    public f60(Activity activity, x60 x60Var, String str) {
        this.f1237new = activity;
        this.f1238try = x60Var;
        this.f3593do = str;
    }

    /* renamed from: try  reason: not valid java name */
    public void m750try(String str, String str2, int i, int i2) {
        if (TrAdSdk.getApp() == null) {
            m2025if(this.f1238try);
        } else if (!k40.m1446extends()) {
            m2024for(this.f1238try);
        } else if (this.f1237new == null) {
            m2023do(this.f1238try);
        } else if (m2026new(i, i2, this.f1238try)) {
        } else {
            j60 j60Var = new j60();
            this.f1236case = j60Var;
            j60Var.f2286do = this.f249if;
            j60Var.f2287if = this.f248for;
            Activity activity = this.f1237new;
            x60 x60Var = this.f1238try;
            if (k40.m1448finally(str)) {
                if (j60Var.m2583new(x60Var)) {
                    new g70().g(activity, str, str2, x60Var);
                }
            } else if ("gdt_native_page".equals(str)) {
                if (j60Var.m2583new(x60Var)) {
                    j70 j70Var = new j70();
                    j70Var.b(str);
                    new x50(activity, new j70.Cdo(str, x60Var)).m2579do(str2);
                }
            } else if ("gdt_native_rect".equals(str)) {
                if (j60Var.m2583new(x60Var)) {
                    i70 i70Var = new i70();
                    i70Var.b(str);
                    new y50(activity, new i70.Cdo(str, x60Var)).m2579do(str2);
                }
            } else if ("csj".equals(str)) {
                if (j60Var.m2581for(x60Var)) {
                    f50 f50Var = new f50();
                    f50Var.f2489try = j60Var.f2286do;
                    f50Var.f2488case = j60Var.f2287if;
                    f50Var.g(activity, str, str2, x60Var);
                }
            } else if ("csjmb".equals(str)) {
                if (j60Var.m2581for(x60Var)) {
                    f50 f50Var2 = new f50();
                    f50Var2.f2489try = j60Var.f2286do;
                    f50Var2.f2488case = j60Var.f2287if;
                    f50Var2.g(activity, str, str2, x60Var);
                }
            } else if ("gm".equals(str)) {
                if (j60Var.m2584try(x60Var)) {
                    new c80().g(activity, str, str2, x60Var);
                }
            } else if ("swl".equals(str)) {
                j60Var.m2582if(str2, x60Var);
            } else {
                j60Var.m2580do(x60Var);
            }
        }
    }
}
