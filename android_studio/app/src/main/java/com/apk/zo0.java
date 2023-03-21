package com.apk;

/* compiled from: TokenQueue.java */
/* loaded from: classes7.dex */
public class zo0 {

    /* renamed from: do  reason: not valid java name */
    public String f6223do;

    /* renamed from: if  reason: not valid java name */
    public int f6224if = 0;

    public zo0(String str) {
        sb0.m2418instanceof(str);
        this.f6223do = str;
    }

    /* renamed from: const  reason: not valid java name */
    public static String m3227const(String str) {
        StringBuilder m253if = bo0.m253if();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        char c = 0;
        while (i < length) {
            char c2 = charArray[i];
            if (c2 != '\\') {
                m253if.append(c2);
            } else if (c == '\\') {
                m253if.append(c2);
            }
            i++;
            c = c2;
        }
        return bo0.m246catch(m253if);
    }

    /* renamed from: break  reason: not valid java name */
    public boolean m3228break(String... strArr) {
        for (String str : strArr) {
            if (m3238this(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: case  reason: not valid java name */
    public boolean m3229case() {
        boolean z = false;
        while (true) {
            if (!(!m3233else() && bo0.m250else(this.f6223do.charAt(this.f6224if)))) {
                return z;
            }
            this.f6224if++;
            z = true;
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public boolean m3230catch() {
        return !m3233else() && Character.isLetterOrDigit(this.f6223do.charAt(this.f6224if));
    }

    /* renamed from: class  reason: not valid java name */
    public String m3231class() {
        String substring = this.f6223do.substring(this.f6224if);
        this.f6224if = this.f6223do.length();
        return substring;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0071 A[LOOP:0: B:3:0x0008->B:45:0x0071, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0055 A[EDGE_INSN: B:47:0x0055->B:38:0x0055 ?: BREAK  , SYNTHETIC] */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String m3232do(char r11, char r12) {
        /*
            r10 = this;
            r0 = -1
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = -1
            r5 = -1
            r6 = 0
            r7 = 0
        L8:
            boolean r8 = r10.m3233else()
            if (r8 == 0) goto Lf
            goto L55
        Lf:
            char r8 = r10.m3234for()
            r9 = 92
            if (r1 == r9) goto L41
            r9 = 39
            if (r8 != r9) goto L22
            if (r8 == r11) goto L22
            if (r2 != 0) goto L22
            r3 = r3 ^ 1
            goto L2c
        L22:
            r9 = 34
            if (r8 != r9) goto L2c
            if (r8 == r11) goto L2c
            if (r3 != 0) goto L2c
            r2 = r2 ^ 1
        L2c:
            if (r3 != 0) goto L53
            if (r2 != 0) goto L53
            if (r7 == 0) goto L33
            goto L53
        L33:
            if (r8 != r11) goto L3c
            int r6 = r6 + 1
            if (r4 != r0) goto L4c
            int r4 = r10.f6224if
            goto L4c
        L3c:
            if (r8 != r12) goto L4c
            int r6 = r6 + (-1)
            goto L4c
        L41:
            r9 = 81
            if (r8 != r9) goto L47
            r7 = 1
            goto L4c
        L47:
            r9 = 69
            if (r8 != r9) goto L4c
            r7 = 0
        L4c:
            if (r6 <= 0) goto L53
            if (r1 == 0) goto L53
            int r1 = r10.f6224if
            r5 = r1
        L53:
            if (r6 > 0) goto L71
        L55:
            if (r5 < 0) goto L5e
            java.lang.String r11 = r10.f6223do
            java.lang.String r11 = r11.substring(r4, r5)
            goto L60
        L5e:
            java.lang.String r11 = ""
        L60:
            if (r6 > 0) goto L63
            return r11
        L63:
            java.lang.String r12 = "Did not find balanced marker at '"
            java.lang.String r0 = "'"
            java.lang.String r11 = com.apk.Cgoto.m996else(r12, r11, r0)
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            r12.<init>(r11)
            throw r12
        L71:
            r1 = r8
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.zo0.m3232do(char, char):java.lang.String");
    }

    /* renamed from: else  reason: not valid java name */
    public boolean m3233else() {
        return this.f6223do.length() - this.f6224if == 0;
    }

    /* renamed from: for  reason: not valid java name */
    public char m3234for() {
        String str = this.f6223do;
        int i = this.f6224if;
        this.f6224if = i + 1;
        return str.charAt(i);
    }

    /* renamed from: goto  reason: not valid java name */
    public boolean m3235goto(String str) {
        if (m3238this(str)) {
            this.f6224if = str.length() + this.f6224if;
            return true;
        }
        return false;
    }

    /* renamed from: if  reason: not valid java name */
    public String m3236if(String str) {
        String m3231class;
        int indexOf = this.f6223do.indexOf(str, this.f6224if);
        if (indexOf != -1) {
            m3231class = this.f6223do.substring(this.f6224if, indexOf);
            this.f6224if = m3231class.length() + this.f6224if;
        } else {
            m3231class = m3231class();
        }
        m3235goto(str);
        return m3231class;
    }

    /* renamed from: new  reason: not valid java name */
    public void m3237new(String str) {
        if (m3238this(str)) {
            int length = str.length();
            int length2 = this.f6223do.length();
            int i = this.f6224if;
            if (length <= length2 - i) {
                this.f6224if = i + length;
                return;
            }
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        throw new IllegalStateException("Queue did not match expected sequence");
    }

    /* renamed from: this  reason: not valid java name */
    public boolean m3238this(String str) {
        return this.f6223do.regionMatches(true, this.f6224if, str, 0, str.length());
    }

    public String toString() {
        return this.f6223do.substring(this.f6224if);
    }

    /* renamed from: try  reason: not valid java name */
    public String m3239try() {
        int i = this.f6224if;
        while (!m3233else()) {
            if (!m3230catch()) {
                char[] cArr = {'-', '_'};
                boolean z = false;
                if (!m3233else()) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= 2) {
                            break;
                        }
                        if (this.f6223do.charAt(this.f6224if) == cArr[i2]) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                }
                if (!z) {
                    break;
                }
            }
            this.f6224if++;
        }
        return this.f6223do.substring(i, this.f6224if);
    }
}
