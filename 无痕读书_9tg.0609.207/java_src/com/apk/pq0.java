package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.content.res.AppCompatResources;
import com.apk.yp0;
import java.util.WeakHashMap;
/* compiled from: SkinCompatVectorResources.java */
/* loaded from: classes7.dex */
public class pq0 implements qq0 {

    /* renamed from: do  reason: not valid java name */
    public static pq0 f3731do;

    public pq0() {
        lq0.m1663new().f2880case.add(this);
    }

    /* renamed from: do  reason: not valid java name */
    public static Drawable m2073do(Context context, int i) {
        Drawable mo509if;
        int m1666try;
        Drawable m1906for;
        ColorStateList m1907if;
        ColorStateList m1907if2;
        if (m2074if() != null) {
            if (AppCompatDelegate.isCompatVectorFromResourcesEnabled()) {
                if (!lq0.m1663new().f2885try) {
                    try {
                        return kq0.m1549new().m1550case(context, i);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                nq0 nq0Var = nq0.f3289this;
                if (!nq0Var.f3296new && (m1907if2 = nq0Var.m1907if(i)) != null) {
                    return new ColorDrawable(m1907if2.getDefaultColor());
                }
                nq0 nq0Var2 = nq0.f3289this;
                if (nq0Var2.f3294goto || (m1906for = nq0Var2.m1906for(i)) == null) {
                    lq0 m1663new = lq0.m1663new();
                    yp0.Cfor cfor = m1663new.f2884new;
                    mo509if = cfor != null ? cfor.mo509if(context, m1663new.f2882for, i) : null;
                    if (mo509if == null) {
                        return AppCompatResources.getDrawable(context, i);
                    }
                    return mo509if;
                }
                return m1906for;
            }
            nq0 nq0Var3 = nq0.f3289this;
            if (!nq0Var3.f3296new && (m1907if = nq0Var3.m1907if(i)) != null) {
                return new ColorDrawable(m1907if.getDefaultColor());
            }
            nq0 nq0Var4 = nq0.f3289this;
            if (nq0Var4.f3294goto || (m1906for = nq0Var4.m1906for(i)) == null) {
                lq0 m1663new2 = lq0.m1663new();
                yp0.Cfor cfor2 = m1663new2.f2884new;
                mo509if = cfor2 != null ? cfor2.mo509if(context, m1663new2.f2882for, i) : null;
                if (mo509if == null) {
                    if (!lq0.m1663new().f2885try && (m1666try = lq0.m1663new().m1666try(context, i)) != 0) {
                        return lq0.m1663new().f2881do.getDrawable(m1666try);
                    }
                    return AppCompatResources.getDrawable(context, i);
                }
                return mo509if;
            }
            return m1906for;
        }
        throw null;
    }

    /* renamed from: if  reason: not valid java name */
    public static pq0 m2074if() {
        if (f3731do == null) {
            synchronized (pq0.class) {
                if (f3731do == null) {
                    f3731do = new pq0();
                }
            }
        }
        return f3731do;
    }

    @Override // com.apk.qq0
    public void clear() {
        kq0 m1549new = kq0.m1549new();
        m1549new.f2654try.clear();
        SparseArray<String> sparseArray = m1549new.f2651for;
        if (sparseArray != null) {
            sparseArray.clear();
        }
        WeakHashMap<Context, SparseArray<ColorStateList>> weakHashMap = m1549new.f2649do;
        if (weakHashMap != null) {
            weakHashMap.clear();
        }
        kq0.f2639break.evictAll();
    }
}
