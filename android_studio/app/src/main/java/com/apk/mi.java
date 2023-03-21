package com.apk;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.f00;
import java.util.List;
import java.util.Queue;

/* compiled from: ListPreloader.java */
/* loaded from: classes8.dex */
public class mi<T> implements AbsListView.OnScrollListener {

    /* renamed from: case  reason: not valid java name */
    public int f3040case;

    /* renamed from: do  reason: not valid java name */
    public final int f3041do;

    /* renamed from: else  reason: not valid java name */
    public int f3042else;

    /* renamed from: for  reason: not valid java name */
    public final qi f3043for;

    /* renamed from: if  reason: not valid java name */
    public final Cnew f3045if;

    /* renamed from: new  reason: not valid java name */
    public final Cdo<T> f3046new;

    /* renamed from: this  reason: not valid java name */
    public int f3047this;

    /* renamed from: try  reason: not valid java name */
    public final Cif<T> f3048try;

    /* renamed from: goto  reason: not valid java name */
    public int f3044goto = -1;

    /* renamed from: break  reason: not valid java name */
    public boolean f3039break = true;

    /* compiled from: ListPreloader.java */
    /* renamed from: com.apk.mi$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo<U> {
    }

    /* compiled from: ListPreloader.java */
    /* renamed from: com.apk.mi$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cfor implements pr<Object> {

        /* renamed from: do  reason: not valid java name */
        public int f3049do;
        @Nullable

        /* renamed from: for  reason: not valid java name */
        public zq f3050for;

        /* renamed from: if  reason: not valid java name */
        public int f3051if;

        @Override // com.apk.pr
        /* renamed from: break */
        public void mo268break(@NonNull or orVar) {
            orVar.mo886if(this.f3051if, this.f3049do);
        }

        @Override // com.apk.pr
        /* renamed from: do */
        public void mo271do(@NonNull or orVar) {
        }

        @Override // com.apk.pr
        /* renamed from: else */
        public void mo272else(@Nullable Drawable drawable) {
        }

        @Override // com.apk.pr
        /* renamed from: for */
        public void mo273for(@Nullable zq zqVar) {
            this.f3050for = zqVar;
        }

        @Override // com.apk.pr
        @Nullable
        /* renamed from: goto */
        public zq mo274goto() {
            return this.f3050for;
        }

        @Override // com.apk.pr
        /* renamed from: if */
        public void mo275if(@NonNull Object obj, @Nullable sr<? super Object> srVar) {
        }

        @Override // com.apk.eq
        public void onDestroy() {
        }

        @Override // com.apk.eq
        public void onStart() {
        }

        @Override // com.apk.eq
        public void onStop() {
        }

        @Override // com.apk.pr
        /* renamed from: this */
        public void mo277this(@Nullable Drawable drawable) {
        }

        @Override // com.apk.pr
        /* renamed from: try */
        public void mo278try(@Nullable Drawable drawable) {
        }
    }

    /* compiled from: ListPreloader.java */
    /* renamed from: com.apk.mi$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif<T> {
    }

    /* compiled from: ListPreloader.java */
    /* renamed from: com.apk.mi$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cnew {

        /* renamed from: do  reason: not valid java name */
        public final Queue<Cfor> f3052do;

        public Cnew(int i) {
            this.f3052do = gs.m1041new(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.f3052do.offer(new Cfor());
            }
        }
    }

    public mi(@NonNull qi qiVar, @NonNull Cdo<T> cdo, @NonNull Cif<T> cif, int i) {
        this.f3043for = qiVar;
        this.f3046new = cdo;
        this.f3048try = cif;
        this.f3041do = i;
        this.f3045if = new Cnew(i + 1);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1717do(int i, boolean z) {
        int min;
        int i2;
        if (this.f3039break != z) {
            this.f3039break = z;
            for (int i3 = 0; i3 < this.f3045if.f3052do.size(); i3++) {
                qi qiVar = this.f3043for;
                Cnew cnew = this.f3045if;
                Cfor poll = cnew.f3052do.poll();
                cnew.f3052do.offer(poll);
                poll.f3051if = 0;
                poll.f3049do = 0;
                qiVar.m2132const(poll);
            }
        }
        int i4 = (z ? this.f3041do : -this.f3041do) + i;
        if (i < i4) {
            i2 = Math.max(this.f3040case, i);
            min = i4;
        } else {
            min = Math.min(this.f3042else, i);
            i2 = i4;
        }
        int min2 = Math.min(this.f3047this, min);
        int min3 = Math.min(this.f3047this, Math.max(0, i2));
        if (i < i4) {
            for (int i5 = min3; i5 < min2; i5++) {
                m1719if(((f00.Cthis) this.f3046new).m745do(i5), i5, true);
            }
        } else {
            for (int i6 = min2 - 1; i6 >= min3; i6--) {
                m1719if(((f00.Cthis) this.f3046new).m745do(i6), i6, false);
            }
        }
        this.f3042else = min3;
        this.f3040case = min2;
    }

    /* renamed from: for  reason: not valid java name */
    public final void m1718for(@Nullable T t, int i, int i2) {
        if (t == null || ((bs) this.f3048try).f459do == null) {
            return;
        }
        f00.Cthis cthis = (f00.Cthis) this.f3046new;
        if (cthis != null) {
            String str = (String) t;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            u.m2643const(f00.this.f3971if, str);
            return;
        }
        throw null;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m1719if(List<T> list, int i, boolean z) {
        int size = list.size();
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                m1718for(list.get(i2), i, i2);
            }
            return;
        }
        for (int i3 = size - 1; i3 >= 0; i3--) {
            m1718for(list.get(i3), i, i3);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.f3047this = i3;
        int i4 = this.f3044goto;
        if (i > i4) {
            m1717do(i2 + i, true);
        } else if (i < i4) {
            m1717do(i, false);
        }
        this.f3044goto = i;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
