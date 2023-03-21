package com.apk;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import skin.support.annotation.NonNull;

/* compiled from: SkinCompatViewInflater.java */
/* loaded from: classes7.dex */
public class cq0 {

    /* renamed from: do  reason: not valid java name */
    public final Object[] f745do = new Object[2];

    /* renamed from: if  reason: not valid java name */
    public static final Class<?>[] f742if = {Context.class, AttributeSet.class};

    /* renamed from: for  reason: not valid java name */
    public static final int[] f741for = {16843375};

    /* renamed from: new  reason: not valid java name */
    public static final String[] f743new = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: try  reason: not valid java name */
    public static final Map<String, Constructor<? extends View>> f744try = new fq0();

    /* compiled from: SkinCompatViewInflater.java */
    /* renamed from: com.apk.cq0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo implements View.OnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final View f746do;

        /* renamed from: for  reason: not valid java name */
        public Method f747for;

        /* renamed from: if  reason: not valid java name */
        public final String f748if;

        /* renamed from: new  reason: not valid java name */
        public Context f749new;

        public Cdo(@NonNull View view, @NonNull String str) {
            this.f746do = view;
            this.f748if = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NonNull View view) {
            String sb;
            Method method;
            if (this.f747for == null) {
                Context context = this.f746do.getContext();
                while (context != null) {
                    try {
                        if (!context.isRestricted() && (method = context.getClass().getMethod(this.f748if, View.class)) != null) {
                            this.f747for = method;
                            this.f749new = context;
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                    context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
                }
                int id = this.f746do.getId();
                if (id == -1) {
                    sb = "";
                } else {
                    StringBuilder m1016super = Cgoto.m1016super(" with id '");
                    m1016super.append(this.f746do.getContext().getResources().getResourceEntryName(id));
                    m1016super.append("'");
                    sb = m1016super.toString();
                }
                StringBuilder m1016super2 = Cgoto.m1016super("Could not find method ");
                m1016super2.append(this.f748if);
                m1016super2.append("(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                m1016super2.append(this.f746do.getClass());
                m1016super2.append(sb);
                throw new IllegalStateException(m1016super2.toString());
            }
            try {
                this.f747for.invoke(this.f749new, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final View m393do(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        Constructor constructor = (Constructor) ((iq0) f744try).get(str);
        if (constructor == null) {
            try {
                ClassLoader classLoader = context.getClassLoader();
                if (str2 != null) {
                    str3 = str2 + str;
                } else {
                    str3 = str;
                }
                constructor = classLoader.loadClass(str3).asSubclass(View.class).getConstructor(f742if);
                ((iq0) f744try).put(str, constructor);
            } catch (Exception unused) {
                return null;
            }
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f745do);
    }
}
