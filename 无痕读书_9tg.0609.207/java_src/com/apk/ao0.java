package com.apk;

import java.nio.charset.Charset;
import java.util.regex.Pattern;
/* compiled from: DataUtil.java */
/* loaded from: classes7.dex */
public final class ao0 {

    /* renamed from: do  reason: not valid java name */
    public static final Charset f128do;

    static {
        Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
        Charset forName = Charset.forName("UTF-8");
        f128do = forName;
        forName.name();
        "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }
}
