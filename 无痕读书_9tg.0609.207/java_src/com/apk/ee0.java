package com.apk;

import com.google.zxing.qrcode.encoder.Encoder;
import java.nio.charset.Charset;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: Charsets.kt */
/* loaded from: classes7.dex */
public final class ee0 {
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final Charset f1037do;

    /* renamed from: for  reason: not valid java name */
    public static Charset f1038for;

    /* renamed from: if  reason: not valid java name */
    public static Charset f1039if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public static final ee0 f1040new = null;

    static {
        Charset forName = Charset.forName("UTF-8");
        nd0.m1872for(forName, "Charset.forName(\"UTF-8\")");
        f1037do = forName;
        nd0.m1872for(Charset.forName("UTF-16"), "Charset.forName(\"UTF-16\")");
        nd0.m1872for(Charset.forName("UTF-16BE"), "Charset.forName(\"UTF-16BE\")");
        nd0.m1872for(Charset.forName("UTF-16LE"), "Charset.forName(\"UTF-16LE\")");
        nd0.m1872for(Charset.forName("US-ASCII"), "Charset.forName(\"US-ASCII\")");
        nd0.m1872for(Charset.forName(Encoder.DEFAULT_BYTE_MODE_ENCODING), "Charset.forName(\"ISO-8859-1\")");
    }
}
