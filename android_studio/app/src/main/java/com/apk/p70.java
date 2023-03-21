package com.apk;

import android.content.SharedPreferences;
import com.tencent.mmkv.MMKV;

/* compiled from: TrBaseAd.java */
/* loaded from: classes7.dex */
public abstract class p70 {

    /* renamed from: do  reason: not valid java name */
    public String f3593do;

    /* renamed from: do  reason: not valid java name */
    public void m2023do(b70 b70Var) {
        if (b70Var != null) {
            b70Var.mo159if(83002, "activity或者其它参数为空");
        }
        k40.m1463this("activity或者其它参数为空");
    }

    /* renamed from: for  reason: not valid java name */
    public void m2024for(b70 b70Var) {
        if (b70Var != null) {
            b70Var.mo159if(83004, "没有网络");
        }
        k40.m1463this("没有网络");
    }

    /* renamed from: if  reason: not valid java name */
    public void m2025if(b70 b70Var) {
        if (b70Var != null) {
            b70Var.mo159if(83000, "no init，please check...");
        }
        k40.m1463this("no init，please check...");
    }

    /* renamed from: new  reason: not valid java name */
    public boolean m2026new(int i, int i2, b70 b70Var) {
        if (i != 0) {
            if (i < 1000) {
                i *= 1000;
            }
            String m998final = Cgoto.m998final(new StringBuilder(), this.f3593do, "#", "AD_STRATEGY_TYPE_REQ_INTERVAL_KEY");
            long currentTimeMillis = System.currentTimeMillis();
            if (Math.abs(currentTimeMillis - g50.m945if(m998final, 0L)) < i) {
                if (b70Var != null) {
                    b70Var.mo157case();
                }
                return true;
            }
            try {
                MMKV mmkv = g50.f1517do;
                if (mmkv != null) {
                    mmkv.putLong(m998final, currentTimeMillis);
                } else {
                    v70 m2781if = v70.m2781if();
                    SharedPreferences.Editor editor = m2781if.f5028if;
                    if (editor != null) {
                        editor.putLong(m998final, currentTimeMillis);
                    }
                    m2781if.m2782do();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (i2 != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(k40.m1462switch());
            sb.append("#");
            String m998final2 = Cgoto.m998final(sb, this.f3593do, "#", "AD_STRATEGY_TYPE_REQ_DAY_MAX_KEY");
            int m943do = g50.m943do(m998final2, 0);
            if (m943do >= i2) {
                if (b70Var != null) {
                    b70Var.mo158else();
                }
                return true;
            }
            g50.m946new(m998final2, m943do + 1);
        }
        return false;
    }
}
