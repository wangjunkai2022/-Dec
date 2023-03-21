package com.apk;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventListener.kt */
/* loaded from: classes7.dex */
public abstract class og0 {
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final og0 f3415do = new Cdo();

    /* compiled from: EventListener.kt */
    /* renamed from: com.apk.og0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends og0 {
    }

    /* compiled from: EventListener.kt */
    /* renamed from: com.apk.og0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cif {
        @NotNull
        /* renamed from: do */
        og0 mo1126do(@NotNull zf0 zf0Var);
    }

    /* renamed from: do  reason: not valid java name */
    public void m1944do(@NotNull zf0 zf0Var, @NotNull fg0 fg0Var) {
        nd0.m1875new(zf0Var, NotificationCompat.CATEGORY_CALL);
        nd0.m1875new(fg0Var, "connection");
    }

    /* renamed from: for  reason: not valid java name */
    public void m1945for(@NotNull zf0 zf0Var, @NotNull IOException iOException) {
        nd0.m1875new(zf0Var, NotificationCompat.CATEGORY_CALL);
        nd0.m1875new(iOException, "ioe");
    }

    /* renamed from: if  reason: not valid java name */
    public void m1946if(@NotNull zf0 zf0Var, @NotNull IOException iOException) {
        nd0.m1875new(zf0Var, NotificationCompat.CATEGORY_CALL);
        nd0.m1875new(iOException, "ioe");
    }
}
