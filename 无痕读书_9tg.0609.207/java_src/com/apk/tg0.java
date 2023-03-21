package com.apk;

import androidx.exifinterface.media.ExifInterface;
import com.baidu.tts.client.SpeechSynthesizer;
import com.google.android.material.badge.BadgeDrawable;
import com.qq.e.comm.adevent.AdEventType;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpUrl.kt */
/* loaded from: classes7.dex */
public final class tg0 {

    /* renamed from: case  reason: not valid java name */
    public final int f4681case;

    /* renamed from: do  reason: not valid java name */
    public final boolean f4682do;

    /* renamed from: else  reason: not valid java name */
    public final List<String> f4683else;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final String f4684for;
    @Nullable

    /* renamed from: goto  reason: not valid java name */
    public final String f4685goto;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final String f4686if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final String f4687new;

    /* renamed from: this  reason: not valid java name */
    public final String f4688this;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public final String f4689try;

    /* renamed from: catch  reason: not valid java name */
    public static final Cif f4680catch = new Cif(null);

    /* renamed from: break  reason: not valid java name */
    public static final char[] f4679break = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* compiled from: HttpUrl.kt */
    /* renamed from: com.apk.tg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {

        /* renamed from: this  reason: not valid java name */
        public static final C0076do f4690this = new C0076do(null);
        @NotNull

        /* renamed from: case  reason: not valid java name */
        public final List<String> f4691case;
        @Nullable

        /* renamed from: do  reason: not valid java name */
        public String f4692do;
        @Nullable

        /* renamed from: else  reason: not valid java name */
        public List<String> f4693else;
        @Nullable

        /* renamed from: goto  reason: not valid java name */
        public String f4695goto;
        @Nullable

        /* renamed from: new  reason: not valid java name */
        public String f4697new;
        @NotNull

        /* renamed from: if  reason: not valid java name */
        public String f4696if = "";
        @NotNull

        /* renamed from: for  reason: not valid java name */
        public String f4694for = "";

        /* renamed from: try  reason: not valid java name */
        public int f4698try = -1;

