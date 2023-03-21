package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.w;
import com.apk.Cgoto;
import java.io.IOException;
import java.net.ProtocolException;

/* compiled from: StatusLine.java */
/* loaded from: classes8.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final w f10723a;
    public final int b;
    public final String c;

    public k(w wVar, int i, String str) {
        this.f10723a = wVar;
        this.b = i;
        this.c = str;
    }

    public static k a(String str) throws IOException {
        w wVar;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() >= 9 && str.charAt(8) == ' ') {
                int charAt = str.charAt(7) - '0';
                if (charAt == 0) {
                    wVar = w.HTTP_1_0;
                } else if (charAt == 1) {
                    wVar = w.HTTP_1_1;
                } else {
                    throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
                }
            } else {
                throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
            }
        } else if (str.startsWith("ICY ")) {
            wVar = w.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
        }
        int i2 = i + 3;
        if (str.length() >= i2) {
            try {
                int parseInt = Integer.parseInt(str.substring(i, i2));
                if (str.length() <= i2) {
                    str2 = "";
                } else if (str.charAt(i2) == ' ') {
                    str2 = str.substring(i + 4);
                } else {
                    throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
                }
                return new k(wVar, parseInt, str2);
            } catch (NumberFormatException unused) {
                throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
            }
        }
        throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f10723a == w.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.b);
        if (this.c != null) {
            sb.append(' ');
            sb.append(this.c);
        }
        return sb.toString();
    }
}
