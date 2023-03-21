package com.apk;

import java.io.File;
import java.util.ArrayList;
/* compiled from: Unzip.java */
/* loaded from: classes7.dex */
public class rf0 {

    /* renamed from: do  reason: not valid java name */
    public of0 f4044do;

    public rf0(of0 of0Var) throws af0 {
        if (of0Var != null) {
            this.f4044do = of0Var;
            return;
        }
        throw new af0("ZipModel is null");
    }

    /* renamed from: do  reason: not valid java name */
    public final void m2261do(if0 if0Var, String str, String str2) throws af0 {
        if (sb0.m2412finally(str)) {
            String str3 = if0Var.f2077catch;
            if (!sb0.m2412finally(str2)) {
                str2 = str3;
            }
            if (sb0.m2412finally(str2)) {
                try {
                    File file = new File(new File(Cgoto.m989case(str, str2)).getParent());
                    if (file.exists()) {
                        return;
                    }
                    file.mkdirs();
                    return;
                } catch (Exception e) {
                    throw new af0(e);
                }
            }
            return;
        }
        throw new af0("Cannot check output directory structure...one of the parameters was null");
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2262if(ArrayList arrayList, kf0 kf0Var, pf0 pf0Var, String str) throws af0 {
        for (int i = 0; i < arrayList.size(); i++) {
            if0 if0Var = (if0) arrayList.get(i);
            if (if0Var != null) {
                try {
                    pf0Var.f3635try = if0Var.f2077catch;
                    String str2 = str.endsWith(tf0.f4678do) ? str : str + tf0.f4678do;
                    if (if0Var.f2078class) {
                        try {
                            String str3 = if0Var.f2077catch;
                            if (sb0.m2412finally(str3)) {
                                File file = new File(str2 + str3);
                                if (!file.exists()) {
                                    file.mkdirs();
                                }
                            }
                        } catch (Exception e) {
                            pf0Var.m2033do();
                            throw new af0(e);
                        }
                    } else {
                        m2261do(if0Var, str2, null);
                        try {
                            new sf0(this.f4044do, if0Var).m2443class(pf0Var, str2, null, kf0Var);
                        } catch (Exception e2) {
                            pf0Var.m2033do();
                            throw new af0(e2);
                        }
                    }
                } catch (af0 e3) {
                    pf0Var.m2033do();
                    throw e3;
                } catch (Exception e4) {
                    pf0Var.m2033do();
                    throw new af0(e4);
                }
            } else {
                throw new af0("fileHeader is null");
            }
        }
    }
}
