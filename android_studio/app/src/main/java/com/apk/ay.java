package com.apk;

/* compiled from: HttpException.java */
/* loaded from: classes8.dex */
public class ay extends RuntimeException {
    public ay(String str) {
        super(str);
    }

    /* renamed from: do  reason: not valid java name */
    public static ay m129do() {
        return new ay("network error! http response code is 404 or 5xx!");
    }
}
