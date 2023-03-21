package com.apk;

import java.io.Serializable;
import java.util.regex.Pattern;
import org.jetbrains.annotations.NotNull;
/* compiled from: Regex.kt */
/* loaded from: classes7.dex */
public final class ge0 implements Serializable {

    /* renamed from: do  reason: not valid java name */
    public final Pattern f1555do;

    public ge0(@NotNull String str) {
        nd0.m1875new(str, "pattern");
        Pattern compile = Pattern.compile(str);
        nd0.m1872for(compile, "Pattern.compile(pattern)");
        nd0.m1875new(compile, "nativePattern");
        this.f1555do = compile;
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m956do(@NotNull CharSequence charSequence) {
        nd0.m1875new(charSequence, "input");
        return this.f1555do.matcher(charSequence).matches();
    }

    @NotNull
    public String toString() {
        String pattern = this.f1555do.toString();
        nd0.m1872for(pattern, "nativePattern.toString()");
        return pattern;
    }
}
