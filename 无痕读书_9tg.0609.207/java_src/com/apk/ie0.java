package com.apk;

import com.baidu.tts.loopj.SimpleMultipartEntity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Indent.kt */
/* loaded from: classes7.dex */
public class ie0 extends he0 {
    /* renamed from: break */
    public static /* synthetic */ int m1189break(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m1190case(charSequence, str, i, z);
    }

    /* renamed from: case */
    public static final int m1190case(@NotNull CharSequence charSequence, @NotNull String str, int i, boolean z) {
        nd0.m1875new(charSequence, "$this$indexOf");
        nd0.m1875new(str, "string");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i);
        }
        return m1199goto(charSequence, str, i, charSequence.length(), z, false, 16);
    }

    /* renamed from: catch */
    public static final int m1191catch(@NotNull CharSequence charSequence, @NotNull char[] cArr, int i, boolean z) {
        boolean z2;
        nd0.m1875new(charSequence, "$this$indexOfAny");
        nd0.m1875new(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(sb0.m(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int m1212try = m1212try(charSequence);
        if (i > m1212try) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(i);
            int length = cArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = false;
                    break;
                } else if (sb0.m2434throws(cArr[i2], charAt, z)) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (z2) {
                return i;
            }
            if (i == m1212try) {
                return -1;
            }
            i++;
        }
    }

    /* renamed from: class */
    public static final boolean m1192class(@NotNull CharSequence charSequence) {
        boolean z;
        nd0.m1875new(charSequence, "$this$isBlank");
        if (charSequence.length() != 0) {
            nd0.m1875new(charSequence, "$this$indices");
            xd0 xd0Var = new xd0(0, charSequence.length() - 1);
            if (!(xd0Var instanceof Collection) || !((Collection) xd0Var).isEmpty()) {
                Iterator<Integer> it = xd0Var.iterator();
                while (((wd0) it).f5261if) {
                    if (!sb0.m2400abstract(charSequence.charAt(((ad0) it).mo43do()))) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            return z;
        }
        return true;
    }

    /* renamed from: const */
    public static int m1193const(CharSequence charSequence, char c, int i, boolean z, int i2) {
        boolean z2;
        if ((i2 & 2) != 0) {
            i = m1212try(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        nd0.m1875new(charSequence, "$this$lastIndexOf");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(c, i);
        }
        char[] cArr = {c};
        nd0.m1875new(charSequence, "$this$lastIndexOfAny");
        nd0.m1875new(cArr, "chars");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(sb0.m(cArr), i);
        }
        int m1212try = m1212try(charSequence);
        if (i > m1212try) {
            i = m1212try;
        }
        while (i >= 0) {
            char charAt = charSequence.charAt(i);
            int i3 = 0;
            while (true) {
                if (i3 >= 1) {
                    z2 = false;
                    break;
                } else if (sb0.m2434throws(cArr[i3], charAt, z)) {
                    z2 = true;
                    break;
                } else {
                    i3++;
                }
            }
            if (z2) {
                return i;
            }
            i--;
        }
        return -1;
    }

    /* renamed from: default */
    public static String m1194default(String str, String str2, int i) {
        String str3;
        String str4 = (i & 1) != 0 ? "|" : null;
        nd0.m1875new(str, "$this$trimMargin");
        nd0.m1875new(str4, "marginPrefix");
        nd0.m1875new(str, "$this$replaceIndentByMargin");
        nd0.m1875new("", "newIndent");
        nd0.m1875new(str4, "marginPrefix");
        if (!m1192class(str4)) {
            nd0.m1875new(str, "$this$lines");
            nd0.m1875new(str, "$this$lineSequence");
            String[] strArr = {SimpleMultipartEntity.STR_CR_LF, "\n", "\r"};
            nd0.m1875new(str, "$this$splitToSequence");
            nd0.m1875new(strArr, "delimiters");
            fe0 fe0Var = new fe0(str, 0, 0, new ke0(uc0.m2694do(strArr), false));
            le0 le0Var = new le0(str);
            nd0.m1875new(fe0Var, "$this$map");
            nd0.m1875new(le0Var, "transform");
            de0 de0Var = new de0(fe0Var, le0Var);
            nd0.m1875new(de0Var, "$this$toList");
            nd0.m1875new(de0Var, "$this$toMutableList");
            ArrayList arrayList = new ArrayList();
            nd0.m1875new(de0Var, "$this$toCollection");
            nd0.m1875new(arrayList, "destination");
            for (T t : de0Var.f850do) {
                arrayList.add(de0Var.f851if.mo1187if(t));
            }
            List a2 = sb0.a(arrayList);
            int size = (a2.size() * 0) + str.length();
            nd0.m1875new(a2, "$this$lastIndex");
            int size2 = a2.size() - 1;
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            for (Object obj : a2) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    String str5 = (String) obj;
                    if ((i2 == 0 || i2 == size2) && m1192class(str5)) {
                        str5 = null;
                    } else {
                        int length = str5.length();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                i4 = -1;
                                break;
                            } else if (!sb0.m2400abstract(str5.charAt(i4))) {
                                break;
                            } else {
                                i4++;
                            }
                        }
                        if (i4 != -1 && m1205return(str5, str4, i4, false, 4)) {
                            str3 = str5.substring(str4.length() + i4);
                            nd0.m1872for(str3, "(this as java.lang.String).substring(startIndex)");
                        } else {
                            str3 = null;
                        }
                        if (str3 != null) {
                            nd0.m1875new(str3, "line");
                            str5 = str3;
                        }
                    }
                    if (str5 != null) {
                        arrayList2.add(str5);
                    }
                    i2 = i3;
                } else {
                    sb0.n();
                    throw null;
                }
            }
            StringBuilder sb = new StringBuilder(size);
            uc0.m2693case(arrayList2, sb, "\n", "", "", -1, "...", null);
            String sb2 = sb.toString();
            nd0.m1872for(sb2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
            return sb2;
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }

    /* renamed from: do */
    public static boolean m1195do(CharSequence charSequence, char c, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        nd0.m1875new(charSequence, "$this$contains");
        return m1209this(charSequence, c, 0, z, 2) >= 0;
    }

    /* renamed from: else */
    public static final int m1196else(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        vd0 m3058do;
        if (!z2) {
            if (i < 0) {
                i = 0;
            }
            int length = charSequence.length();
            if (i2 > length) {
                i2 = length;
            }
            m3058do = new xd0(i, i2);
        } else {
            int m1212try = m1212try(charSequence);
            if (i > m1212try) {
                i = m1212try;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            m3058do = yd0.m3058do(i, i2);
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int i3 = m3058do.f5067do;
            int i4 = m3058do.f5069if;
            int i5 = m3058do.f5068for;
            if (i5 >= 0) {
                if (i3 > i4) {
                    return -1;
                }
            } else if (i3 < i4) {
                return -1;
            }
            while (!m1197final((String) charSequence2, 0, (String) charSequence, i3, charSequence2.length(), z)) {
                if (i3 == i4) {
                    return -1;
                }
                i3 += i5;
            }
            return i3;
        }
        int i6 = m3058do.f5067do;
        int i7 = m3058do.f5069if;
        int i8 = m3058do.f5068for;
        if (i8 >= 0) {
            if (i6 > i7) {
                return -1;
            }
        } else if (i6 < i7) {
            return -1;
        }
        while (!m1207super(charSequence2, 0, charSequence, i6, charSequence2.length(), z)) {
            if (i6 == i7) {
                return -1;
            }
            i6 += i8;
        }
        return i6;
    }

    /* renamed from: final */
    public static final boolean m1197final(@NotNull String str, int i, @NotNull String str2, int i2, int i3, boolean z) {
        nd0.m1875new(str, "$this$regionMatches");
        nd0.m1875new(str2, "other");
        if (!z) {
            return str.regionMatches(i, str2, i2, i3);
        }
        return str.regionMatches(z, i, str2, i2, i3);
    }

    /* renamed from: for */
    public static boolean m1198for(String str, String str2, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        nd0.m1875new(str, "$this$endsWith");
        nd0.m1875new(str2, "suffix");
        if (!z) {
            return str.endsWith(str2);
        }
        return m1197final(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    /* renamed from: goto */
    public static /* synthetic */ int m1199goto(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3) {
        return m1196else(charSequence, charSequence2, i, i2, z, (i3 & 16) != 0 ? false : z2);
    }

    /* renamed from: if */
    public static boolean m1200if(CharSequence charSequence, CharSequence charSequence2, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        nd0.m1875new(charSequence, "$this$contains");
        nd0.m1875new(charSequence2, "other");
        return m1189break(charSequence, (String) charSequence2, 0, z, 2) >= 0;
    }

    /* renamed from: import */
    public static List m1201import(CharSequence charSequence, char[] cArr, boolean z, int i, int i2) {
        int i3 = 0;
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        nd0.m1875new(charSequence, "$this$split");
        nd0.m1875new(cArr, "delimiters");
        int i4 = 10;
        if (cArr.length != 1) {
            if (i >= 0) {
                fe0 fe0Var = new fe0(charSequence, 0, i, new je0(cArr, z));
                nd0.m1875new(fe0Var, "$this$asIterable");
                ce0 ce0Var = new ce0(fe0Var);
                ArrayList arrayList = new ArrayList(sb0.m2420native(ce0Var, 10));
                Iterator it = ce0Var.iterator();
                while (it.hasNext()) {
                    arrayList.add(m1208switch(charSequence, (xd0) it.next()));
                }
                return arrayList;
            }
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
        }
        String valueOf = String.valueOf(cArr[0]);
        if (i >= 0) {
            int m1190case = m1190case(charSequence, valueOf, 0, z);
            if (m1190case != -1 && i != 1) {
                boolean z2 = i > 0;
                if (z2 && i <= 10) {
                    i4 = i;
                }
                ArrayList arrayList2 = new ArrayList(i4);
                do {
                    arrayList2.add(charSequence.subSequence(i3, m1190case).toString());
                    i3 = valueOf.length() + m1190case;
                    if (z2 && arrayList2.size() == i - 1) {
                        break;
                    }
                    m1190case = m1190case(charSequence, valueOf, i3, z);
                } while (m1190case != -1);
                arrayList2.add(charSequence.subSequence(i3, charSequence.length()).toString());
                return arrayList2;
            }
            return sb0.m2406continue(charSequence.toString());
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + '.').toString());
    }

    /* renamed from: native */
    public static final boolean m1202native(@NotNull String str, @NotNull String str2, int i, boolean z) {
        nd0.m1875new(str, "$this$startsWith");
        nd0.m1875new(str2, "prefix");
        if (!z) {
            return str.startsWith(str2, i);
        }
        return m1197final(str, i, str2, 0, str2.length(), z);
    }

    /* renamed from: new */
    public static final boolean m1203new(@Nullable String str, @Nullable String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        } else if (!z) {
            return str.equals(str2);
        } else {
            return str.equalsIgnoreCase(str2);
        }
    }

    /* renamed from: public */
    public static final boolean m1204public(@NotNull String str, @NotNull String str2, boolean z) {
        nd0.m1875new(str, "$this$startsWith");
        nd0.m1875new(str2, "prefix");
        if (!z) {
            return str.startsWith(str2);
        }
        return m1197final(str, 0, str2, 0, str2.length(), z);
    }

    /* renamed from: return */
    public static /* synthetic */ boolean m1205return(String str, String str2, int i, boolean z, int i2) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m1202native(str, str2, i, z);
    }

    /* renamed from: static */
    public static /* synthetic */ boolean m1206static(String str, String str2, boolean z, int i) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m1204public(str, str2, z);
    }

    /* renamed from: super */
    public static final boolean m1207super(@NotNull CharSequence charSequence, int i, @NotNull CharSequence charSequence2, int i2, int i3, boolean z) {
        nd0.m1875new(charSequence, "$this$regionMatchesImpl");
        nd0.m1875new(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!sb0.m2434throws(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    /* renamed from: switch */
    public static final String m1208switch(@NotNull CharSequence charSequence, @NotNull xd0 xd0Var) {
        nd0.m1875new(charSequence, "$this$substring");
        nd0.m1875new(xd0Var, "range");
        return charSequence.subSequence(Integer.valueOf(xd0Var.f5067do).intValue(), Integer.valueOf(xd0Var.f5069if).intValue() + 1).toString();
    }

    /* renamed from: this */
    public static int m1209this(CharSequence charSequence, char c, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        nd0.m1875new(charSequence, "$this$indexOf");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(c, i);
        }
        return m1191catch(charSequence, new char[]{c}, i, z);
    }

    @NotNull
    /* renamed from: throw */
    public static final String m1210throw(@NotNull String str, @NotNull CharSequence charSequence) {
        nd0.m1875new(str, "$this$removePrefix");
        nd0.m1875new(charSequence, "prefix");
        nd0.m1875new(str, "$this$startsWith");
        nd0.m1875new(charSequence, "prefix");
        if (m1206static(str, (String) charSequence, false, 2)) {
            String substring = str.substring(charSequence.length());
            nd0.m1872for(substring, "(this as java.lang.String).substring(startIndex)");
            return substring;
        }
        return str;
    }

    @NotNull
    /* renamed from: throws */
    public static final CharSequence m1211throws(@NotNull CharSequence charSequence) {
        nd0.m1875new(charSequence, "$this$trim");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean m2400abstract = sb0.m2400abstract(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!m2400abstract) {
                    break;
                }
                length--;
            } else if (m2400abstract) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    /* renamed from: try */
    public static final int m1212try(@NotNull CharSequence charSequence) {
        nd0.m1875new(charSequence, "$this$lastIndex");
        return charSequence.length() - 1;
    }

    /* renamed from: while */
    public static String m1213while(String str, String str2, String str3, boolean z, int i) {
        int i2 = 0;
        if ((i & 4) != 0) {
            z = false;
        }
        nd0.m1875new(str, "$this$replace");
        nd0.m1875new(str2, "oldValue");
        nd0.m1875new(str3, "newValue");
        int m1190case = m1190case(str, str2, 0, z);
        if (m1190case < 0) {
            return str;
        }
        int length = str2.length();
        int i3 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 >= 0) {
            StringBuilder sb = new StringBuilder(length2);
            do {
                sb.append((CharSequence) str, i2, m1190case);
                sb.append(str3);
                i2 = m1190case + length;
                if (m1190case >= str.length()) {
                    break;
                }
                m1190case = m1190case(str, str2, m1190case + i3, z);
            } while (m1190case > 0);
            sb.append((CharSequence) str, i2, str.length());
            String sb2 = sb.toString();
            nd0.m1872for(sb2, "stringBuilder.append(this, i, length).toString()");
            return sb2;
        }
        throw new OutOfMemoryError();
    }
}
