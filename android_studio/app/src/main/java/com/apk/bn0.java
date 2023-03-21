package com.apk;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: HtmlTokenizer.java */
/* loaded from: classes7.dex */
public class bn0 {

    /* renamed from: break  reason: not valid java name */
    public transient mn0 f375break;

    /* renamed from: do  reason: not valid java name */
    public BufferedReader f380do;

    /* renamed from: final  reason: not valid java name */
    public boolean f382final;

    /* renamed from: for  reason: not valid java name */
    public transient int f383for;

    /* renamed from: goto  reason: not valid java name */
    public transient boolean f384goto;

    /* renamed from: import  reason: not valid java name */
    public qm0 f386import;

    /* renamed from: native  reason: not valid java name */
    public om0 f387native;

    /* renamed from: super  reason: not valid java name */
    public String f389super;

    /* renamed from: this  reason: not valid java name */
    public transient wm0 f390this;

    /* renamed from: throw  reason: not valid java name */
    public zm0 f391throw;

    /* renamed from: while  reason: not valid java name */
    public pm0 f393while;

    /* renamed from: if  reason: not valid java name */
    public char[] f385if = new char[1024];

    /* renamed from: new  reason: not valid java name */
    public transient int f388new = -1;

    /* renamed from: try  reason: not valid java name */
    public transient int f392try = 1;

    /* renamed from: case  reason: not valid java name */
    public transient int f376case = 1;

    /* renamed from: else  reason: not valid java name */
    public transient StringBuffer f381else = new StringBuffer(512);

    /* renamed from: catch  reason: not valid java name */
    public transient List<km0> f377catch = new ArrayList();

    /* renamed from: class  reason: not valid java name */
    public transient Set<String> f378class = new HashSet();

    /* renamed from: const  reason: not valid java name */
    public boolean f379const = true;

    public bn0(zm0 zm0Var, Reader reader, om0 om0Var) {
        this.f380do = new BufferedReader(reader);
        this.f391throw = zm0Var;
        this.f393while = zm0Var.f6219do;
        this.f386import = zm0Var.f6220if;
        this.f387native = om0Var;
    }

