package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.parser.LitePalParser;

/* compiled from: Util.kt */
@JvmName(name = "Util")
/* loaded from: classes7.dex */
public final class jh0 {
    @JvmField
    @NotNull

    /* renamed from: case */
    public static final TimeZone f2329case;

    /* renamed from: else */
    public static final ge0 f2331else;
    @JvmField
    @NotNull

    /* renamed from: for */
    public static final dh0 f2332for;
    @JvmField

    /* renamed from: goto */
    public static final boolean f2333goto;
    @JvmField
    @NotNull

    /* renamed from: new */
    public static final bh0 f2335new;
    @JvmField
    @NotNull

    /* renamed from: this */
    public static final String f2336this;

    /* renamed from: try */
    public static final cl0 f2337try;
    @JvmField
    @NotNull

    /* renamed from: do */
    public static final byte[] f2330do = new byte[0];
    @JvmField
    @NotNull

    /* renamed from: if */
    public static final sg0 f2334if = sg0.f4351if.m2465for(new String[0]);

    /* JADX WARN: Code restructure failed: missing block: B:199:0x0209, code lost:
        continue;
     */
    static {
        /*
            Method dump skipped, instructions count: 695
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.jh0.<clinit>():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /* renamed from: abstract */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.String m1314abstract(@org.jetbrains.annotations.NotNull com.apk.tg0 r4, boolean r5) {
        /*
            java.lang.String r0 = "$this$toHostHeader"
            com.apk.nd0.m1875new(r4, r0)
            java.lang.String r0 = r4.f4689try
            r1 = 0
            r2 = 2
            java.lang.String r3 = ":"
            boolean r0 = com.apk.ie0.m1200if(r0, r3, r1, r2)
            if (r0 == 0) goto L2a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 91
            r0.append(r1)
            java.lang.String r1 = r4.f4689try
            r0.append(r1)
            r1 = 93
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto L2c
        L2a:
            java.lang.String r0 = r4.f4689try
        L2c:
            if (r5 != 0) goto L5f
            int r5 = r4.f4681case
            java.lang.String r1 = r4.f4686if
            java.lang.String r2 = "scheme"
            com.apk.nd0.m1875new(r1, r2)
            int r2 = r1.hashCode()
            r3 = 3213448(0x310888, float:4.503E-39)
            if (r2 == r3) goto L51
            r3 = 99617003(0x5f008eb, float:2.2572767E-35)
            if (r2 == r3) goto L46
            goto L5c
        L46:
            java.lang.String r2 = "https"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L5c
            r1 = 443(0x1bb, float:6.21E-43)
            goto L5d
        L51:
            java.lang.String r2 = "http"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L5c
            r1 = 80
            goto L5d
        L5c:
            r1 = -1
        L5d:
            if (r5 == r1) goto L75
        L5f:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r0)
            r0 = 58
            r5.append(r0)
            int r4 = r4.f4681case
            r5.append(r4)
            java.lang.String r0 = r5.toString()
        L75:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.jh0.m1314abstract(com.apk.tg0, boolean):java.lang.String");
    }

    /* renamed from: break */
    public static /* synthetic */ int m1315break(String str, char c, int i, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return m1328goto(str, c, i, i2);
    }

    /* renamed from: case */
    public static final void m1316case(@NotNull Closeable closeable) {
        nd0.m1875new(closeable, "$this$closeQuietly");
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    /* renamed from: catch */
    public static final boolean m1317catch(@NotNull ll0 ll0Var, int i, @NotNull TimeUnit timeUnit) {
        nd0.m1875new(ll0Var, "$this$discard");
        nd0.m1875new(timeUnit, "timeUnit");
        try {
            return m1335package(ll0Var, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    @NotNull
    /* renamed from: class */
    public static final String m1318class(@NotNull String str, @NotNull Object... objArr) {
        nd0.m1875new(str, "format");
        nd0.m1875new(objArr, "args");
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        String format = String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length));
        nd0.m1872for(format, "java.lang.String.format(locale, format, *args)");
        return format;
    }

    /* renamed from: const */
    public static final boolean m1319const(@NotNull String[] strArr, @Nullable String[] strArr2, @NotNull Comparator<? super String> comparator) {
        nd0.m1875new(strArr, "$this$hasIntersection");
        nd0.m1875new(comparator, "comparator");
        if (!(strArr.length == 0) && strArr2 != null) {
            if (!(strArr2.length == 0)) {
                for (String str : strArr) {
                    for (String str2 : strArr2) {
                        if (comparator.compare(str, str2) == 0) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @NotNull
    /* renamed from: continue */
    public static final <T> List<T> m1320continue(@NotNull List<? extends T> list) {
        nd0.m1875new(list, "$this$toImmutableList");
        List<T> unmodifiableList = Collections.unmodifiableList(uc0.m2692break(list));
        nd0.m1872for(unmodifiableList, "Collections.unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    @NotNull
    /* renamed from: default */
    public static final Charset m1321default(@NotNull tk0 tk0Var, @NotNull Charset charset) throws IOException {
        Charset charset2;
        nd0.m1875new(tk0Var, "$this$readBomAsCharset");
        nd0.m1875new(charset, "default");
        int mo861switch = tk0Var.mo861switch(f2337try);
        if (mo861switch != -1) {
            if (mo861switch == 0) {
                Charset charset3 = StandardCharsets.UTF_8;
                nd0.m1872for(charset3, "UTF_8");
                return charset3;
            } else if (mo861switch == 1) {
                Charset charset4 = StandardCharsets.UTF_16BE;
                nd0.m1872for(charset4, "UTF_16BE");
                return charset4;
            } else if (mo861switch == 2) {
                Charset charset5 = StandardCharsets.UTF_16LE;
                nd0.m1872for(charset5, "UTF_16LE");
                return charset5;
            } else {
                if (mo861switch == 3) {
                    ee0 ee0Var = ee0.f1040new;
                    charset2 = ee0.f1038for;
                    if (charset2 == null) {
                        charset2 = Charset.forName("UTF-32BE");
                        nd0.m1872for(charset2, "Charset.forName(\"UTF-32BE\")");
                        ee0.f1038for = charset2;
                    }
                } else if (mo861switch == 4) {
                    ee0 ee0Var2 = ee0.f1040new;
                    charset2 = ee0.f1039if;
                    if (charset2 == null) {
                        charset2 = Charset.forName("UTF-32LE");
                        nd0.m1872for(charset2, "Charset.forName(\"UTF-32LE\")");
                        ee0.f1039if = charset2;
                    }
                } else {
                    throw new AssertionError();
                }
                return charset2;
            }
        }
        return charset;
    }

    /* renamed from: do */
    public static final int m1322do(byte b, int i) {
        return b & i;
    }

    /* renamed from: else */
    public static final void m1323else(@NotNull Socket socket) {
        nd0.m1875new(socket, "$this$closeQuietly");
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (!nd0.m1870do(e2.getMessage(), "bio == null")) {
                throw e2;
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: extends */
    public static final int m1324extends(@NotNull tk0 tk0Var) throws IOException {
        nd0.m1875new(tk0Var, "$this$readMedium");
        return (tk0Var.readByte() & ExifInterface.MARKER) | ((tk0Var.readByte() & ExifInterface.MARKER) << 16) | ((tk0Var.readByte() & ExifInterface.MARKER) << 8);
    }

    /* renamed from: final */
    public static final long m1325final(@NotNull ch0 ch0Var) {
        nd0.m1875new(ch0Var, "$this$headersContentLength");
        String m2453do = ch0Var.f611else.m2453do("Content-Length");
        if (m2453do != null) {
            nd0.m1875new(m2453do, "$this$toLongOrDefault");
            try {
                return Long.parseLong(m2453do);
            } catch (NumberFormatException unused) {
            }
        }
        return -1L;
    }

    /* renamed from: finally */
    public static final int m1326finally(@NotNull rk0 rk0Var, byte b) {
        nd0.m1875new(rk0Var, "$this$skipAll");
        int i = 0;
        while (!rk0Var.mo853else() && rk0Var.m2289default(0L) == b) {
            i++;
            rk0Var.readByte();
        }
        return i;
    }

    /* renamed from: for */
    public static final boolean m1327for(@NotNull tg0 tg0Var, @NotNull tg0 tg0Var2) {
        nd0.m1875new(tg0Var, "$this$canReuseConnectionFor");
        nd0.m1875new(tg0Var2, "other");
        return nd0.m1870do(tg0Var.f4689try, tg0Var2.f4689try) && tg0Var.f4681case == tg0Var2.f4681case && nd0.m1870do(tg0Var.f4686if, tg0Var2.f4686if);
    }

    /* renamed from: goto */
    public static final int m1328goto(@NotNull String str, char c, int i, int i2) {
        nd0.m1875new(str, "$this$delimiterOffset");
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: if */
    public static final boolean m1329if(@NotNull String str) {
        nd0.m1875new(str, "$this$canParseAsIpAddress");
        return f2331else.m956do(str);
    }

    /* renamed from: implements */
    public static final void m1330implements(@NotNull sk0 sk0Var, int i) throws IOException {
        nd0.m1875new(sk0Var, "$this$writeMedium");
        sk0Var.writeByte((i >>> 16) & 255);
        sk0Var.writeByte((i >>> 8) & 255);
        sk0Var.writeByte(i & 255);
    }

    /* renamed from: import */
    public static final int m1331import(@NotNull String str, int i, int i2) {
        nd0.m1875new(str, "$this$indexOfFirstNonAsciiWhitespace");
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: interface */
    public static final int m1332interface(@Nullable String str, int i) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
                    return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                }
                if (parseLong < 0) {
                    return 0;
                }
                return (int) parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    /* renamed from: native */
    public static /* synthetic */ int m1333native(String str, int i, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return m1331import(str, i, i2);
    }

    /* renamed from: new */
    public static final int m1334new(@NotNull String str, long j, @Nullable TimeUnit timeUnit) {
        nd0.m1875new(str, "name");
        boolean z = false;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (1 != 0) {
                long millis = timeUnit.toMillis(j);
                if (millis <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
                    if ((millis != 0 || i <= 0) ? true : true) {
                        return (int) millis;
                    }
                    throw new IllegalArgumentException(Cgoto.m989case(str, " too small.").toString());
                }
                throw new IllegalArgumentException(Cgoto.m989case(str, " too large.").toString());
            }
            throw new IllegalStateException("unit == null".toString());
        }
        throw new IllegalStateException(Cgoto.m989case(str, " < 0").toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0053, code lost:
        if (r5 == androidx.recyclerview.widget.RecyclerView.FOREVER_NS) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0070, code lost:
        if (r5 != androidx.recyclerview.widget.RecyclerView.FOREVER_NS) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0072, code lost:
        r11.mo71if().mo1729do();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x007a, code lost:
        r11.mo71if().mo1733new(r0 + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0082, code lost:
        return r12;
     */
    /* renamed from: package */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean m1335package(@org.jetbrains.annotations.NotNull com.apk.ll0 r11, int r12, @org.jetbrains.annotations.NotNull java.util.concurrent.TimeUnit r13) throws java.io.IOException {
        /*
            java.lang.String r0 = "$this$skipAll"
            com.apk.nd0.m1875new(r11, r0)
            java.lang.String r0 = "timeUnit"
            com.apk.nd0.m1875new(r13, r0)
            long r0 = java.lang.System.nanoTime()
            com.apk.ml0 r2 = r11.mo71if()
            boolean r2 = r2.mo1734try()
            r3 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            if (r2 == 0) goto L27
            com.apk.ml0 r2 = r11.mo71if()
            long r5 = r2.mo1731for()
            long r5 = r5 - r0
            goto L28
        L27:
            r5 = r3
        L28:
            com.apk.ml0 r2 = r11.mo71if()
            long r7 = (long) r12
            long r12 = r13.toNanos(r7)
            long r12 = java.lang.Math.min(r5, r12)
            long r12 = r12 + r0
            r2.mo1733new(r12)
            com.apk.rk0 r12 = new com.apk.rk0     // Catch: java.lang.Throwable -> L56 java.io.InterruptedIOException -> L6c
            r12.<init>()     // Catch: java.lang.Throwable -> L56 java.io.InterruptedIOException -> L6c
        L3e:
            r7 = 8192(0x2000, double:4.0474E-320)
            long r7 = r11.mo72import(r12, r7)     // Catch: java.lang.Throwable -> L56 java.io.InterruptedIOException -> L6c
            r9 = -1
            int r13 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r13 == 0) goto L50
            long r7 = r12.f4108if     // Catch: java.lang.Throwable -> L56 java.io.InterruptedIOException -> L6c
            r12.skip(r7)     // Catch: java.lang.Throwable -> L56 java.io.InterruptedIOException -> L6c
            goto L3e
        L50:
            r12 = 1
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L7a
            goto L72
        L56:
            r12 = move-exception
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L63
            com.apk.ml0 r11 = r11.mo71if()
            r11.mo1729do()
            goto L6b
        L63:
            com.apk.ml0 r11 = r11.mo71if()
            long r0 = r0 + r5
            r11.mo1733new(r0)
        L6b:
            throw r12
        L6c:
            r12 = 0
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L7a
        L72:
            com.apk.ml0 r11 = r11.mo71if()
            r11.mo1729do()
            goto L82
        L7a:
            com.apk.ml0 r11 = r11.mo71if()
            long r0 = r0 + r5
            r11.mo1733new(r0)
        L82:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.jh0.m1335package(com.apk.ll0, int, java.util.concurrent.TimeUnit):boolean");
    }

    @NotNull
    /* renamed from: private */
    public static final sg0 m1336private(@NotNull List<ui0> list) {
        nd0.m1875new(list, "$this$toHeaders");
        ArrayList arrayList = new ArrayList(20);
        for (ui0 ui0Var : list) {
            uk0 uk0Var = ui0Var.f4905if;
            uk0 uk0Var2 = ui0Var.f4904for;
            String m2714break = uk0Var.m2714break();
            String m2714break2 = uk0Var2.m2714break();
            nd0.m1875new(m2714break, "name");
            nd0.m1875new(m2714break2, LitePalParser.ATTR_VALUE);
            arrayList.add(m2714break);
            arrayList.add(ie0.m1211throws(m2714break2).toString());
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return new sg0((String[]) array, null);
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @NotNull
    /* renamed from: protected */
    public static final String m1337protected(@NotNull String str, int i, int i2) {
        nd0.m1875new(str, "$this$trimSubstring");
        int m1331import = m1331import(str, i, i2);
        String substring = str.substring(m1331import, m1338public(str, m1331import, i2));
        nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    /* renamed from: public */
    public static final int m1338public(@NotNull String str, int i, int i2) {
        nd0.m1875new(str, "$this$indexOfLastNonAsciiWhitespace");
        int i3 = i2 - 1;
        if (i3 >= i) {
            while (true) {
                char charAt = str.charAt(i3);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i3 + 1;
                }
                if (i3 == i) {
                    break;
                }
                i3--;
            }
        }
        return i;
    }

    /* renamed from: return */
    public static final int m1339return(@NotNull String str, int i) {
        nd0.m1875new(str, "$this$indexOfNonWhitespace");
        int length = str.length();
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\t') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    @NotNull
    /* renamed from: static */
    public static final String[] m1340static(@NotNull String[] strArr, @NotNull String[] strArr2, @NotNull Comparator<? super String> comparator) {
        nd0.m1875new(strArr, "$this$intersect");
        nd0.m1875new(strArr2, "other");
        nd0.m1875new(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i++;
                }
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return (String[]) array;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @NotNull
    /* renamed from: strictfp */
    public static final <K, V> Map<K, V> m1341strictfp(@NotNull Map<K, ? extends V> map) {
        nd0.m1875new(map, "$this$toImmutableMap");
        if (map.isEmpty()) {
            return yc0.f5906do;
        }
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        nd0.m1872for(unmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
        return unmodifiableMap;
    }

    @SafeVarargs
    @NotNull
    /* renamed from: super */
    public static final <T> List<T> m1342super(@NotNull T... tArr) {
        nd0.m1875new(tArr, "elements");
        Object[] objArr = (Object[]) tArr.clone();
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        nd0.m1875new(copyOf, "elements");
        List<T> unmodifiableList = Collections.unmodifiableList(copyOf.length > 0 ? uc0.m2694do(copyOf) : xc0.f5512do);
        nd0.m1872for(unmodifiableList, "Collections.unmodifiable…istOf(*elements.clone()))");
        return unmodifiableList;
    }

    /* renamed from: switch */
    public static final boolean m1343switch(@NotNull String str) {
        nd0.m1875new(str, "name");
        return ie0.m1203new(str, "Authorization", true) || ie0.m1203new(str, "Cookie", true) || ie0.m1203new(str, "Proxy-Authorization", true) || ie0.m1203new(str, "Set-Cookie", true);
    }

    /* renamed from: this */
    public static final int m1344this(@NotNull String str, @NotNull String str2, int i, int i2) {
        nd0.m1875new(str, "$this$delimiterOffset");
        nd0.m1875new(str2, "delimiters");
        while (i < i2) {
            if (ie0.m1195do(str2, str.charAt(i), false, 2)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: throw */
    public static final int m1345throw(@NotNull String[] strArr, @NotNull String str, @NotNull Comparator<String> comparator) {
        nd0.m1875new(strArr, "$this$indexOf");
        nd0.m1875new(str, LitePalParser.ATTR_VALUE);
        nd0.m1875new(comparator, "comparator");
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: throws */
    public static final int m1346throws(char c) {
        if ('0' <= c && '9' >= c) {
            return c - '0';
        }
        char c2 = 'a';
        if ('a' > c || 'f' < c) {
            c2 = 'A';
            if ('A' > c || 'F' < c) {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    @NotNull
    /* renamed from: transient */
    public static final Throwable m1347transient(@NotNull Exception exc, @NotNull List<? extends Exception> list) {
        nd0.m1875new(exc, "$this$withSuppressed");
        nd0.m1875new(list, "suppressed");
        if (list.size() > 1) {
            System.out.println(list);
        }
        for (Exception exc2 : list) {
            sb0.m2436try(exc, exc2);
        }
        return exc;
    }

    /* renamed from: try */
    public static final void m1348try(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    /* renamed from: volatile */
    public static final long m1349volatile(@NotNull String str, long j) {
        nd0.m1875new(str, "$this$toLongOrDefault");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    /* renamed from: while */
    public static final int m1350while(@NotNull String str) {
        nd0.m1875new(str, "$this$indexOfControlOrNonAscii");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (nd0.m1877try(charAt, 31) <= 0 || nd0.m1877try(charAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }
}
