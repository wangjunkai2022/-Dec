package com.apk;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* compiled from: Http2.kt */
/* loaded from: classes7.dex */
public final class wi0 {

    /* renamed from: new  reason: not valid java name */
    public static final String[] f5311new;

    /* renamed from: try  reason: not valid java name */
    public static final wi0 f5312try = new wi0();
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final uk0 f5308do = uk0.f4913try.m2717if("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: if  reason: not valid java name */
    public static final String[] f5310if = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: for  reason: not valid java name */
    public static final String[] f5309for = new String[64];

    static {
        String[] strArr = new String[256];
        for (int i = 0; i < 256; i++) {
            String binaryString = Integer.toBinaryString(i);
            nd0.m1872for(binaryString, "Integer.toBinaryString(it)");
            String m1318class = jh0.m1318class("%8s", binaryString);
            nd0.m1875new(m1318class, "$this$replace");
            String replace = m1318class.replace(' ', '0');
            nd0.m1872for(replace, "(this as java.lang.Strin…replace(oldChar, newChar)");
            strArr[i] = replace;
        }
        f5311new = strArr;
        String[] strArr2 = f5309for;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i2 = 0; i2 < 1; i2++) {
            int i3 = iArr[i2];
            String[] strArr3 = f5309for;
            strArr3[i3 | 8] = strArr3[i3] + ((Object) "|PADDED");
        }
        String[] strArr4 = f5309for;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = iArr2[i4];
            for (int i6 = 0; i6 < 1; i6++) {
                int i7 = iArr[i6];
                int i8 = i7 | i5;
                f5309for[i8] = f5309for[i7] + "|" + f5309for[i5];
                StringBuilder sb = new StringBuilder();
                sb.append(f5309for[i7]);
                sb.append("|");
                f5309for[i8 | 8] = Cgoto.m991class(sb, f5309for[i5], "|PADDED");
            }
        }
        int length = f5309for.length;
        for (int i9 = 0; i9 < length; i9++) {
            String[] strArr5 = f5309for;
            if (strArr5[i9] == null) {
                strArr5[i9] = f5311new[i9];
            }
        }
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public final String m2913do(int i) {
        String[] strArr = f5310if;
        return i < strArr.length ? strArr[i] : jh0.m1318class("0x%02x", Integer.valueOf(i));
    }

    @NotNull
    /* renamed from: if  reason: not valid java name */
    public final String m2914if(boolean z, int i, int i2, int i3, int i4) {
        String str;
        String str2;
        String m2913do = m2913do(i3);
        if (i4 == 0) {
            str = "";
        } else {
            if (i3 != 2 && i3 != 3) {
                if (i3 == 4 || i3 == 6) {
                    str = i4 == 1 ? "ACK" : f5311new[i4];
                } else if (i3 != 7 && i3 != 8) {
                    String[] strArr = f5309for;
                    if (i4 < strArr.length) {
                        str2 = strArr[i4];
                        nd0.m1874if(str2);
                    } else {
                        str2 = f5311new[i4];
                    }
                    if (i3 == 5 && (i4 & 4) != 0) {
                        str = ie0.m1213while(str2, "HEADERS", "PUSH_PROMISE", false, 4);
                    } else {
                        str = (i3 != 0 || (i4 & 32) == 0) ? str2 : ie0.m1213while(str2, "PRIORITY", "COMPRESSED", false, 4);
                    }
                }
            }
            str = f5311new[i4];
        }
        return jh0.m1318class("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), m2913do, str);
    }
}
