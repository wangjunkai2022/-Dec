package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: TlsVersion.java */
/* loaded from: classes8.dex */
public enum d0 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    

    /* renamed from: a  reason: collision with root package name */
    public final String f10770a;

    d0(String str) {
        this.f10770a = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static d0 a(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == 79201641) {
            if (str.equals("SSLv3")) {
                c = 4;
            }
            c = 65535;
        } else if (hashCode != 79923350) {
            switch (hashCode) {
                case -503070503:
                    if (str.equals("TLSv1.1")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -503070502:
                    if (str.equals("TLSv1.2")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -503070501:
                    if (str.equals("TLSv1.3")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
        } else {
            if (str.equals("TLSv1")) {
                c = 3;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c == 4) {
                            return SSL_3_0;
                        }
                        throw new IllegalArgumentException(Cgoto.m989case("Unexpected TLS version: ", str));
                    }
                    return TLS_1_0;
                }
                return TLS_1_1;
            }
            return TLS_1_2;
        }
        return TLS_1_3;
    }

    public static List<d0> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }
}
