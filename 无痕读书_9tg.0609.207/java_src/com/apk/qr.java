package com.apk;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.R$id;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: ViewTarget.java */
@Deprecated
/* loaded from: classes8.dex */
public abstract class qr<T extends View, Z> extends gr<Z> {

    /* renamed from: new  reason: not valid java name */
    public static int f3916new = R$id.glide_custom_view_target_tag;

    /* renamed from: for  reason: not valid java name */
    public final Cdo f3917for;

    /* renamed from: if  reason: not valid java name */
    public final T f3918if;

    /* compiled from: ViewTarget.java */
    @VisibleForTesting
    /* renamed from: com.apk.qr$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo {
        @Nullable
        @VisibleForTesting

        /* renamed from: new  reason: not valid java name */
        public static Integer f3919new;

        /* renamed from: do  reason: not valid java name */
        public final View f3920do;
        @Nullable

        /* renamed from: for  reason: not valid java name */
        public ViewTreeObserver$OnPreDrawListenerC0074do f3921for;

        /* renamed from: if  reason: not valid java name */
        public final List<or> f3922if = new ArrayList();

        /* compiled from: ViewTarget.java */
        /* renamed from: com.apk.qr$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class ViewTreeObserver$OnPreDrawListenerC0074do implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: do  reason: not valid java name */
            public final WeakReference<Cdo> f3923do;

            public ViewTreeObserver$OnPreDrawListenerC0074do(@NonNull Cdo cdo) {
                this.f3923do = new WeakReference<>(cdo);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    String str = "OnGlobalLayoutListener called attachStateListener=" + this;
                }
                Cdo cdo = this.f3923do.get();
                if (cdo == null || cdo.f3922if.isEmpty()) {
                    return true;
                }
                int m2181new = cdo.m2181new();
                int m2179for = cdo.m2179for();
                if (cdo.m2182try(m2181new, m2179for)) {
                    Iterator it = new ArrayList(cdo.f3922if).iterator();
                    while (it.hasNext()) {
                        ((or) it.next()).mo886if(m2181new, m2179for);
                    }
                    cdo.m2178do();
                    return true;
                }
                return true;
            }
        }

        public Cdo(@NonNull View view) {
            this.f3920do = view;
        }

        /* renamed from: do  reason: not valid java name */
        public void m2178do() {
            ViewTreeObserver viewTreeObserver = this.f3920do.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f3921for);
            }
            this.f3921for = null;
            this.f3922if.clear();
        }

        /* renamed from: for  reason: not valid java name */
        public final int m2179for() {
            int paddingBottom = this.f3920do.getPaddingBottom() + this.f3920do.getPaddingTop();
            ViewGroup.LayoutParams layoutParams = this.f3920do.getLayoutParams();
            return m2180if(this.f3920do.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingBottom);
        }

        /* renamed from: if  reason: not valid java name */
        public final int m2180if(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f3920do.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            Log.isLoggable("ViewTarget", 4);
            Context context = this.f3920do.getContext();
            if (f3919new == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                eg.m593else(windowManager, "Argument must not be null");
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f3919new = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f3919new.intValue();
        }

        /* renamed from: new  reason: not valid java name */
        public final int m2181new() {
            int paddingRight = this.f3920do.getPaddingRight() + this.f3920do.getPaddingLeft();
            ViewGroup.LayoutParams layoutParams = this.f3920do.getLayoutParams();
            return m2180if(this.f3920do.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        }

        /* renamed from: try  reason: not valid java name */
        public final boolean m2182try(int i, int i2) {
            if (i > 0 || i == Integer.MIN_VALUE) {
                if (i2 > 0 || i2 == Integer.MIN_VALUE) {
                    return true;
                }
            }
            return false;
        }
    }

    public qr(@NonNull T t) {
        eg.m593else(t, "Argument must not be null");
        this.f3918if = t;
        this.f3917for = new Cdo(t);
    }

    @Override // com.apk.pr
    @CallSuper
    /* renamed from: break */
    public void mo268break(@NonNull or orVar) {
        Cdo cdo = this.f3917for;
        int m2181new = cdo.m2181new();
        int m2179for = cdo.m2179for();
        if (cdo.m2182try(m2181new, m2179for)) {
            orVar.mo886if(m2181new, m2179for);
            return;
        }
        if (!cdo.f3922if.contains(orVar)) {
            cdo.f3922if.add(orVar);
        }
        if (cdo.f3921for == null) {
            ViewTreeObserver viewTreeObserver = cdo.f3920do.getViewTreeObserver();
            Cdo.ViewTreeObserver$OnPreDrawListenerC0074do viewTreeObserver$OnPreDrawListenerC0074do = new Cdo.ViewTreeObserver$OnPreDrawListenerC0074do(cdo);
            cdo.f3921for = viewTreeObserver$OnPreDrawListenerC0074do;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0074do);
        }
    }

    @Override // com.apk.pr
    @CallSuper
    /* renamed from: do */
    public void mo271do(@NonNull or orVar) {
        this.f3917for.f3922if.remove(orVar);
    }

    @Override // com.apk.gr, com.apk.pr
    /* renamed from: for */
    public void mo273for(@Nullable zq zqVar) {
        this.f3918if.setTag(f3916new, zqVar);
    }

    @Override // com.apk.gr, com.apk.pr
    @Nullable
    /* renamed from: goto */
    public zq mo274goto() {
        Object tag = this.f3918if.getTag(f3916new);
        if (tag != null) {
            if (tag instanceof zq) {
                return (zq) tag;
            }
            throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
        }
        return null;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Target for: ");
        m1016super.append(this.f3918if);
        return m1016super.toString();
    }
}
