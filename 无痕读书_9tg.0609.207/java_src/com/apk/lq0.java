package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.TypedValue;
import com.apk.yp0;
import java.util.ArrayList;
import java.util.List;
import skin.support.annotation.AnyRes;
/* compiled from: SkinCompatResources.java */
/* loaded from: classes7.dex */
public class lq0 {

    /* renamed from: else  reason: not valid java name */
    public static volatile lq0 f2879else;

    /* renamed from: do  reason: not valid java name */
    public Resources f2881do;

    /* renamed from: new  reason: not valid java name */
    public yp0.Cfor f2884new;

    /* renamed from: if  reason: not valid java name */
    public String f2883if = "";

    /* renamed from: for  reason: not valid java name */
    public String f2882for = "";

    /* renamed from: try  reason: not valid java name */
    public boolean f2885try = true;

    /* renamed from: case  reason: not valid java name */
    public List<qq0> f2880case = new ArrayList();

    /* renamed from: case  reason: not valid java name */
    public static void m1659case(Context context, @AnyRes int i, TypedValue typedValue, boolean z) {
        int m1666try;
        lq0 m1663new = m1663new();
        if (!m1663new.f2885try && (m1666try = m1663new.m1666try(context, i)) != 0) {
            m1663new.f2881do.getValue(m1666try, typedValue, z);
        } else {
            context.getResources().getValue(i, typedValue, z);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1660do(Context context, int i) {
        int m1666try;
        ColorStateList mo507do;
        ColorStateList m1907if;
        lq0 m1663new = m1663new();
        if (m1663new != null) {
            nq0 nq0Var = nq0.f3289this;
            if (!nq0Var.f3296new && (m1907if = nq0Var.m1907if(i)) != null) {
                return m1907if.getDefaultColor();
            }
            yp0.Cfor cfor = m1663new.f2884new;
            if (cfor != null && (mo507do = cfor.mo507do(context, m1663new.f2882for, i)) != null) {
                return mo507do.getDefaultColor();
            }
            if (!m1663new.f2885try && (m1666try = m1663new.m1666try(context, i)) != 0) {
                return m1663new.f2881do.getColor(m1666try);
            }
            if (Build.VERSION.SDK_INT >= 23) {
                return context.getResources().getColor(i, context.getTheme());
            }
            return context.getResources().getColor(i);
        }
        throw null;
    }

    /* renamed from: for  reason: not valid java name */
    public static Drawable m1661for(Context context, int i) {
        yp0.Cfor cfor;
        int m1666try;
        Drawable mo509if;
        ColorStateList m1907if;
        lq0 m1663new = m1663new();
        if (m1663new != null) {
            nq0 nq0Var = nq0.f3289this;
            if (!nq0Var.f3296new && (m1907if = nq0Var.m1907if(i)) != null) {
                return new ColorDrawable(m1907if.getDefaultColor());
            }
            nq0 nq0Var2 = nq0.f3289this;
            if ((nq0Var2.f3294goto || (mo509if = nq0Var2.m1906for(i)) == null) && ((cfor = m1663new.f2884new) == null || (mo509if = cfor.mo509if(context, m1663new.f2882for, i)) == null)) {
                if (!m1663new.f2885try && (m1666try = m1663new.m1666try(context, i)) != 0) {
                    return m1663new.f2881do.getDrawable(m1666try);
                }
                return context.getResources().getDrawable(i, context.getTheme());
            }
            return mo509if;
        }
        throw null;
    }

    /* renamed from: if  reason: not valid java name */
    public static ColorStateList m1662if(Context context, int i) {
        int m1666try;
        ColorStateList mo508for;
        ColorStateList m1907if;
        lq0 m1663new = m1663new();
        if (m1663new != null) {
            nq0 nq0Var = nq0.f3289this;
            if (nq0Var.f3296new || (m1907if = nq0Var.m1907if(i)) == null) {
                yp0.Cfor cfor = m1663new.f2884new;
                if (cfor == null || (mo508for = cfor.mo508for(context, m1663new.f2882for, i)) == null) {
                    if (!m1663new.f2885try && (m1666try = m1663new.m1666try(context, i)) != 0) {
                        return m1663new.f2881do.getColorStateList(m1666try);
                    }
                    if (Build.VERSION.SDK_INT >= 23) {
                        return context.getResources().getColorStateList(i, context.getTheme());
                    }
                    return context.getResources().getColorStateList(i);
                }
                return mo508for;
            }
            return m1907if;
        }
        throw null;
    }

    /* renamed from: new  reason: not valid java name */
    public static lq0 m1663new() {
        if (f2879else == null) {
            synchronized (lq0.class) {
                if (f2879else == null) {
                    f2879else = new lq0();
                }
            }
        }
        return f2879else;
    }

    /* renamed from: else  reason: not valid java name */
    public void m1664else(yp0.Cfor cfor) {
        this.f2881do = yp0.f6038class.getContext().getResources();
        this.f2883if = "";
        this.f2882for = "";
        this.f2884new = cfor;
        this.f2885try = true;
        nq0.f3289this.m1905do();
        for (qq0 qq0Var : this.f2880case) {
            qq0Var.clear();
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public void m1665goto(Resources resources, String str, String str2, yp0.Cfor cfor) {
        if (resources != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.f2881do = resources;
            this.f2883if = str;
            this.f2882for = str2;
            this.f2884new = cfor;
            this.f2885try = false;
            nq0.f3289this.m1905do();
            for (qq0 qq0Var : this.f2880case) {
                qq0Var.clear();
            }
            return;
        }
        m1664else(cfor);
    }

    /* renamed from: try  reason: not valid java name */
    public int m1666try(Context context, int i) {
        try {
            String mo394try = this.f2884new != null ? this.f2884new.mo394try(context, this.f2882for, i) : null;
            if (TextUtils.isEmpty(mo394try)) {
                mo394try = context.getResources().getResourceEntryName(i);
            }
            return this.f2881do.getIdentifier(mo394try, context.getResources().getResourceTypeName(i), this.f2883if);
        } catch (Exception unused) {
            return 0;
        }
    }
}
