package com.bytedance.pangle.activity;

import android.app.Activity;
import android.view.View;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes8.dex */
public final class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final Activity f11291a;
    public final String b;
    public final int c;
    public Method d;

    public a(@NonNull Activity activity, int i, @NonNull String str) {
        this.f11291a = activity;
        this.b = str;
        this.c = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(@NonNull View view) {
        if (this.d == null) {
            try {
                Method method = this.f11291a.getClass().getMethod(this.b, View.class);
                if (method != null) {
                    this.d = method;
                }
            } catch (NoSuchMethodException unused) {
            }
            throw new IllegalStateException("Could not find method " + this.b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.c);
        }
        try {
            this.d.invoke(this.f11291a, view);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
        } catch (InvocationTargetException e2) {
            throw new IllegalStateException("Could not execute method for android:onClick", e2);
        }
    }
}
