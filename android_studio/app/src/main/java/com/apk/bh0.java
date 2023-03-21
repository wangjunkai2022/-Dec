package com.apk;

import com.apk.vg0;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: RequestBody.kt */
/* loaded from: classes7.dex */
public abstract class bh0 {

    /* renamed from: do  reason: not valid java name */
    public static final Cdo f318do = new Cdo(null);

    /* compiled from: RequestBody.kt */
    /* renamed from: com.apk.bh0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {

        /* compiled from: RequestBody.kt */
        /* renamed from: com.apk.bh0$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0061do extends bh0 {

            /* renamed from: for  reason: not valid java name */
            public final /* synthetic */ vg0 f319for;

            /* renamed from: if  reason: not valid java name */
            public final /* synthetic */ byte[] f320if;

            /* renamed from: new  reason: not valid java name */
            public final /* synthetic */ int f321new;

            /* renamed from: try  reason: not valid java name */
            public final /* synthetic */ int f322try;

            public C0061do(byte[] bArr, vg0 vg0Var, int i, int i2) {
                this.f320if = bArr;
                this.f319for = vg0Var;
                this.f321new = i;
                this.f322try = i2;
            }

            @Override // com.apk.bh0
            /* renamed from: do */
            public long mo48do() {
                return this.f321new;
            }

            @Override // com.apk.bh0
            /* renamed from: for */
            public void mo49for(@NotNull sk0 sk0Var) {
                nd0.m1875new(sk0Var, "sink");
                sk0Var.write(this.f320if, this.f322try, this.f321new);
            }

            @Override // com.apk.bh0
            @Nullable
            /* renamed from: if */
            public vg0 mo50if() {
                return this.f319for;
            }
        }

        public Cdo(md0 md0Var) {
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final bh0 m176do(@NotNull String str, @Nullable vg0 vg0Var) {
            nd0.m1875new(str, "$this$toRequestBody");
            Charset charset = ee0.f1037do;
            if (vg0Var != null && (charset = vg0.m2791if(vg0Var, null, 1)) == null) {
                charset = ee0.f1037do;
                vg0.Cdo cdo = vg0.f5075else;
                vg0Var = vg0.Cdo.m2794if(vg0Var + "; charset=utf-8");
            }
            byte[] bytes = str.getBytes(charset);
            nd0.m1872for(bytes, "(this as java.lang.String).getBytes(charset)");
            return m177if(bytes, vg0Var, 0, bytes.length);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        @JvmOverloads
        /* renamed from: if  reason: not valid java name */
        public final bh0 m177if(@NotNull byte[] bArr, @Nullable vg0 vg0Var, int i, int i2) {
            nd0.m1875new(bArr, "$this$toRequestBody");
            jh0.m1348try(bArr.length, i, i2);
            return new C0061do(bArr, vg0Var, i2, i);
        }
    }

    /* renamed from: do */
    public abstract long mo48do() throws IOException;

    /* renamed from: for */
    public abstract void mo49for(@NotNull sk0 sk0Var) throws IOException;

    @Nullable
    /* renamed from: if */
    public abstract vg0 mo50if();
}
