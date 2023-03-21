package com.apk;

import androidx.core.app.FrameMetricsAggregator;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import javax.annotation.Nullable;

/* compiled from: CharacterReader.java */
/* loaded from: classes7.dex */
public final class qo0 {

    /* renamed from: case  reason: not valid java name */
    public int f3900case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f3901catch;
    @Nullable

    /* renamed from: class  reason: not valid java name */
    public String f3902class;

    /* renamed from: const  reason: not valid java name */
    public int f3903const;

    /* renamed from: do  reason: not valid java name */
    public char[] f3904do;

    /* renamed from: for  reason: not valid java name */
    public int f3906for;

    /* renamed from: if  reason: not valid java name */
    public Reader f3908if;

    /* renamed from: new  reason: not valid java name */
    public int f3909new;

    /* renamed from: try  reason: not valid java name */
    public int f3911try;

    /* renamed from: else  reason: not valid java name */
    public int f3905else = -1;

    /* renamed from: goto  reason: not valid java name */
    public String[] f3907goto = new String[512];
    @Nullable

    /* renamed from: this  reason: not valid java name */
    public ArrayList<Integer> f3910this = null;

    /* renamed from: break  reason: not valid java name */
    public int f3899break = 1;

    public qo0(Reader reader, int i) {
        sb0.m2418instanceof(reader);
        sb0.m2422package(reader.markSupported());
        this.f3908if = reader;
        this.f3904do = new char[Math.min(i, 32768)];
        m2162if();
    }

    /* renamed from: for  reason: not valid java name */
    public static String m2149for(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        boolean z = true;
        if (i2 < 1) {
            return "";
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + cArr[i + i4];
        }
        int i5 = i3 & FrameMetricsAggregator.EVERY_DURATION;
        String str = strArr[i5];
        if (str != null) {
            if (i2 == str.length()) {
                int i6 = i;
                int i7 = i2;
                int i8 = 0;
                while (true) {
                    int i9 = i7 - 1;
                    if (i7 == 0) {
                        break;
                    }
                    int i10 = i6 + 1;
                    int i11 = i8 + 1;
                    if (cArr[i6] != str.charAt(i8)) {
                        break;
                    }
                    i6 = i10;
                    i7 = i9;
                    i8 = i11;
                }
            }
            z = false;
            if (z) {
                return str;
            }
        }
        String str2 = new String(cArr, i, i2);
        strArr[i5] = str2;
        return str2;
    }

    /* renamed from: break  reason: not valid java name */
    public String m2150break(char... cArr) {
        m2162if();
        int i = this.f3911try;
        int i2 = this.f3906for;
        char[] cArr2 = this.f3904do;
        int i3 = i;
        loop0: while (i3 < i2) {
            for (char c : cArr) {
                if (cArr2[i3] == c) {
                    break loop0;
                }
            }
            i3++;
        }
        this.f3911try = i3;
        return i3 > i ? m2149for(this.f3904do, this.f3907goto, i, i3 - i) : "";
    }