    /* renamed from: break  reason: not valid java name */
    public final boolean m214break() {
        int i = this.f388new;
        return i >= 0 && this.f383for >= i;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0006  */
    /* renamed from: case  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m215case() throws java.io.IOException {
        /*
            r2 = this;
        L0:
            boolean r0 = r2.m214break()
            if (r0 != 0) goto L53
            r2.m225import()
            r0 = 1
            r2.m220else(r0)
        */
        //  java.lang.String r1 = "/*<![CDATA[*/"
        /*
            boolean r1 = r2.m228public(r1)
            if (r1 != 0) goto L53
            java.lang.String r1 = "<![CDATA["
            boolean r1 = r2.m228public(r1)
            if (r1 != 0) goto L53
            java.lang.String r1 = "//<![CDATA["
            boolean r1 = r2.m228public(r1)
            if (r1 == 0) goto L26
            goto L53
        L26:
            java.lang.String r1 = "</"
            boolean r1 = r2.m228public(r1)
            if (r1 != 0) goto L51
            java.lang.String r1 = "<!"
            boolean r1 = r2.m228public(r1)
            if (r1 != 0) goto L51
            java.lang.String r1 = "<?"
            boolean r1 = r2.m228public(r1)
            if (r1 != 0) goto L51
            java.lang.String r1 = "<"
            boolean r1 = r2.m228public(r1)
            if (r1 == 0) goto L50
            int r1 = r2.f383for
            int r1 = r1 + r0
            boolean r1 = r2.m218const(r1)
            if (r1 == 0) goto L50
            goto L51
        L50:
            r0 = 0
        L51:
            if (r0 == 0) goto L0
        L53:
            boolean r0 = r2.m219do()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.bn0.m215case():boolean");
    }

    /* renamed from: catch  reason: not valid java name */
    public final boolean m216catch(char c) {
        return m217class(this.f383for, c);
    }

    /* renamed from: class  reason: not valid java name */
    public final boolean m217class(int i, char c) {
        int i2 = this.f388new;
        return (i2 < 0 || i < i2) && Character.toLowerCase(c) == Character.toLowerCase(this.f385if[i]);
    }

    /* renamed from: const  reason: not valid java name */
    public final boolean m218const(int i) {
        int i2 = this.f388new;
        if (i2 < 0 || i < i2) {
            return Character.isUnicodeIdentifierStart(this.f385if[i]);
        }
        return false;
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m219do() {
        if (this.f381else.length() > 0) {
            if (this.f393while != null) {
                m224if(new tm0(this.f381else.toString()));
                StringBuffer stringBuffer = this.f381else;
                stringBuffer.delete(0, stringBuffer.length());
                return true;
            }
            throw null;
        }
        return false;
    }

    /* renamed from: else  reason: not valid java name */
    public final void m220else(int i) throws IOException {
        this.f383for += i;
        m236while(i - 1);
        if (this.f383for < 0) {
            this.f383for = 0;
        }
    }

    /* renamed from: final  reason: not valid java name */
    public final boolean m221final(int i) {
        int i2 = this.f388new;
        if (i2 < 0 || i < i2) {
            char c = this.f385if[i];
            return (Character.isWhitespace(c) || c == 0 || c == 65533 || c == '\"' || c == "'".charAt(0) || c == '>' || c == '/' || c == '=' || Character.isISOControl(c) || !Character.isDefined(c)) ? false : true;
        }
        return false;
    }

    /* renamed from: for  reason: not valid java name */
    public final String m222for() throws IOException {
        boolean z;
        m226native();
        if (m216catch('<') || m216catch('>') || m228public("/>")) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        boolean z2 = false;
        if (m216catch('\'')) {
            m225import();
            m220else(1);
            z = false;
            z2 = true;
        } else if (m216catch('\"')) {
            m225import();
            m220else(1);
            z = true;
        } else {
            z = false;
        }
        pm0 pm0Var = this.f393while;
        boolean z3 = pm0Var.f3689break;
        boolean z4 = pm0Var.f3693const;
        while (!m214break() && ((z2 && !m216catch('\'') && ((z4 || (!m216catch('>') && !m216catch('<'))) && (z3 || !m234throw()))) || ((z && !m216catch('\"') && ((z4 || (!m216catch('>') && !m216catch('<'))) && (z3 || !m234throw()))) || (!z2 && !z && !m234throw() && !m216catch('>') && !m216catch('<'))))) {
            stringBuffer.append(this.f385if[this.f383for]);
            m225import();
            m220else(1);
        }
        if (m216catch('\'') && z2) {
            m225import();
            m220else(1);
        } else if (m216catch('\"') && z) {
            m225import();
            m220else(1);
        }
        if (this.f393while != null) {
            return stringBuffer.toString();
        }
        throw null;
    }

    /* renamed from: goto  reason: not valid java name */
    public final String m223goto(boolean z) throws IOException {
        int i;
        char c;
        this.f379const = true;
        char[] cArr = this.f385if;
        int i2 = this.f383for;
        if (!(cArr[i2] == '<' ? false : m221final(i2))) {
            this.f379const = false;
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (!m214break()) {
            if (!z || !m221final(this.f383for)) {
                if (!z) {
                    int i3 = this.f383for;
                    if (!(m221final(i3) && !(((i = this.f388new) >= 0 && i3 >= i) || (c = this.f385if[i3]) == '>' || c == '/' || c == ' ' || c == '<' || Character.isSpaceChar(c)))) {
                        break;
                    }
                } else {
                    break;
                }
            }
            m225import();
            stringBuffer.append(this.f385if[this.f383for]);
            m220else(1);
        }
        if (stringBuffer.length() == 0) {
            return null;
        }
        String stringBuffer2 = stringBuffer.toString();
        int indexOf = stringBuffer2.indexOf(58);
        if (indexOf >= 0) {
            String substring = stringBuffer2.substring(0, indexOf);
            stringBuffer2 = stringBuffer2.substring(indexOf + 1);
            int indexOf2 = stringBuffer2.indexOf(58);
            if (indexOf2 >= 0) {
                stringBuffer2 = stringBuffer2.substring(0, indexOf2);
            }
            if (this.f393while.f3696final) {
                stringBuffer2 = Cgoto.m996else(substring, ":", stringBuffer2);
                if (!"xmlns".equalsIgnoreCase(substring)) {
                    this.f378class.add(substring.toLowerCase());
                }
            }
        }
        return stringBuffer2;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m224if(km0 km0Var) {
        km0Var.mo1359if(this.f392try);
        km0Var.mo1358do(this.f376case);
        this.f377catch.add(km0Var);
        zm0 zm0Var = this.f391throw;
        List<km0> list = this.f377catch;
        zm0Var.m3214const(list, list.listIterator(list.size() - 1), this.f387native);
    }

    /* renamed from: import  reason: not valid java name */
    public final void m225import() {
        if (m214break()) {
            return;
        }
        char c = this.f385if[this.f383for];
        m232switch(c);
        this.f381else.append(c);
    }

    /* renamed from: native  reason: not valid java name */
    public final void m226native() throws IOException {
        while (!m214break() && m234throw()) {
            m225import();
            m220else(1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
        r10.f380do.reset();
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c7 A[LOOP:1: B:46:0x00c7->B:54:0x00df, LOOP_START] */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m227new() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.bn0.m227new():void");
    }

    /* renamed from: public  reason: not valid java name */
    public final boolean m228public(String str) throws IOException {
        int length = str.length();
        m236while(length);
        int i = this.f388new;
        if (i < 0 || this.f383for + length <= i) {
            for (int i2 = 0; i2 < length; i2++) {
                if (Character.toLowerCase(str.charAt(i2)) != Character.toLowerCase(this.f385if[this.f383for + i2])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: return  reason: not valid java name */
    public final void m229return() throws IOException {
        while (!m214break() && this.f379const && !m216catch('>') && !m228public("/>") && !Thread.currentThread().isInterrupted()) {
            m226native();
            String m223goto = m223goto(true);
            if (!this.f379const) {
                if (!m216catch('<') && !m216catch('>') && !m228public("/>")) {
                    m225import();
                    m220else(1);
                }
                if (!m216catch('<')) {
                    this.f379const = true;
                }
            } else {
                m226native();
                String str = "true";
                if (m216catch('=')) {
                    m225import();
                    m220else(1);
                    str = m222for();
                } else if (com.umeng.commonsdk.statistics.b.f.equals(this.f393while.f3691catch)) {
                    str = "";
                } else if (!"true".equals(this.f393while.f3691catch)) {
                    str = m223goto;
                }
                if (this.f379const) {
                    this.f375break.mo1527new(m223goto, str);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0068, code lost:
        if (r7.f393while.f3696final == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0078, code lost:
        if (r2.f3698goto != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
        m215case();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007d, code lost:
        return;
     */
    /* renamed from: static  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m230static() throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.m236while(r0)
            int r1 = r7.f383for
            r2 = 2
        L7:
            boolean r3 = r7.m214break()
            r4 = 1
            if (r3 != 0) goto L20
            if (r2 <= 0) goto L20
            char[] r3 = r7.f385if
            char r3 = r3[r1]
            r7.m232switch(r3)
            java.lang.StringBuffer r5 = r7.f381else
            r5.append(r3)
            int r1 = r1 + r4
            int r2 = r2 + (-1)
            goto L7
        L20:
            r7.m220else(r0)
            int r1 = r7.f376case
            int r1 = r1 + r0
            r7.f376case = r1
            boolean r0 = r7.m214break()
            if (r0 == 0) goto L2f
            return
        L2f:
            r0 = 0
            java.lang.String r1 = r7.m223goto(r0)
            com.apk.qm0 r2 = r7.f386import
            r3 = 0
            if (r2 == 0) goto L48
            boolean r2 = r2.m2148if(r1)
            if (r2 == 0) goto L48
            com.apk.qm0 r2 = r7.f386import
            com.apk.nn0 r2 = r2.m2147do(r1)
            if (r2 == 0) goto L48
            r1 = r3
        L48:
            if (r1 == 0) goto L7e
            com.apk.zm0 r2 = r7.f391throw
            com.apk.om0 r5 = r7.f387native
            com.apk.jn0 r2 = r2.m3223this(r1, r5)
            if (r2 != 0) goto L6a
            com.apk.pm0 r5 = r7.f393while
            boolean r6 = r5.f3702new
            if (r6 != 0) goto L6a
            boolean r5 = r5.f3709try
            if (r5 == 0) goto L6a
            boolean r5 = r7.m231super(r1)
            if (r5 != 0) goto L6a
            com.apk.pm0 r5 = r7.f393while
            boolean r5 = r5.f3696final
            if (r5 == 0) goto L7a
        L6a:
            if (r2 == 0) goto L7e
            boolean r2 = r2.f2379final
            if (r2 == 0) goto L7e
            com.apk.pm0 r2 = r7.f393while
            boolean r5 = r2.f3690case
            if (r5 != 0) goto L7e
            boolean r2 = r2.f3698goto
            if (r2 == 0) goto L7e
        L7a:
            r7.m215case()
            return
        L7e:
            com.apk.xm0 r2 = new com.apk.xm0
            r2.<init>(r1)
            r7.f375break = r2
            boolean r2 = r7.f379const
            if (r2 == 0) goto Lc9
            r7.m226native()
            r7.m229return()
            if (r1 == 0) goto L96
            com.apk.mn0 r2 = r7.f375break
            r7.m224if(r2)
        L96:
            r2 = 62
            boolean r2 = r7.m216catch(r2)
            if (r2 == 0) goto La1
            r7.m220else(r4)
        La1:
            com.apk.pm0 r2 = r7.f393while
            java.util.List<java.lang.String> r2 = r2.f3699if
            if (r2 == 0) goto Lb2
            if (r1 == 0) goto Lb2
            java.lang.String r4 = r1.toLowerCase()
            boolean r2 = r2.contains(r4)
            goto Lb3
        Lb2:
            r2 = 0
        Lb3:
            if (r2 == 0) goto Lb9
            r7.f382final = r0
            r7.f389super = r1
        Lb9:
            if (r1 == 0) goto Lc6
            java.lang.String r0 = "html"
            boolean r0 = r1.equalsIgnoreCase(r0)
            if (r0 == 0) goto Lc6
            r7.m226native()
        Lc6:
            r7.f375break = r3
            goto Lcc
        Lc9:
            r7.m219do()
        Lcc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.bn0.m230static():void");
    }

    /* renamed from: super  reason: not valid java name */
    public final boolean m231super(String str) {
        return "html".equalsIgnoreCase(str) || "head".equalsIgnoreCase(str) || "body".equalsIgnoreCase(str);
    }

    /* renamed from: switch  reason: not valid java name */
    public final void m232switch(char c) {
        if (c == '\n') {
            this.f392try++;
            this.f376case = 1;
            return;
        }
        this.f376case++;
    }

    /* renamed from: this  reason: not valid java name */
    public final void m233this(char c) throws IOException {
        while (!m214break()) {
            m220else(1);
            m232switch(this.f385if[this.f383for]);
            if (m217class(this.f383for, c)) {
                return;
            }
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public final boolean m234throw() {
        int i = this.f383for;
        int i2 = this.f388new;
        if (i2 < 0 || i < i2) {
            return Character.isWhitespace(this.f385if[i]);
        }
        return false;
    }

    /* renamed from: try  reason: not valid java name */
    public final void m235try() throws IOException {
        int i;
        m220else(4);
        while (!m214break() && !m228public("-->")) {
            m225import();
            m220else(1);
        }
        if (m228public("-->")) {
            m220else(3);
        }
        if (this.f381else.length() > 0) {
            pm0 pm0Var = this.f393while;
            if (!pm0Var.f3695else) {
                String str = pm0Var.f3700import;
                String replaceAll = this.f381else.toString().replaceAll("--", str + str);
                if (replaceAll.length() > 0 && replaceAll.charAt(0) == '-') {
                    StringBuilder m1016super = Cgoto.m1016super(str);
                    m1016super.append(replaceAll.substring(1));
                    replaceAll = m1016super.toString();
                }
                int length = replaceAll.length();
                if (length > 0) {
                    if (replaceAll.charAt(length - 1) == '-') {
                        replaceAll = replaceAll.substring(0, i) + str;
                    }
                }
                m224if(new sm0(replaceAll));
            }
            StringBuffer stringBuffer = this.f381else;
            stringBuffer.delete(0, stringBuffer.length());
        }
    }

    /* renamed from: while  reason: not valid java name */
    public final void m236while(int i) throws IOException {
        if (this.f388new != -1) {
            return;
        }
        int i2 = this.f383for;
        if (i + i2 < 1024) {
            return;
        }
        int i3 = 1024 - i2;
        char[] cArr = this.f385if;
        int i4 = 0;
        System.arraycopy(cArr, i2, cArr, 0, i3);
        this.f383for = 0;
        int i5 = 1024 - i3;
        int i6 = i3;
        int i7 = 0;
        do {
            int read = this.f380do.read(this.f385if, i6, i5);
            if (read >= 0) {
                i7 += read;
                i6 += read;
                i5 -= read;
            }
            if (read < 0) {
                break;
            }
        } while (i5 > 0);
        if (i5 > 0) {
            this.f388new = i7 + i3;
        }
        while (true) {
            int i8 = this.f388new;
            if (i8 < 0) {
                i8 = 1024;
            }
            if (i4 >= i8) {
                return;
            }
            char[] cArr2 = this.f385if;
            char c = cArr2[i4];
            if (c >= 1 && c <= ' ' && c != '\n' && c != '\r') {
                cArr2[i4] = ' ';
            }
            if (c == 0) {
                this.f385if[i4] = 65533;
            }
            i4++;
        }
    }
}
