package com.apk;
/* compiled from: CacheException.java */
/* loaded from: classes8.dex */
public class zx extends Exception {
    public zx(String str) {
        super(str);
    }

    /* renamed from: do  reason: not valid java name */
    public static zx m3263do(String str) {
        return new zx(Cgoto.m996else("the http response code is 304, but the cache with cacheKey = ", str, " is null or expired!"));
    }
}