    /* renamed from: case  reason: not valid java name */
    public String m2151case(boolean z) {
        int i = this.f3911try;
        int i2 = this.f3906for;
        char[] cArr = this.f3904do;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0) {
                break;
            }
            if (c != '\"') {
                if (c == '&') {
                    break;
                } else if (c != '\'') {
                    continue;
                    i3++;
                } else if (z) {
                    break;
                }
            }
            if (!z) {
                break;
            }
            i3++;
        }
        this.f3911try = i3;
        return i3 > i ? m2149for(this.f3904do, this.f3907goto, i, i3 - i) : "";
    }

    /* renamed from: catch  reason: not valid java name */
    public String m2152catch(char... cArr) {
        m2162if();
        int i = this.f3911try;
        int i2 = this.f3906for;
        char[] cArr2 = this.f3904do;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.f3911try = i3;
        return i3 > i ? m2149for(this.f3904do, this.f3907goto, i, i3 - i) : "";
    }

    /* renamed from: class  reason: not valid java name */
    public String m2153class() {
        m2162if();
        char[] cArr = this.f3904do;
        String[] strArr = this.f3907goto;
        int i = this.f3911try;
        String m2149for = m2149for(cArr, strArr, i, this.f3906for - i);
        this.f3911try = this.f3906for;
        return m2149for;
    }

    /* renamed from: const  reason: not valid java name */
    public char m2154const() {
        m2162if();
        if (m2174throw()) {
            return (char) 65535;
        }
        return this.f3904do[this.f3911try];
    }

    /* renamed from: default  reason: not valid java name */
    public int m2155default(CharSequence charSequence) {
        m2162if();
        char charAt = charSequence.charAt(0);
        int i = this.f3911try;
        while (i < this.f3906for) {
            if (charAt != this.f3904do[i]) {
                do {
                    i++;
                    if (i >= this.f3906for) {
                        break;
                    }
                } while (charAt != this.f3904do[i]);
            }
            int i2 = i + 1;
            int length = (charSequence.length() + i2) - 1;
            int i3 = this.f3906for;
            if (i < i3 && length <= i3) {
                int i4 = i2;
                for (int i5 = 1; i4 < length && charSequence.charAt(i5) == this.f3904do[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i - this.f3911try;
                }
            }
            i = i2;
        }
        return -1;
    }

    /* renamed from: do  reason: not valid java name */
    public void m2156do() {
        this.f3911try++;
    }

    /* renamed from: else  reason: not valid java name */
    public String m2157else() {
        int i = this.f3911try;
        int i2 = this.f3906for;
        char[] cArr = this.f3904do;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '&' || c == '<') {
                break;
            }
            i3++;
        }
        this.f3911try = i3;
        return i3 > i ? m2149for(this.f3904do, this.f3907goto, i, i3 - i) : "";
    }

    /* renamed from: extends  reason: not valid java name */
    public int m2158extends() {
        return this.f3900case + this.f3911try;
    }

    /* renamed from: final  reason: not valid java name */
    public String m2159final() {
        int i;
        int m2158extends;
        int m2158extends2;
        StringBuilder sb = new StringBuilder();
        if (m2177while()) {
            int m2163import = m2163import();
            if (m2163import == -1) {
                i = this.f3899break;
            } else if (m2163import < 0) {
                i = (Math.abs(m2163import) + this.f3899break) - 1;
            } else {
                i = m2163import + this.f3899break + 1;
            }
        } else {
            i = 1;
        }
        sb.append(i);
        sb.append(":");
        if (!m2177while()) {
            m2158extends2 = m2158extends();
        } else {
            int m2163import2 = m2163import();
            if (m2163import2 == -1) {
                m2158extends2 = m2158extends();
            } else {
                if (m2163import2 < 0) {
                    m2163import2 = Math.abs(m2163import2) - 2;
                }
                m2158extends = (m2158extends() - this.f3910this.get(m2163import2).intValue()) + 1;
                sb.append(m2158extends);
                return sb.toString();
            }
        }
        m2158extends = m2158extends2 + 1;
        sb.append(m2158extends);
        return sb.toString();
    }

    /* renamed from: finally  reason: not valid java name */
    public void m2160finally() {
        int i = this.f3905else;
        if (i != -1) {
            this.f3911try = i;
            this.f3905else = -1;
            return;
        }
        throw new yn0(new IOException("Mark invalid"));
    }

    /* renamed from: goto  reason: not valid java name */
    public String m2161goto() {
        char c;
        m2162if();
        int i = this.f3911try;
        while (true) {
            int i2 = this.f3911try;
            if (i2 >= this.f3906for || (((c = this.f3904do[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.f3911try++;
        }
        return m2149for(this.f3904do, this.f3907goto, i, this.f3911try - i);
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2162if() {
        int i;
        int i2;
        boolean z;
        if (this.f3901catch || (i = this.f3911try) < this.f3909new) {
            return;
        }
        int i3 = this.f3905else;
        if (i3 != -1) {
            i2 = i - i3;
            i = i3;
        } else {
            i2 = 0;
        }
        try {
            long j = i;
            long skip = this.f3908if.skip(j);
            this.f3908if.mark(32768);
            int i4 = 0;
            while (true) {
                z = true;
                if (i4 > 1024) {
                    break;
                }
                int read = this.f3908if.read(this.f3904do, i4, this.f3904do.length - i4);
                if (read == -1) {
                    this.f3901catch = true;
                }
                if (read <= 0) {
                    break;
                }
                i4 += read;
            }
            this.f3908if.reset();
            if (i4 > 0) {
                if (skip != j) {
                    z = false;
                }
                sb0.m2422package(z);
                this.f3906for = i4;
                this.f3900case += i;
                this.f3911try = i2;
                if (this.f3905else != -1) {
                    this.f3905else = 0;
                }
                this.f3909new = Math.min(this.f3906for, 24576);
            }
            m2166package();
            this.f3902class = null;
        } catch (IOException e) {
            throw new yn0(e);
        }
    }

    /* renamed from: import  reason: not valid java name */
    public final int m2163import() {
        if (m2177while()) {
            return Collections.binarySearch(this.f3910this, Integer.valueOf(m2158extends()));
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[RETURN] */
    /* renamed from: native  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m2164native(java.lang.String r8) {
        /*
            r7 = this;
            r7.m2162if()
            r7.m2162if()
            int r0 = r8.length()
            int r1 = r7.f3906for
            int r2 = r7.f3911try
            int r1 = r1 - r2
            r2 = 0
            r3 = 1
            if (r0 <= r1) goto L14
            goto L24
        L14:
            r1 = 0
        L15:
            if (r1 >= r0) goto L29
            char r4 = r8.charAt(r1)
            char[] r5 = r7.f3904do
            int r6 = r7.f3911try
            int r6 = r6 + r1
            char r5 = r5[r6]
            if (r4 == r5) goto L26
        L24:
            r0 = 0
            goto L2a
        L26:
            int r1 = r1 + 1
            goto L15
        L29:
            r0 = 1
        L2a:
            if (r0 == 0) goto L36
            int r0 = r7.f3911try
            int r8 = r8.length()
            int r8 = r8 + r0
            r7.f3911try = r8
            return r3
        L36:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.qo0.m2164native(java.lang.String):boolean");
    }

    /* renamed from: new  reason: not valid java name */
    public void m2165new() {
        Reader reader = this.f3908if;
        if (reader == null) {
            return;
        }
        try {
            reader.close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.f3908if = null;
            this.f3904do = null;
            this.f3907goto = null;
            throw th;
        }
        this.f3908if = null;
        this.f3904do = null;
        this.f3907goto = null;
    }

    /* renamed from: package  reason: not valid java name */
    public final void m2166package() {
        ArrayList<Integer> arrayList;
        if (m2177while()) {
            this.f3899break = this.f3910this.size() + this.f3899break;
            int intValue = this.f3910this.size() > 0 ? this.f3910this.get(arrayList.size() - 1).intValue() : -1;
            this.f3910this.clear();
            if (intValue != -1) {
                this.f3910this.add(Integer.valueOf(intValue));
                this.f3899break--;
            }
            for (int i = this.f3911try; i < this.f3906for; i++) {
                if (this.f3904do[i] == '\n') {
                    this.f3910this.add(Integer.valueOf(this.f3900case + 1 + i));
                }
            }
        }
    }

    /* renamed from: private  reason: not valid java name */
    public void m2167private() {
        int i = this.f3911try;
        if (i >= 1) {
            this.f3911try = i - 1;
            return;
        }
        throw new yn0(new IOException("WTF: No buffer left to unconsume."));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003b A[RETURN] */
    /* renamed from: public  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m2168public(java.lang.String r8) {
        /*
            r7 = this;
            r7.m2162if()
            int r0 = r8.length()
            int r1 = r7.f3906for
            int r2 = r7.f3911try
            int r1 = r1 - r2
            r2 = 0
            r3 = 1
            if (r0 <= r1) goto L11
            goto L29
        L11:
            r1 = 0
        L12:
            if (r1 >= r0) goto L2e
            char r4 = r8.charAt(r1)
            char r4 = java.lang.Character.toUpperCase(r4)
            char[] r5 = r7.f3904do
            int r6 = r7.f3911try
            int r6 = r6 + r1
            char r5 = r5[r6]
            char r5 = java.lang.Character.toUpperCase(r5)
            if (r4 == r5) goto L2b
        L29:
            r0 = 0
            goto L2f
        L2b:
            int r1 = r1 + 1
            goto L12
        L2e:
            r0 = 1
        L2f:
            if (r0 == 0) goto L3b
            int r0 = r7.f3911try
            int r8 = r8.length()
            int r8 = r8 + r0
            r7.f3911try = r8
            return r3
        L3b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.qo0.m2168public(java.lang.String):boolean");
    }

    /* renamed from: return  reason: not valid java name */
    public boolean m2169return(char c) {
        return !m2171super() && this.f3904do[this.f3911try] == c;
    }

    /* renamed from: static  reason: not valid java name */
    public boolean m2170static(char... cArr) {
        if (m2171super()) {
            return false;
        }
        m2162if();
        char c = this.f3904do[this.f3911try];
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: super  reason: not valid java name */
    public boolean m2171super() {
        m2162if();
        return this.f3911try >= this.f3906for;
    }

    /* renamed from: switch  reason: not valid java name */
    public boolean m2172switch() {
        if (m2171super()) {
            return false;
        }
        char c = this.f3904do[this.f3911try];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
    }

    /* renamed from: this  reason: not valid java name */
    public String m2173this(char c) {
        int i;
        m2162if();
        int i2 = this.f3911try;
        while (true) {
            if (i2 >= this.f3906for) {
                i = -1;
                break;
            } else if (c == this.f3904do[i2]) {
                i = i2 - this.f3911try;
                break;
            } else {
                i2++;
            }
        }
        if (i != -1) {
            String m2149for = m2149for(this.f3904do, this.f3907goto, this.f3911try, i);
            this.f3911try += i;
            return m2149for;
        }
        return m2153class();
    }

    /* renamed from: throw  reason: not valid java name */
    public final boolean m2174throw() {
        return this.f3911try >= this.f3906for;
    }

    /* renamed from: throws  reason: not valid java name */
    public boolean m2175throws() {
        if (m2171super()) {
            return false;
        }
        char c = this.f3904do[this.f3911try];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || Character.isLetter(c);
    }

    public String toString() {
        if (this.f3906for - this.f3911try < 0) {
            return "";
        }
        char[] cArr = this.f3904do;
        int i = this.f3911try;
        return new String(cArr, i, this.f3906for - i);
    }

    /* renamed from: try  reason: not valid java name */
    public char m2176try() {
        m2162if();
        char c = m2174throw() ? (char) 65535 : this.f3904do[this.f3911try];
        this.f3911try++;
        return c;
    }

    /* renamed from: while  reason: not valid java name */
    public boolean m2177while() {
        return this.f3910this != null;
    }
}
