package com.apk;

import java.io.IOException;

/* compiled from: HttpException.java */
/* loaded from: classes8.dex */
public final class hj extends IOException {
    public hj(int i) {
        super(Cgoto.m1003implements("Http request failed with status code: ", i), null);
    }

    public hj(String str) {
        super(str, null);
    }

    public hj(String str, int i) {
        super(str, null);
    }
}
