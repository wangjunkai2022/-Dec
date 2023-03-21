package com.apk;
/* compiled from: OkGoException.java */
/* loaded from: classes8.dex */
public class by extends Exception {
    public by(String str) {
        super(str);
    }

    /* renamed from: do  reason: not valid java name */
    public static by m285do() {
        return new by("breakpoint file has expired!");
    }
}
