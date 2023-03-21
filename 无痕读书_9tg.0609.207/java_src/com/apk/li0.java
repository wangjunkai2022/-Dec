package com.apk;

import com.baidu.tts.loopj.HttpGet;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpMethod.kt */
/* loaded from: classes7.dex */
public final class li0 {
    @JvmStatic
    /* renamed from: do  reason: not valid java name */
    public static final boolean m1634do(@NotNull String str) {
        nd0.m1875new(str, "method");
        return (nd0.m1870do(str, HttpGet.METHOD_NAME) || nd0.m1870do(str, "HEAD")) ? false : true;
    }
}
