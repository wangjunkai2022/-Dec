package com.apk;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: ImageHeaderParser.java */
/* loaded from: classes8.dex */
public final class nw {

    /* renamed from: do  reason: not valid java name */
    public final InputStream f3318do;

    public nw(InputStream inputStream) {
        this.f3318do = inputStream;
    }

    /* renamed from: do  reason: not valid java name */
    public int m1917do() throws IOException {
        return this.f3318do.read();
    }

    /* renamed from: for  reason: not valid java name */
    public long m1918for(long j) throws IOException {
        if (j < 0) {
            return 0L;
        }
        long j2 = j;
        while (j2 > 0) {
            long skip = this.f3318do.skip(j2);
            if (skip <= 0) {
                if (this.f3318do.read() == -1) {
                    break;
                }
                skip = 1;
            }
            j2 -= skip;
        }
        return j - j2;
    }

    /* renamed from: if  reason: not valid java name */
    public int m1919if() throws IOException {
        return ((this.f3318do.read() << 8) & 65280) | (this.f3318do.read() & 255);
    }
}
