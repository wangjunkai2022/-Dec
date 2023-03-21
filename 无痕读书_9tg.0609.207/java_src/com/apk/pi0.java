package com.apk;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: StatusLine.kt */
/* loaded from: classes7.dex */
public final class pi0 {
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final yg0 f3671do;
    @JvmField
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final String f3672for;
    @JvmField

    /* renamed from: if  reason: not valid java name */
    public final int f3673if;

    public pi0(@NotNull yg0 yg0Var, int i, @NotNull String str) {
        nd0.m1875new(yg0Var, "protocol");
        nd0.m1875new(str, "message");
        this.f3671do = yg0Var;
        this.f3673if = i;
        this.f3672for = str;
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public static final pi0 m2047do(@NotNull String str) throws IOException {
        String str2;
        yg0 yg0Var = yg0.HTTP_1_0;
        nd0.m1875new(str, "statusLine");
        int i = 9;
        if (ie0.m1206static(str, "HTTP/1.", false, 2)) {
            if (str.length() >= 9 && str.charAt(8) == ' ') {
                int charAt = str.charAt(7) - '0';
                if (charAt != 0) {
                    if (charAt == 1) {
                        yg0Var = yg0.HTTP_1_1;
                    } else {
                        throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
                    }
                }
            } else {
                throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
            }
        } else if (!ie0.m1206static(str, "ICY ", false, 2)) {
            throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
        } else {
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() >= i2) {
            try {
                String substring = str.substring(i, i2);
                nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                int parseInt = Integer.parseInt(substring);
                if (str.length() <= i2) {
                    str2 = "";
                } else if (str.charAt(i2) == ' ') {
                    str2 = str.substring(i + 4);
                    nd0.m1872for(str2, "(this as java.lang.String).substring(startIndex)");
                } else {
                    throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
                }
                return new pi0(yg0Var, parseInt, str2);
            } catch (NumberFormatException unused) {
                throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
            }
        }
        throw new ProtocolException(Cgoto.m989case("Unexpected status line: ", str));
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f3671do == yg0.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.f3673if);
        sb.append(' ');
        sb.append(this.f3672for);
        String sb2 = sb.toString();
        nd0.m1872for(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
