package com.apk;

import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Indicator.java */
/* loaded from: classes8.dex */
public interface b40 {

    /* compiled from: Indicator.java */
    /* renamed from: com.apk.b40$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        /* renamed from: do  reason: not valid java name */
        void mo146do();
    }

    /* compiled from: Indicator.java */
    /* renamed from: com.apk.b40$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cfor {
        /* renamed from: do  reason: not valid java name */
        boolean m147do(View view, int i);
    }

    /* compiled from: Indicator.java */
    /* renamed from: com.apk.b40$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static abstract class Cif {

        /* renamed from: do  reason: not valid java name */
        public Set<Cdo> f242do = new LinkedHashSet(2);

        /* renamed from: do  reason: not valid java name */
        public abstract int mo148do();

        /* renamed from: for  reason: not valid java name */
        public void m149for() {
            for (Cdo cdo : this.f242do) {
                cdo.mo146do();
            }
        }

        /* renamed from: if  reason: not valid java name */
        public abstract View mo150if(int i, View view, ViewGroup viewGroup);
    }

    /* compiled from: Indicator.java */
    /* renamed from: com.apk.b40$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cnew {
        /* renamed from: do  reason: not valid java name */
        void mo151do(View view, int i, int i2);
    }

    /* compiled from: Indicator.java */
    /* renamed from: com.apk.b40$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Ctry {
    }

    int getCurrentItem();

    int getPreSelectItem();

    /* renamed from: if  reason: not valid java name */
    void mo145if(int i, boolean z);

    void onPageScrollStateChanged(int i);

    void onPageScrolled(int i, float f, int i2);

    void setAdapter(Cif cif);

    void setItemClickable(boolean z);

    void setOnItemSelectListener(Cnew cnew);

    void setOnTransitionListener(Ctry ctry);

    void setScrollBar(h40 h40Var);
}
