package com.apk;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.parser.LitePalParser;
/* compiled from: Header.kt */
/* loaded from: classes7.dex */
public final class ui0 {
    @JvmField

    /* renamed from: do  reason: not valid java name */
    public final int f4903do;
    @JvmField
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final uk0 f4904for;
    @JvmField
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final uk0 f4905if;
    @JvmField
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public static final uk0 f4900new = uk0.f4913try.m2717if(":");
    @JvmField
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public static final uk0 f4902try = uk0.f4913try.m2717if(":status");
    @JvmField
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public static final uk0 f4897case = uk0.f4913try.m2717if(":method");
    @JvmField
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public static final uk0 f4898else = uk0.f4913try.m2717if(":path");
    @JvmField
    @NotNull

    /* renamed from: goto  reason: not valid java name */
    public static final uk0 f4899goto = uk0.f4913try.m2717if(":scheme");
    @JvmField
    @NotNull

    /* renamed from: this  reason: not valid java name */
    public static final uk0 f4901this = uk0.f4913try.m2717if(":authority");

    public ui0(@NotNull uk0 uk0Var, @NotNull uk0 uk0Var2) {
        nd0.m1875new(uk0Var, "name");
        nd0.m1875new(uk0Var2, LitePalParser.ATTR_VALUE);
        this.f4905if = uk0Var;
        this.f4904for = uk0Var2;
        this.f4903do = uk0Var.mo1239for() + 32 + this.f4904for.mo1239for();
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof ui0) {
                ui0 ui0Var = (ui0) obj;
                return nd0.m1870do(this.f4905if, ui0Var.f4905if) && nd0.m1870do(this.f4904for, ui0Var.f4904for);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        uk0 uk0Var = this.f4905if;
        int hashCode = (uk0Var != null ? uk0Var.hashCode() : 0) * 31;
        uk0 uk0Var2 = this.f4904for;
        return hashCode + (uk0Var2 != null ? uk0Var2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return this.f4905if.m2714break() + ": " + this.f4904for.m2714break();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ui0(@NotNull String str, @NotNull String str2) {
        this(uk0.f4913try.m2717if(str), uk0.f4913try.m2717if(str2));
        nd0.m1875new(str, "name");
        nd0.m1875new(str2, LitePalParser.ATTR_VALUE);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ui0(@NotNull uk0 uk0Var, @NotNull String str) {
        this(uk0Var, uk0.f4913try.m2717if(str));
        nd0.m1875new(uk0Var, "name");
        nd0.m1875new(str, LitePalParser.ATTR_VALUE);
    }
}
