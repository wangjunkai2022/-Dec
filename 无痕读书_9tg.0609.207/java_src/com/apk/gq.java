package com.apk;

import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashSet;
import java.util.Set;
/* compiled from: RequestManagerFragment.java */
@Deprecated
/* loaded from: classes8.dex */
public class gq extends Fragment {
    @Nullable

    /* renamed from: case  reason: not valid java name */
    public Fragment f1620case;

    /* renamed from: do  reason: not valid java name */
    public final wp f1621do;

    /* renamed from: for  reason: not valid java name */
    public final Set<gq> f1622for;

    /* renamed from: if  reason: not valid java name */
    public final iq f1623if;
    @Nullable

    /* renamed from: new  reason: not valid java name */
    public qi f1624new;
    @Nullable

    /* renamed from: try  reason: not valid java name */
    public gq f1625try;

    /* compiled from: RequestManagerFragment.java */
    /* renamed from: com.apk.gq$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements iq {
        public Cdo() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + gq.this + "}";
        }
    }

    public gq() {
        wp wpVar = new wp();
        this.f1623if = new Cdo();
        this.f1622for = new HashSet();
        this.f1621do = wpVar;
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1027do(@NonNull Activity activity) {
        m1028if();
        hq hqVar = ii.m1220new(activity).f2116else;
        if (hqVar != null) {
            gq m1161new = hqVar.m1161new(activity.getFragmentManager(), null, hq.m1157case(activity));
            this.f1625try = m1161new;
            if (equals(m1161new)) {
                return;
            }
            this.f1625try.f1622for.add(this);
            return;
        }
        throw null;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m1028if() {
        gq gqVar = this.f1625try;
        if (gqVar != null) {
            gqVar.f1622for.remove(this);
            this.f1625try = null;
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m1027do(activity);
        } catch (IllegalStateException unused) {
            Log.isLoggable("RMFragment", 5);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f1621do.m2932for();
        m1028if();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m1028if();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f1621do.m2933new();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f1621do.m2934try();
    }

    @Override // android.app.Fragment
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this.f1620case;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
