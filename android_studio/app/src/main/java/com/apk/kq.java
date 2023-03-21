package com.apk;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.HashSet;
import java.util.Set;

/* compiled from: SupportRequestManagerFragment.java */
/* loaded from: classes8.dex */
public class kq extends Fragment {
    @Nullable

    /* renamed from: case  reason: not valid java name */
    public Fragment f2632case;

    /* renamed from: do  reason: not valid java name */
    public final wp f2633do;

    /* renamed from: for  reason: not valid java name */
    public final Set<kq> f2634for;

    /* renamed from: if  reason: not valid java name */
    public final iq f2635if;
    @Nullable

    /* renamed from: new  reason: not valid java name */
    public kq f2636new;
    @Nullable

    /* renamed from: try  reason: not valid java name */
    public qi f2637try;

    /* compiled from: SupportRequestManagerFragment.java */
    /* renamed from: com.apk.kq$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements iq {
        public Cdo() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + kq.this + "}";
        }
    }

    public kq() {
        wp wpVar = new wp();
        this.f2635if = new Cdo();
        this.f2634for = new HashSet();
        this.f2633do = wpVar;
    }

    public final void a(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        f();
        hq hqVar = ii.m1220new(context).f2116else;
        if (hqVar != null) {
            kq m1162try = hqVar.m1162try(fragmentManager, null, hq.m1157case(context));
            this.f2636new = m1162try;
            if (equals(m1162try)) {
                return;
            }
            this.f2636new.f2634for.add(this);
            return;
        }
        throw null;
    }

    public final void f() {
        kq kqVar = this.f2636new;
        if (kqVar != null) {
            kqVar.f2634for.remove(this);
            this.f2636new = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Fragment fragment = this;
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        FragmentManager fragmentManager = fragment.getFragmentManager();
        if (fragmentManager == null) {
            return;
        }
        try {
            a(getContext(), fragmentManager);
        } catch (IllegalStateException unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f2633do.m2932for();
        f();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f2632case = null;
        f();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f2633do.m2933new();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f2633do.m2934try();
    }

    @Nullable
    /* renamed from: synchronized  reason: not valid java name */
    public final Fragment m1545synchronized() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f2632case;
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m1545synchronized() + "}";
    }
}
