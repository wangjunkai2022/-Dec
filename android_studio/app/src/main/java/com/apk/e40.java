package com.apk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.apk.b40;
import com.biquge.ebook.app.app.AppContext;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: IndicatorViewPager.java */
/* loaded from: classes8.dex */
public class e40 {

    /* renamed from: do  reason: not valid java name */
    public b40 f998do;

    /* renamed from: for  reason: not valid java name */
    public Cnew f999for;

    /* renamed from: if  reason: not valid java name */
    public ViewPager f1000if;

    /* compiled from: IndicatorViewPager.java */
    /* renamed from: com.apk.e40$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static abstract class Cdo extends Cfor {

        /* renamed from: do  reason: not valid java name */
        public a40 f1001do;

        /* renamed from: for  reason: not valid java name */
        public b40.Cif f1002for = new Cif();

        /* renamed from: if  reason: not valid java name */
        public boolean f1003if;

        /* compiled from: IndicatorViewPager.java */
        /* renamed from: com.apk.e40$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0064do extends a40 {
            public C0064do(FragmentManager fragmentManager) {
                super(fragmentManager);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                if (Cdo.this.mo538do() == 0) {
                    return 0;
                }
                Cdo cdo = Cdo.this;
                if (cdo.f1003if) {
                    return 2147483547;
                }
                return cdo.mo538do();
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getItemPosition(Object obj) {
                if (Cdo.this != null) {
                    return -1;
                }
                throw null;
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public float getPageWidth(int i) {
                int mo538do = i % Cdo.this.mo538do();
                return 1.0f;
            }
        }

        /* compiled from: IndicatorViewPager.java */
        /* renamed from: com.apk.e40$do$if  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cif extends b40.Cif {
            public Cif() {
            }

            @Override // com.apk.b40.Cif
            /* renamed from: do */
            public int mo148do() {
                return Cdo.this.mo538do();
            }

            @Override // com.apk.b40.Cif
            /* renamed from: if */
            public View mo150if(int i, View view, ViewGroup viewGroup) {
                y30 y30Var = (y30) Cdo.this;
                if (y30Var != null) {
                    if (view == null) {
                        view = LayoutInflater.from(AppContext.f6392case).inflate(R.layout.view_tab_top, viewGroup, false);
                    }
                    TextView textView = (TextView) view;
                    List<String> list = y30Var.f5853new;
                    if (list != null) {
                        textView.setText(list.get(i));
                    } else {
                        String[] strArr = y30Var.f5854try;
                        if (strArr != null) {
                            textView.setText(strArr[i]);
                        }
                    }
                    return view;
                }
                throw null;
            }
        }

        public Cdo(FragmentManager fragmentManager) {
            this.f1001do = new C0064do(fragmentManager);
        }

        /* renamed from: do  reason: not valid java name */
        public abstract int mo538do();
    }

    /* compiled from: IndicatorViewPager.java */
    /* renamed from: com.apk.e40$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static abstract class Cfor implements Cif {
    }

    /* compiled from: IndicatorViewPager.java */
    /* renamed from: com.apk.e40$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
    }

    /* compiled from: IndicatorViewPager.java */
    /* renamed from: com.apk.e40$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cnew {
    }

    public e40(b40 b40Var, ViewPager viewPager) {
        this.f998do = b40Var;
        this.f1000if = viewPager;
        b40Var.setItemClickable(true);
        this.f998do.setOnItemSelectListener(new c40(this));
        this.f1000if.addOnPageChangeListener(new d40(this));
    }

    /* renamed from: do  reason: not valid java name */
    public void m536do(Cif cif) {
        Cdo cdo = (Cdo) cif;
        this.f1000if.setAdapter(cdo.f1001do);
        this.f998do.setAdapter(cdo.f1002for);
    }

    /* renamed from: if  reason: not valid java name */
    public void m537if(int i, boolean z) {
        this.f1000if.setCurrentItem(i, z);
        this.f998do.mo145if(i, z);
    }
}
