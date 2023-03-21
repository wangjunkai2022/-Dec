package com.apk;

import org.jetbrains.annotations.NotNull;

/* compiled from: Lambda.kt */
/* loaded from: classes7.dex */
public abstract class od0<R> implements Object<R> {
    public od0(int i) {
    }

    @Override // java.lang.Object
    @NotNull
    public String toString() {
        if (rd0.f4033do != null) {
            String obj = getClass().getGenericInterfaces()[0].toString();
            if (obj.startsWith("kotlin.jvm.functions.")) {
                obj = obj.substring(21);
            }
            nd0.m1872for(obj, "Reflection.renderLambdaToString(this)");
            return obj;
        }
        throw null;
    }
}