        /* compiled from: HttpUrl.kt */
        /* renamed from: com.apk.tg0$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0076do {
            public C0076do(md0 md0Var) {
            }
        }

        public Cdo() {
            ArrayList arrayList = new ArrayList();
            this.f4691case = arrayList;
            arrayList.add("");
        }

        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final tg0 m2596do() {
            ArrayList arrayList;
            String str = this.f4692do;
            if (str != null) {
                String m2601for = Cif.m2601for(tg0.f4680catch, this.f4696if, 0, 0, false, 7);
                String m2601for2 = Cif.m2601for(tg0.f4680catch, this.f4694for, 0, 0, false, 7);
                String str2 = this.f4697new;
                if (str2 != null) {
                    int m2598if = m2598if();
                    List<String> list = this.f4691case;
                    ArrayList arrayList2 = new ArrayList(sb0.m2420native(list, 10));
                    for (String str3 : list) {
                        arrayList2.add(Cif.m2601for(tg0.f4680catch, str3, 0, 0, false, 7));
                    }
                    List<String> list2 = this.f4693else;
                    if (list2 != null) {
                        ArrayList arrayList3 = new ArrayList(sb0.m2420native(list2, 10));
                        for (String str4 : list2) {
                            arrayList3.add(str4 != null ? Cif.m2601for(tg0.f4680catch, str4, 0, 0, true, 3) : null);
                        }
                        arrayList = arrayList3;
                    } else {
                        arrayList = null;
                    }
                    String str5 = this.f4695goto;
                    return new tg0(str, m2601for, m2601for2, str2, m2598if, arrayList2, arrayList, str5 != null ? Cif.m2601for(tg0.f4680catch, str5, 0, 0, false, 7) : null, toString());
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        @NotNull
        /* renamed from: for  reason: not valid java name */
        public final Cdo m2597for(@Nullable String str) {
            ArrayList arrayList = null;
            if (str != null) {
                String m2600do = Cif.m2600do(tg0.f4680catch, str, 0, 0, " \"'<>#", true, false, true, false, null, AdEventType.VIDEO_LOADING);
                nd0.m1875new(m2600do, "$this$toQueryNamesAndValues");
                ArrayList arrayList2 = new ArrayList();
                int i = 0;
                while (i <= m2600do.length()) {
                    int m1209this = ie0.m1209this(m2600do, '&', i, false, 4);
                    if (m1209this == -1) {
                        m1209this = m2600do.length();
                    }
                    int m1209this2 = ie0.m1209this(m2600do, '=', i, false, 4);
                    if (m1209this2 != -1 && m1209this2 <= m1209this) {
                        String substring = m2600do.substring(i, m1209this2);
                        nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring);
                        String substring2 = m2600do.substring(m1209this2 + 1, m1209this);
                        nd0.m1872for(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring2);
                    } else {
                        String substring3 = m2600do.substring(i, m1209this);
                        nd0.m1872for(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring3);
                        arrayList2.add(null);
                    }
                    i = m1209this + 1;
                }
                arrayList = arrayList2;
            }
            this.f4693else = arrayList;
            return this;
        }

        /* renamed from: if  reason: not valid java name */
        public final int m2598if() {
            int i = this.f4698try;
            if (i != -1) {
                return i;
            }
            String str = this.f4692do;
            nd0.m1874if(str);
            nd0.m1875new(str, "scheme");
            int hashCode = str.hashCode();
            if (hashCode != 3213448) {
                if (hashCode == 99617003 && str.equals(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS)) {
                    return 443;
                }
            } else if (str.equals(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
                return 80;
            }
            return -1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x007a, code lost:
            if (r10 == ':') goto L30;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0284  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x0286  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x0289  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x028e  */
        /* JADX WARN: Removed duplicated region for block: B:168:0x0363  */
        /* JADX WARN: Type inference failed for: r14v10 */
        /* JADX WARN: Type inference failed for: r14v7 */
        /* JADX WARN: Type inference failed for: r14v8, types: [boolean, int] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:166:0x0355 -> B:167:0x0361). Please submit an issue!!! */
        @org.jetbrains.annotations.NotNull
        /* renamed from: new  reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.apk.tg0.Cdo m2599new(@org.jetbrains.annotations.Nullable com.apk.tg0 r31, @org.jetbrains.annotations.NotNull java.lang.String r32) {
            /*
                Method dump skipped, instructions count: 1264
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.tg0.Cdo.m2599new(com.apk.tg0, java.lang.String):com.apk.tg0$do");
        }

        @NotNull
        public final Cdo query(@Nullable String str) {
            ArrayList arrayList = null;
            if (str != null) {
                String m2600do = Cif.m2600do(tg0.f4680catch, str, 0, 0, " \"'<>#", false, false, true, false, null, 219);
                nd0.m1875new(m2600do, "$this$toQueryNamesAndValues");
                ArrayList arrayList2 = new ArrayList();
                int i = 0;
                while (i <= m2600do.length()) {
                    int m1209this = ie0.m1209this(m2600do, '&', i, false, 4);
                    if (m1209this == -1) {
                        m1209this = m2600do.length();
                    }
                    int m1209this2 = ie0.m1209this(m2600do, '=', i, false, 4);
                    if (m1209this2 != -1 && m1209this2 <= m1209this) {
                        String substring = m2600do.substring(i, m1209this2);
                        nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring);
                        String substring2 = m2600do.substring(m1209this2 + 1, m1209this);
                        nd0.m1872for(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring2);
                    } else {
                        String substring3 = m2600do.substring(i, m1209this);
                        nd0.m1872for(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        arrayList2.add(substring3);
                        arrayList2.add(null);
                    }
                    i = m1209this + 1;
                }
                arrayList = arrayList2;
            }
            this.f4693else = arrayList;
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
            if ((r9.f4694for.length() > 0) != false) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00b3, code lost:
            if (r1 != r5) goto L62;
         */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 332
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.tg0.Cdo.toString():java.lang.String");
        }
    }

    /* compiled from: HttpUrl.kt */
    /* renamed from: com.apk.tg0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        public Cif(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public static String m2600do(Cif cif, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i3) {
            boolean z5;
            int i4 = (i3 & 1) != 0 ? 0 : i;
            int length = (i3 & 2) != 0 ? str.length() : i2;
            boolean z6 = (i3 & 8) != 0 ? false : z;
            boolean z7 = (i3 & 16) != 0 ? false : z2;
            boolean z8 = (i3 & 32) != 0 ? false : z3;
            boolean z9 = (i3 & 64) != 0 ? false : z4;
            Charset charset2 = (i3 & 128) != 0 ? null : charset;
            nd0.m1875new(str, "$this$canonicalize");
            nd0.m1875new(str2, "encodeSet");
            int i5 = i4;
            while (i5 < length) {
                int codePointAt = str.codePointAt(i5);
                int i6 = 2;
                if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || z9) && !ie0.m1195do(str2, (char) codePointAt, false, 2) && ((codePointAt != 37 || (z6 && (!z7 || cif.m2602if(str, i5, length)))) && (codePointAt != 43 || !z8)))) {
                    i5 += Character.charCount(codePointAt);
                } else {
                    rk0 rk0Var = new rk0();
                    rk0Var.k(str, i4, i5);
                    rk0 rk0Var2 = null;
                    while (i5 < length) {
                        int codePointAt2 = str.codePointAt(i5);
                        if (!z6 || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                            if (codePointAt2 == 43 && z8) {
                                rk0Var.j(z6 ? BadgeDrawable.DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX : "%2B");
                            } else {
                                if (codePointAt2 < 32 || codePointAt2 == 127 || (codePointAt2 >= 128 && !z9)) {
                                    z5 = z8;
                                } else {
                                    z5 = z8;
                                    if (!ie0.m1195do(str2, (char) codePointAt2, false, i6) && (codePointAt2 != 37 || (z6 && (!z7 || cif.m2602if(str, i5, length))))) {
                                        rk0Var.l(codePointAt2);
                                        i5 += Character.charCount(codePointAt2);
                                        i6 = 2;
                                        z8 = z5;
                                    }
                                }
                                if (rk0Var2 == null) {
                                    rk0Var2 = new rk0();
                                }
                                if (charset2 != null && !nd0.m1870do(charset2, StandardCharsets.UTF_8)) {
                                    int charCount = Character.charCount(codePointAt2) + i5;
                                    nd0.m1875new(str, "string");
                                    nd0.m1875new(charset2, "charset");
                                    if (!(i5 >= 0)) {
                                        throw new IllegalArgumentException(Cgoto.m1003implements("beginIndex < 0: ", i5).toString());
                                    }
                                    if (charCount >= i5) {
                                        if (charCount <= str.length()) {
                                            if (nd0.m1870do(charset2, ee0.f1037do)) {
                                                rk0Var2.k(str, i5, charCount);
                                            } else {
                                                String substring = str.substring(i5, charCount);
                                                nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                                                byte[] bytes = substring.getBytes(charset2);
                                                nd0.m1872for(bytes, "(this as java.lang.String).getBytes(charset)");
                                                rk0Var2.m2293instanceof(bytes, 0, bytes.length);
                                            }
                                        } else {
                                            StringBuilder m1020throw = Cgoto.m1020throw("endIndex > string.length: ", charCount, " > ");
                                            m1020throw.append(str.length());
                                            throw new IllegalArgumentException(m1020throw.toString().toString());
                                        }
                                    } else {
                                        throw new IllegalArgumentException(Cgoto.m1018synchronized("endIndex < beginIndex: ", charCount, " < ", i5).toString());
                                    }
                                } else {
                                    rk0Var2.l(codePointAt2);
                                }
                                while (!rk0Var2.mo853else()) {
                                    int readByte = rk0Var2.readByte() & ExifInterface.MARKER;
                                    rk0Var.m2299synchronized(37);
                                    rk0Var.m2299synchronized(tg0.f4679break[(readByte >> 4) & 15]);
                                    rk0Var.m2299synchronized(tg0.f4679break[readByte & 15]);
                                }
                                i5 += Character.charCount(codePointAt2);
                                i6 = 2;
                                z8 = z5;
                            }
                        }
                        z5 = z8;
                        i5 += Character.charCount(codePointAt2);
                        i6 = 2;
                        z8 = z5;
                    }
                    return rk0Var.m2298strictfp();
                }
            }
            String substring2 = str.substring(i4, length);
            nd0.m1872for(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring2;
        }

        /* renamed from: for  reason: not valid java name */
        public static String m2601for(Cif cif, String str, int i, int i2, boolean z, int i3) {
            int i4;
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 4) != 0) {
                z = false;
            }
            nd0.m1875new(str, "$this$percentDecode");
            int i5 = i;
            while (i5 < i2) {
                char charAt = str.charAt(i5);
                if (charAt == '%' || (charAt == '+' && z)) {
                    rk0 rk0Var = new rk0();
                    rk0Var.k(str, i, i5);
                    while (i5 < i2) {
                        int codePointAt = str.codePointAt(i5);
                        if (codePointAt == 37 && (i4 = i5 + 2) < i2) {
                            int m1346throws = jh0.m1346throws(str.charAt(i5 + 1));
                            int m1346throws2 = jh0.m1346throws(str.charAt(i4));
                            if (m1346throws != -1 && m1346throws2 != -1) {
                                rk0Var.m2299synchronized((m1346throws << 4) + m1346throws2);
                                i5 = Character.charCount(codePointAt) + i4;
                            }
                            rk0Var.l(codePointAt);
                            i5 += Character.charCount(codePointAt);
                        } else {
                            if (codePointAt == 43 && z) {
                                rk0Var.m2299synchronized(32);
                                i5++;
                            }
                            rk0Var.l(codePointAt);
                            i5 += Character.charCount(codePointAt);
                        }
                    }
                    return rk0Var.m2298strictfp();
                }
                i5++;
            }
            String substring = str.substring(i, i2);
            nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }

        /* renamed from: if  reason: not valid java name */
        public final boolean m2602if(String str, int i, int i2) {
            int i3 = i + 2;
            return i3 < i2 && str.charAt(i) == '%' && jh0.m1346throws(str.charAt(i + 1)) != -1 && jh0.m1346throws(str.charAt(i3)) != -1;
        }

        @NotNull
        /* renamed from: new  reason: not valid java name */
        public final List<String> m2603new(@NotNull String str) {
            nd0.m1875new(str, "$this$toQueryNamesAndValues");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int m1209this = ie0.m1209this(str, '&', i, false, 4);
                if (m1209this == -1) {
                    m1209this = str.length();
                }
                int m1209this2 = ie0.m1209this(str, '=', i, false, 4);
                if (m1209this2 != -1 && m1209this2 <= m1209this) {
                    String substring = str.substring(i, m1209this2);
                    nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring);
                    String substring2 = str.substring(m1209this2 + 1, m1209this);
                    nd0.m1872for(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring2);
                } else {
                    String substring3 = str.substring(i, m1209this);
                    nd0.m1872for(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring3);
                    arrayList.add(null);
                }
                i = m1209this + 1;
            }
            return arrayList;
        }
    }

    public tg0(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, int i, @NotNull List<String> list, @Nullable List<String> list2, @Nullable String str5, @NotNull String str6) {
        nd0.m1875new(str, "scheme");
        nd0.m1875new(str2, "username");
        nd0.m1875new(str3, "password");
        nd0.m1875new(str4, "host");
        nd0.m1875new(list, "pathSegments");
        nd0.m1875new(str6, "url");
        this.f4686if = str;
        this.f4684for = str2;
        this.f4687new = str3;
        this.f4689try = str4;
        this.f4681case = i;
        this.f4683else = list2;
        this.f4685goto = str5;
        this.f4688this = str6;
        this.f4682do = nd0.m1870do(str, SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS);
    }

    @NotNull
    /* renamed from: case  reason: not valid java name */
    public final String m2589case() {
        Cdo cdo;
        nd0.m1875new("/...", "link");
        try {
            cdo = new Cdo();
            cdo.m2599new(this, "/...");
        } catch (IllegalArgumentException unused) {
            cdo = null;
        }
        nd0.m1874if(cdo);
        nd0.m1875new("", "username");
        cdo.f4696if = Cif.m2600do(f4680catch, "", 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251);
        nd0.m1875new("", "password");
        cdo.f4694for = Cif.m2600do(f4680catch, "", 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251);
        return cdo.m2596do().f4688this;
    }

    @JvmName(name = "encodedPassword")
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public final String m2590do() {
        if (this.f4687new.length() == 0) {
            return "";
        }
        int m1209this = ie0.m1209this(this.f4688this, ':', this.f4686if.length() + 3, false, 4) + 1;
        int m1209this2 = ie0.m1209this(this.f4688this, '@', 0, false, 6);
        String str = this.f4688this;
        if (str != null) {
            String substring = str.substring(m1209this, m1209this2);
            nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @JvmName(name = "uri")
    @NotNull
    /* renamed from: else  reason: not valid java name */
    public final URI m2591else() {
        int i;
        String substring;
        String str;
        Cdo cdo = new Cdo();
        cdo.f4692do = this.f4686if;
        String m2595try = m2595try();
        nd0.m1875new(m2595try, "<set-?>");
        cdo.f4696if = m2595try;
        String m2590do = m2590do();
        nd0.m1875new(m2590do, "<set-?>");
        cdo.f4694for = m2590do;
        cdo.f4697new = this.f4689try;
        int i2 = this.f4681case;
        String str2 = this.f4686if;
        nd0.m1875new(str2, "scheme");
        int hashCode = str2.hashCode();
        if (hashCode != 3213448) {
            if (hashCode == 99617003 && str2.equals(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS)) {
                i = 443;
            }
            i = -1;
        } else {
            if (str2.equals(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
                i = 80;
            }
            i = -1;
        }
        cdo.f4698try = i2 != i ? this.f4681case : -1;
        cdo.f4691case.clear();
        cdo.f4691case.addAll(m2592for());
        cdo.m2597for(m2594new());
        if (this.f4685goto == null) {
            substring = null;
        } else {
            int m1209this = ie0.m1209this(this.f4688this, '#', 0, false, 6) + 1;
            String str3 = this.f4688this;
            if (str3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            substring = str3.substring(m1209this);
            nd0.m1872for(substring, "(this as java.lang.String).substring(startIndex)");
        }
        cdo.f4695goto = substring;
        String str4 = cdo.f4697new;
        if (str4 != null) {
            nd0.m1875new("[\"<>^`{|}]", "pattern");
            Pattern compile = Pattern.compile("[\"<>^`{|}]");
            nd0.m1872for(compile, "Pattern.compile(pattern)");
            nd0.m1875new(compile, "nativePattern");
            nd0.m1875new(str4, "input");
            nd0.m1875new("", "replacement");
            str = compile.matcher(str4).replaceAll("");
            nd0.m1872for(str, "nativePattern.matcher(in…).replaceAll(replacement)");
        } else {
            str = null;
        }
        cdo.f4697new = str;
        int size = cdo.f4691case.size();
        for (int i3 = 0; i3 < size; i3++) {
            List<String> list = cdo.f4691case;
            list.set(i3, Cif.m2600do(f4680catch, list.get(i3), 0, 0, "[]", true, true, false, false, null, 227));
        }
        List<String> list2 = cdo.f4693else;
        if (list2 != null) {
            int size2 = list2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                String str5 = list2.get(i4);
                list2.set(i4, str5 != null ? Cif.m2600do(f4680catch, str5, 0, 0, "\\^`{|}", true, true, true, false, null, 195) : null);
            }
        }
        String str6 = cdo.f4695goto;
        cdo.f4695goto = str6 != null ? Cif.m2600do(f4680catch, str6, 0, 0, " \"#<>\\^`{|}", true, true, false, true, null, 163) : null;
        String cdo2 = cdo.toString();
        try {
            return new URI(cdo2);
        } catch (URISyntaxException e) {
            try {
                nd0.m1875new("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", "pattern");
                Pattern compile2 = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                nd0.m1872for(compile2, "Pattern.compile(pattern)");
                nd0.m1875new(compile2, "nativePattern");
                nd0.m1875new(cdo2, "input");
                nd0.m1875new("", "replacement");
                String replaceAll = compile2.matcher(cdo2).replaceAll("");
                nd0.m1872for(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
                URI create = URI.create(replaceAll);
                nd0.m1872for(create, "try {\n        val stripp…e) // Unexpected!\n      }");
                return create;
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof tg0) && nd0.m1870do(((tg0) obj).f4688this, this.f4688this);
    }

    @JvmName(name = "encodedPathSegments")
    @NotNull
    /* renamed from: for  reason: not valid java name */
    public final List<String> m2592for() {
        int m1209this = ie0.m1209this(this.f4688this, '/', this.f4686if.length() + 3, false, 4);
        String str = this.f4688this;
        int m1344this = jh0.m1344this(str, "?#", m1209this, str.length());
        ArrayList arrayList = new ArrayList();
        while (m1209this < m1344this) {
            int i = m1209this + 1;
            int m1328goto = jh0.m1328goto(this.f4688this, '/', i, m1344this);
            String str2 = this.f4688this;
            if (str2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String substring = str2.substring(i, m1328goto);
            nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            arrayList.add(substring);
            m1209this = m1328goto;
        }
        return arrayList;
    }

    public int hashCode() {
        return this.f4688this.hashCode();
    }

    @JvmName(name = "encodedPath")
    @NotNull
    /* renamed from: if  reason: not valid java name */
    public final String m2593if() {
        int m1209this = ie0.m1209this(this.f4688this, '/', this.f4686if.length() + 3, false, 4);
        String str = this.f4688this;
        int m1344this = jh0.m1344this(str, "?#", m1209this, str.length());
        String str2 = this.f4688this;
        if (str2 != null) {
            String substring = str2.substring(m1209this, m1344this);
            nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @JvmName(name = "encodedQuery")
    @Nullable
    /* renamed from: new  reason: not valid java name */
    public final String m2594new() {
        if (this.f4683else == null) {
            return null;
        }
        int m1209this = ie0.m1209this(this.f4688this, '?', 0, false, 6) + 1;
        String str = this.f4688this;
        int m1328goto = jh0.m1328goto(str, '#', m1209this, str.length());
        String str2 = this.f4688this;
        if (str2 != null) {
            String substring = str2.substring(m1209this, m1328goto);
            nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @JvmName(name = "query")
    @Nullable
    public final String query() {
        if (this.f4683else == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        List<String> list = this.f4683else;
        nd0.m1875new(list, "$this$toQueryString");
        nd0.m1875new(sb, "out");
        vd0 m3060if = yd0.m3060if(yd0.m3059for(0, list.size()), 2);
        int i = m3060if.f5067do;
        int i2 = m3060if.f5069if;
        int i3 = m3060if.f5068for;
        if (i3 < 0 ? i >= i2 : i <= i2) {
            while (true) {
                String str = list.get(i);
                String str2 = list.get(i + 1);
                if (i > 0) {
                    sb.append('&');
                }
                sb.append(str);
                if (str2 != null) {
                    sb.append('=');
                    sb.append(str2);
                }
                if (i == i2) {
                    break;
                }
                i += i3;
            }
        }
        return sb.toString();
    }

    @NotNull
    public String toString() {
        return this.f4688this;
    }

    @JvmName(name = "encodedUsername")
    @NotNull
    /* renamed from: try  reason: not valid java name */
    public final String m2595try() {
        if (this.f4684for.length() == 0) {
            return "";
        }
        int length = this.f4686if.length() + 3;
        String str = this.f4688this;
        int m1344this = jh0.m1344this(str, ":@", length, str.length());
        String str2 = this.f4688this;
        if (str2 != null) {
            String substring = str2.substring(length, m1344this);
            nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }
}
