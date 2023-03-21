package com.apk;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Stack;
/* compiled from: HtmlCleaner.java */
/* loaded from: classes7.dex */
public class zm0 {

    /* renamed from: do  reason: not valid java name */
    public pm0 f6219do;

    /* renamed from: if  reason: not valid java name */
    public qm0 f6220if;

    public zm0() {
        pm0 pm0Var = new pm0();
        this.f6219do = pm0Var;
        if (pm0Var.f3694do == null) {
            pm0Var.f3694do = ym0.f6006if;
        }
    }

    /* renamed from: break  reason: not valid java name */
    public final boolean m3210break(String str, om0 om0Var) {
        String peek;
        if (this.f6219do.f3696final && str != null) {
            if (str.contains(":")) {
                return true;
            }
            Stack<String> stack = om0Var.f3463const;
            return (stack == null || stack.size() == 0 || (peek = om0Var.f3463const.peek()) == null || peek.equals("http://www.w3.org/1999/xhtml")) ? false : true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00cc, code lost:
        if (r6.f1100if.isEmpty() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ce, code lost:
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d0, code lost:
        r8 = r6.f1100if.get(r8.size() - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00de, code lost:
        r6.f1099for = r8;
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00fb, code lost:
        if (r1 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0103, code lost:
        if (r15.f3463const.isEmpty() != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0105, code lost:
        r15.f3463const.pop();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x010a, code lost:
        return r0;
     */
    /* renamed from: case  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.apk.kn0> m3211case(java.util.List r12, com.apk.ln0 r13, java.lang.Object r14, com.apk.om0 r15) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.zm0.m3211case(java.util.List, com.apk.ln0, java.lang.Object, com.apk.om0):java.util.List");
    }

    /* renamed from: catch  reason: not valid java name */
    public final boolean m3212catch(km0 km0Var, om0 om0Var) {
        jn0 jn0Var;
        ln0 ln0Var = m3219goto(om0Var).f1099for;
        if (ln0Var == null || (jn0Var = ln0Var.f2845for) == null) {
            return true;
        }
        return jn0Var.m1366if(km0Var);
    }

    /* renamed from: class  reason: not valid java name */
    public final boolean m3213class(Object obj) {
        return (obj instanceof kn0) && !((kn0) obj).f2605else;
    }

    /* JADX WARN: Code restructure failed: missing block: B:236:0x04c1, code lost:
        if (r11.f2844do <= r8) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x04d0, code lost:
        if (r11.f2844do <= r8) goto L287;
     */
    /* JADX WARN: Removed duplicated region for block: B:246:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x050a  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x05fd A[LOOP:15: B:281:0x05c3->B:295:0x05fd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0600 A[EDGE_INSN: B:439:0x0600->B:296:0x0600 ?: BREAK  , SYNTHETIC] */
    /* renamed from: const  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3214const(java.util.List r20, java.util.ListIterator<com.apk.km0> r21, com.apk.om0 r22) {
        /*
            Method dump skipped, instructions count: 1827
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.zm0.m3214const(java.util.List, java.util.ListIterator, com.apk.om0):void");
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3215do(kn0 kn0Var, Map<String, String> map) {
        Map<String, String> m1520class = kn0Var.m1520class();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (!((HashMap) m1520class).containsKey(key)) {
                kn0Var.mo1527new(key, entry.getValue());
            }
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final nm0 m3216else(om0 om0Var) {
        return om0Var.f3472try.peek().f947if;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0080 A[SYNTHETIC] */
    /* renamed from: final  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3217final(java.util.List r8, com.apk.om0 r9) {
        /*
            r7 = this;
            java.util.Iterator r8 = r8.iterator()
            r0 = 0
            r1 = 1
            r2 = 0
        L7:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto L91
            java.lang.Object r3 = r8.next()
            boolean r4 = r3 instanceof com.apk.kn0
            if (r4 == 0) goto L7
            java.util.Set<com.apk.kn0> r4 = r9.f3461catch
            boolean r4 = r4.contains(r3)
            if (r4 != 0) goto L7
            com.apk.kn0 r3 = (com.apk.kn0) r3
            java.util.Set<com.apk.tn0> r4 = r9.f3459break
            if (r4 == 0) goto L46
            java.util.Iterator r4 = r4.iterator()
        L27:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L46
            java.lang.Object r5 = r4.next()
            com.apk.tn0 r5 = (com.apk.tn0) r5
            boolean r6 = r5.mo2609do(r3)
            if (r6 == 0) goto L27
            r3.f2603class = r1
            java.util.Set<com.apk.kn0> r4 = r9.f3461catch
            r4.add(r3)
            com.apk.pm0 r4 = r7.f6219do
            r4.mo2055do(r5, r3)
            goto L7b
        L46:
            java.util.Set<com.apk.tn0> r4 = r9.f3462class
            if (r4 == 0) goto L7d
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L7d
            java.util.Set<com.apk.tn0> r4 = r9.f3462class
            java.util.Iterator r4 = r4.iterator()
        L56:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L69
            java.lang.Object r5 = r4.next()
            com.apk.tn0 r5 = (com.apk.tn0) r5
            boolean r5 = r5.mo2609do(r3)
            if (r5 == 0) goto L56
            goto L7d
        L69:
            boolean r4 = r3.f2607goto
            if (r4 != 0) goto L74
            com.apk.pm0 r4 = r7.f6219do
            com.apk.rn0 r5 = com.apk.rn0.NotAllowedTag
            r4.mo2057if(r1, r3, r5)
        L74:
            r3.f2603class = r1
            java.util.Set<com.apk.kn0> r4 = r9.f3461catch
            r4.add(r3)
        L7b:
            r4 = 1
            goto L7e
        L7d:
            r4 = 0
        L7e:
            if (r4 == 0) goto L82
            r2 = 1
            goto L7
        L82:
            boolean r4 = r3.m1535while()
            if (r4 != 0) goto L7
            java.util.List<com.apk.km0> r3 = r3.f2608new
            boolean r3 = r7.m3217final(r3, r9)
            r2 = r2 | r3
            goto L7
        L91:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.zm0.m3217final(java.util.List, com.apk.om0):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:302:0x007a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0352 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:308:0x031f A[SYNTHETIC] */
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.apk.kn0 m3218for(java.io.Reader r14, com.apk.om0 r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.zm0.m3218for(java.io.Reader, com.apk.om0):com.apk.kn0");
    }

    /* renamed from: goto  reason: not valid java name */
    public final en0 m3219goto(om0 om0Var) {
        return om0Var.f3472try.peek().f946do;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3220if(jn0 jn0Var, kn0 kn0Var, om0 om0Var) {
        lm0 lm0Var = lm0.HEAD;
        if (jn0Var != null) {
            boolean z = false;
            if (!(jn0Var.f2385this == lm0Var)) {
                lm0 lm0Var2 = jn0Var.f2385this;
                if (!((lm0Var2 == lm0Var || lm0Var2 == lm0.HEAD_AND_BODY) ? true : true) || !om0Var.f3464do || om0Var.f3469if) {
                    return;
                }
            }
            om0Var.f3467for.add(kn0Var);
        }
    }

    /* renamed from: new  reason: not valid java name */
    public kn0 m3221new(String str) {
        try {
            return m3218for(new StringReader(str), new om0());
        } catch (IOException e) {
            throw new an0(e);
        }
    }

    /* renamed from: super  reason: not valid java name */
    public final kn0 m3222super(String str) {
        return new kn0(str, false);
    }

    /* renamed from: this  reason: not valid java name */
    public jn0 m3223this(String str, om0 om0Var) {
        Stack<String> stack;
        jn0 mo373do = this.f6219do.f3694do.mo373do(str);
        if (mo373do == null || mo373do.f2376const == null || (stack = om0Var.f3463const) == null || stack.size() <= 0 || om0Var.f3463const.peek() != mo373do.f2376const) {
            if (m3210break(str, om0Var)) {
                return null;
            }
            return this.f6219do.f3694do.mo373do(str);
        }
        return mo373do;
    }

    /* renamed from: throw  reason: not valid java name */
    public final dn0 m3224throw(om0 om0Var) {
        return om0Var.f3472try.push(new dn0(new en0(this), new nm0()));
    }

    /* renamed from: try  reason: not valid java name */
    public final void m3225try(List list, om0 om0Var) {
        en0 m3219goto = m3219goto(om0Var);
        ln0 ln0Var = m3219goto.f1100if.isEmpty() ? null : m3219goto.f1100if.get(0);
        for (ln0 ln0Var2 : m3219goto(om0Var).f1100if) {
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            this.f6219do.mo2058new(true, (kn0) list.get(ln0Var2.f2844do), rn0.UnclosedTag);
        }
        if (ln0Var != null) {
            m3211case(list, ln0Var, null, om0Var);
        }
    }

    /* renamed from: while  reason: not valid java name */
    public final void m3226while(List list, Object obj, om0 om0Var) {
        kn0 kn0Var;
        ln0 ln0Var = m3219goto(om0Var).f1099for;
        en0 m3219goto = m3219goto(om0Var);
        ln0 ln0Var2 = null;
        if (!m3219goto.f1100if.isEmpty()) {
            List<ln0> list2 = m3219goto.f1100if;
            ListIterator<ln0> listIterator = list2.listIterator(list2.size());
            ln0 ln0Var3 = null;
            while (listIterator.hasPrevious()) {
                if (Thread.currentThread().isInterrupted()) {
                    if (m3219goto.f1098do == null) {
                        throw null;
                    }
                } else {
                    ln0 previous = listIterator.previous();
                    jn0 jn0Var = previous.f2845for;
                    if ((jn0Var == null || jn0Var.m1362do()) && ln0Var3 != null) {
                        break;
                    }
                    ln0Var3 = previous;
                }
            }
            ln0Var2 = ln0Var3;
        }
        if (ln0Var2 == null || (kn0Var = (kn0) list.get(ln0Var2.f2844do)) == null) {
            return;
        }
        if (kn0Var.f2610try == null) {
            kn0Var.f2610try = new ArrayList();
        }
        if (obj instanceof km0) {
            kn0Var.f2610try.add((km0) obj);
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("Attempt to add invalid item for moving; class=");
        m1016super.append(obj.getClass());
        throw new RuntimeException(m1016super.toString());
    }
}
