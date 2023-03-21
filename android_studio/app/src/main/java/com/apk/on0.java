package com.apk;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Utils.java */
/* loaded from: classes7.dex */
public class on0 {

    /* renamed from: do  reason: not valid java name */
    public static final Pattern f3474do;

    /* renamed from: for  reason: not valid java name */
    public static Pattern f3475for;

    /* renamed from: if  reason: not valid java name */
    public static Pattern f3476if;

    /* renamed from: new  reason: not valid java name */
    public static Pattern f3477new;

    static {
        try {
            Pattern.compile("^[:A-Z_a-z\\u00C0\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\ud7ff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\x{10000}-\\x{EFFFF}]", 256);
        } catch (IllegalArgumentException unused) {
            Pattern.compile("^[:A-Z_a-z\\u00C0\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\ud7ff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\x{10000}-\\x{EFFFF}]");
        }
        try {
            Pattern.compile("^[:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\ud7ff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\x{10000}-\\x{EFFFF}][:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\udfff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\-\\.0-9\\u00b7\\u0300-\\u036f\\u203f-\\u2040]*\\Z", 256);
        } catch (IllegalArgumentException unused2) {
            Pattern.compile("^[:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\ud7ff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\x{10000}-\\x{EFFFF}][:A-Z_a-z\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u02ff\\u0370-\\u037d\\u037f-\\u1fff\\u200c\\u200d\\u2070-\\u218f\\u2c00-\\u2fef\\u3001-\\udfff\\uf900-\\ufdcf\\ufdf0-\\ufffd\\-\\.0-9\\u00b7\\u0300-\\u036f\\u203f-\\u2040]*\\Z");
        }
        f3474do = Pattern.compile("\\p{Print}");
        f3476if = Pattern.compile("^([x|X][\\p{XDigit}]+)(;?)");
        f3475for = Pattern.compile("^0*([x|X][\\p{XDigit}]+)(;?)");
        f3477new = Pattern.compile("^([\\p{Digit}]+)(;?)");
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1974do(String str, int i, boolean z, StringBuilder sb) {
        Matcher matcher;
        CharSequence subSequence = str.subSequence(i, Math.min(str.length(), i + 15));
        if (z) {
            matcher = f3475for.matcher(subSequence);
        } else {
            matcher = f3476if.matcher(subSequence);
        }
        if (!matcher.find()) {
            matcher = f3477new.matcher(subSequence);
            if (!matcher.find()) {
                return i;
            }
        }
        int end = i + (matcher.end() - 1);
        sb.append(matcher.group(1));
        return end;
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m1975if(Object obj) {
        String str;
        int parseInt;
        if (obj == null) {
            return true;
        }
        String obj2 = obj.toString();
        if (obj2 != null) {
            int length = obj2.length();
            StringBuilder sb = new StringBuilder(length);
            int i = 0;
            while (i < length) {
                char charAt = obj2.charAt(i);
                if (charAt == '&') {
                    if (i < length - 1 && obj2.charAt(i + 1) == '#') {
                        StringBuilder sb2 = new StringBuilder();
                        i = m1974do(obj2, i + 2, true, sb2);
                        if (sb2.length() > 0) {
                            try {
                                if (sb2.substring(0, 1).equals("x")) {
                                    parseInt = Integer.parseInt(sb2.substring(1), 16);
                                } else {
                                    parseInt = Integer.parseInt(sb2.toString());
                                }
                                char[] chars = Character.toChars(parseInt);
                                in0 m1144for = hn0.f1901case.m1144for(parseInt);
                                if (chars.length == 1 && chars[0] == 0) {
                                    sb.append("&amp;");
                                } else if (m1144for != null) {
                                    sb.append(m1144for.f2207try);
                                } else if (f3474do.matcher(new String(chars)).find()) {
                                    sb.append(String.valueOf(chars));
                                } else {
                                    sb.append("&#");
                                    sb.append((CharSequence) sb2);
                                    sb.append(";");
                                }
                            } catch (NumberFormatException unused) {
                                sb.append("&amp;#");
                                sb.append((CharSequence) sb2);
                                sb.append(";");
                            } catch (IllegalArgumentException unused2) {
                                sb.append("&amp;#");
                                sb.append((CharSequence) sb2);
                                sb.append(";");
                            }
                        } else {
                            sb.append("&amp;");
                        }
                    } else {
                        in0 m1145if = hn0.f1901case.m1145if(obj2.substring(i, Math.min(10, length - i) + i));
                        if (m1145if != null) {
                            sb.append(m1145if.f2207try);
                            i += m1145if.f2203do.length() + 1;
                        } else {
                            sb.append("&amp;");
                        }
                    }
                } else {
                    in0 m1144for2 = hn0.f1901case.m1144for(charAt);
                    if (m1144for2 != null) {
                        sb.append(m1144for2.f2207try);
                    } else {
                        sb.append(charAt);
                    }
                }
                i++;
            }
            str = sb.toString();
        } else {
            str = null;
        }
        return str.replace((char) 160, ' ').trim().length() == 0;
    }
}
