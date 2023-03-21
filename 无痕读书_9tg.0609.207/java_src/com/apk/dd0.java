package com.apk;

import java.lang.reflect.Method;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlatformImplementations.kt */
/* loaded from: classes7.dex */
public class dd0 {

    /* compiled from: PlatformImplementations.kt */
    /* renamed from: com.apk.dd0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        @JvmField
        @Nullable

        /* renamed from: do  reason: not valid java name */
        public static final Method f848do;

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
            if (com.apk.nd0.m1870do(r8.length == 1 ? r8[0] : null, java.lang.Throwable.class) != false) goto L11;
         */
        static {
            /*
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableMethods"
                com.apk.nd0.m1872for(r1, r2)
                int r2 = r1.length
                r3 = 0
                r4 = 0
            Le:
                java.lang.String r5 = "it"
                r6 = 0
                if (r4 >= r2) goto L47
                r7 = r1[r4]
                com.apk.nd0.m1872for(r7, r5)
                java.lang.String r8 = r7.getName()
                java.lang.String r9 = "addSuppressed"
                boolean r8 = com.apk.nd0.m1870do(r8, r9)
                r9 = 1
                if (r8 == 0) goto L3f
                java.lang.Class[] r8 = r7.getParameterTypes()
                java.lang.String r10 = "it.parameterTypes"
                com.apk.nd0.m1872for(r8, r10)
                java.lang.String r10 = "$this$singleOrNull"
                com.apk.nd0.m1875new(r8, r10)
                int r10 = r8.length
                if (r10 != r9) goto L38
                r6 = r8[r3]
            L38:
                boolean r6 = com.apk.nd0.m1870do(r6, r0)
                if (r6 == 0) goto L3f
                goto L40
            L3f:
                r9 = 0
            L40:
                if (r9 == 0) goto L44
                r6 = r7
                goto L47
            L44:
                int r4 = r4 + 1
                goto Le
            L47:
                com.apk.dd0.Cdo.f848do = r6
                int r0 = r1.length
            L4a:
                if (r3 >= r0) goto L61
                r2 = r1[r3]
                com.apk.nd0.m1872for(r2, r5)
                java.lang.String r2 = r2.getName()
                java.lang.String r4 = "getSuppressed"
                boolean r2 = com.apk.nd0.m1870do(r2, r4)
                if (r2 == 0) goto L5e
                goto L61
            L5e:
                int r3 = r3 + 1
                goto L4a
            L61:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.dd0.Cdo.<clinit>():void");
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void mo447do(@NotNull Throwable th, @NotNull Throwable th2) {
        nd0.m1875new(th, "cause");
        nd0.m1875new(th2, "exception");
        Method method = Cdo.f848do;
        if (method != null) {
            method.invoke(th, th2);
        }
    }
}
