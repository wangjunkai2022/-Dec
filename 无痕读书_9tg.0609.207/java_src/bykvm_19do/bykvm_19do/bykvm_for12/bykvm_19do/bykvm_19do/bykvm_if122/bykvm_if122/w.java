package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import com.apk.Cgoto;
import java.io.IOException;
/* compiled from: Protocol.java */
/* loaded from: classes8.dex */
public enum w {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");
    

    /* renamed from: a  reason: collision with root package name */
    public final String f10794a;

    w(String str) {
        this.f10794a = str;
    }

    public static w a(String str) throws IOException {
        if (str.equals(HTTP_1_0.f10794a)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.f10794a)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.f10794a)) {
            return HTTP_2;
        }
        if (str.equals(SPDY_3.f10794a)) {
            return SPDY_3;
        }
        throw new IOException(Cgoto.m989case("Unexpected protocol: ", str));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f10794a;
    }
}
