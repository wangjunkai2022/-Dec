package com.apk;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import java.util.HashMap;
import java.util.Map;
/* compiled from: RequestManagerRetriever.java */
/* loaded from: classes8.dex */
public class hq implements Handler.Callback {

    /* renamed from: case  reason: not valid java name */
    public static final Cif f1956case = new Cdo();

    /* renamed from: do  reason: not valid java name */
    public volatile qi f1957do;

    /* renamed from: new  reason: not valid java name */
    public final Handler f1960new;

    /* renamed from: try  reason: not valid java name */
    public final Cif f1961try;
    @VisibleForTesting

    /* renamed from: if  reason: not valid java name */
    public final Map<FragmentManager, gq> f1959if = new HashMap();
    @VisibleForTesting

    /* renamed from: for  reason: not valid java name */
    public final Map<androidx.fragment.app.FragmentManager, kq> f1958for = new HashMap();

    /* compiled from: RequestManagerRetriever.java */
    /* renamed from: com.apk.hq$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Cif {
        @Override // com.apk.hq.Cif
        @NonNull
        /* renamed from: do */
        public qi mo959do(@NonNull ii iiVar, @NonNull dq dqVar, @NonNull iq iqVar, @NonNull Context context) {
            return new qi(iiVar, dqVar, iqVar, context);
        }
    }

    /* compiled from: RequestManagerRetriever.java */
    /* renamed from: com.apk.hq$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        @NonNull
        /* renamed from: do */
        qi mo959do(@NonNull ii iiVar, @NonNull dq dqVar, @NonNull iq iqVar, @NonNull Context context);
    }

    public hq(@Nullable Cif cif) {
        new ArrayMap();
        new ArrayMap();
        new Bundle();
        this.f1961try = cif == null ? f1956case : cif;
        this.f1960new = new Handler(Looper.getMainLooper(), this);
    }

    /* renamed from: case  reason: not valid java name */
    public static boolean m1157case(Context context) {
        Activity m1158do = m1158do(context);
        return m1158do == null || !m1158do.isFinishing();
    }

    @Nullable
    /* renamed from: do  reason: not valid java name */
    public static Activity m1158do(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m1158do(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @NonNull
    /* renamed from: for  reason: not valid java name */
    public qi m1159for(@NonNull Context context) {
        if (context != null) {
            if (gs.m1033class() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    FragmentActivity fragmentActivity = (FragmentActivity) context;
                    if (gs.m1032catch()) {
                        return m1159for(fragmentActivity.getApplicationContext());
                    }
                    if (!fragmentActivity.isDestroyed()) {
                        kq m1162try = m1162try(fragmentActivity.getSupportFragmentManager(), null, m1157case(fragmentActivity));
                        qi qiVar = m1162try.f2637try;
                        if (qiVar == null) {
                            qi mo959do = this.f1961try.mo959do(ii.m1220new(fragmentActivity), m1162try.f2633do, m1162try.f2635if, fragmentActivity);
                            m1162try.f2637try = mo959do;
                            return mo959do;
                        }
                        return qiVar;
                    }
                    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                } else if (context instanceof Activity) {
                    return m1160if((Activity) context);
                } else {
                    if (context instanceof ContextWrapper) {
                        ContextWrapper contextWrapper = (ContextWrapper) context;
                        if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                            return m1159for(contextWrapper.getBaseContext());
                        }
                    }
                }
            }
            if (this.f1957do == null) {
                synchronized (this) {
                    if (this.f1957do == null) {
                        this.f1957do = this.f1961try.mo959do(ii.m1220new(context.getApplicationContext()), new xp(), new cq(), context.getApplicationContext());
                    }
                }
            }
            return this.f1957do;
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        Object remove;
        Object obj2;
        int i = message.what;
        Object obj3 = null;
        boolean z = true;
        if (i == 1) {
            obj = (FragmentManager) message.obj;
            remove = this.f1959if.remove(obj);
        } else if (i == 2) {
            obj = (androidx.fragment.app.FragmentManager) message.obj;
            remove = this.f1958for.remove(obj);
        } else {
            z = false;
            obj2 = null;
            if (z && obj3 == null && Log.isLoggable("RMRetriever", 5)) {
                String str = "Failed to remove expected request manager fragment, manager: " + obj2;
            }
            return z;
        }
        Object obj4 = obj;
        obj3 = remove;
        obj2 = obj4;
        if (z) {
            String str2 = "Failed to remove expected request manager fragment, manager: " + obj2;
        }
        return z;
    }

    @NonNull
    /* renamed from: if  reason: not valid java name */
    public qi m1160if(@NonNull Activity activity) {
        if (gs.m1032catch()) {
            return m1159for(activity.getApplicationContext());
        }
        if (!activity.isDestroyed()) {
            gq m1161new = m1161new(activity.getFragmentManager(), null, m1157case(activity));
            qi qiVar = m1161new.f1624new;
            if (qiVar == null) {
                qi mo959do = this.f1961try.mo959do(ii.m1220new(activity), m1161new.f1621do, m1161new.f1623if, activity);
                m1161new.f1624new = mo959do;
                return mo959do;
            }
            return qiVar;
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    @NonNull
    /* renamed from: new  reason: not valid java name */
    public final gq m1161new(@NonNull FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        gq gqVar = (gq) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (gqVar == null && (gqVar = this.f1959if.get(fragmentManager)) == null) {
            gqVar = new gq();
            gqVar.f1620case = fragment;
            if (fragment != null && fragment.getActivity() != null) {
                gqVar.m1027do(fragment.getActivity());
            }
            if (z) {
                gqVar.f1621do.m2933new();
            }
            this.f1959if.put(fragmentManager, gqVar);
            fragmentManager.beginTransaction().add(gqVar, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f1960new.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return gqVar;
    }

    @NonNull
    /* renamed from: try  reason: not valid java name */
    public final kq m1162try(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable androidx.fragment.app.Fragment fragment, boolean z) {
        kq kqVar = (kq) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (kqVar == null && (kqVar = this.f1958for.get(fragmentManager)) == null) {
            kqVar = new kq();
            kqVar.f2632case = fragment;
            if (fragment != null && fragment.getContext() != null) {
                androidx.fragment.app.Fragment fragment2 = fragment;
                while (fragment2.getParentFragment() != null) {
                    fragment2 = fragment2.getParentFragment();
                }
                androidx.fragment.app.FragmentManager fragmentManager2 = fragment2.getFragmentManager();
                if (fragmentManager2 != null) {
                    kqVar.a(fragment.getContext(), fragmentManager2);
                }
            }
            if (z) {
                kqVar.f2633do.m2933new();
            }
            this.f1958for.put(fragmentManager, kqVar);
            fragmentManager.beginTransaction().add(kqVar, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f1960new.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return kqVar;
    }
}
