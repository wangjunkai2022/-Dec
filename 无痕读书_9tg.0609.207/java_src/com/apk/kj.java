package com.apk;

import androidx.annotation.NonNull;
import java.nio.charset.Charset;
import java.security.MessageDigest;
/* compiled from: Key.java */
/* loaded from: classes8.dex */
public interface kj {

    /* renamed from: do  reason: not valid java name */
    public static final Charset f2575do = Charset.forName("UTF-8");

    /* renamed from: do */
    void mo76do(@NonNull MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
