package com.apk;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dns.kt */
/* loaded from: classes7.dex */
public interface ng0 {
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final ng0 f3226do = new mg0();

    @NotNull
    List<InetAddress> lookup(@NotNull String str) throws UnknownHostException;
}
