package com.ss.android.socialbase.appdownloader.f.a;

import com.apk.Cgoto;
import java.io.IOException;
/* loaded from: classes7.dex */
public class b {
    public static final void a(d dVar, int i) throws IOException {
        int b = dVar.b();
        if (b == i) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("Expected chunk of type 0x");
        m1016super.append(Integer.toHexString(i));
        m1016super.append(", read 0x");
        m1016super.append(Integer.toHexString(b));
        m1016super.append(".");
        throw new IOException(m1016super.toString());
    }
}
