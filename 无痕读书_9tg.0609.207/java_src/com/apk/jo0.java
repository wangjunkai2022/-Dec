package com.apk;

import com.apk.ho0;
import com.apk.no0;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import org.jsoup.internal.NonnullByDefault;
/* compiled from: Element.java */
@NonnullByDefault
/* loaded from: classes7.dex */
public class jo0 extends no0 {

    /* renamed from: goto  reason: not valid java name */
    public static final List<jo0> f2394goto = Collections.emptyList();

    /* renamed from: this  reason: not valid java name */
    public static final String f2395this;

    /* renamed from: case  reason: not valid java name */
    public List<no0> f2396case;
    @Nullable

    /* renamed from: else  reason: not valid java name */
    public do0 f2397else;

    /* renamed from: new  reason: not valid java name */
    public xo0 f2398new;
    @Nullable

    /* renamed from: try  reason: not valid java name */
    public WeakReference<List<jo0>> f2399try;

    /* compiled from: Element.java */
    /* renamed from: com.apk.jo0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements kp0 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ StringBuilder f2400do;

        public Cdo(jo0 jo0Var, StringBuilder sb) {
            this.f2400do = sb;
        }

        @Override // com.apk.kp0
        /* renamed from: do */
        public void mo502do(no0 no0Var, int i) {
            if (no0Var instanceof po0) {
                jo0.m1372continue(this.f2400do, (po0) no0Var);
            } else if (no0Var instanceof jo0) {
                jo0 jo0Var = (jo0) no0Var;
                if (this.f2400do.length() > 0) {
                    xo0 xo0Var = jo0Var.f2398new;
                    if ((xo0Var.f5714for || xo0Var.f5716if.equals("br")) && !po0.m2068interface(this.f2400do)) {
                        this.f2400do.append(' ');
                    }
                }
            }
        }

        @Override // com.apk.kp0
        /* renamed from: if */
        public void mo503if(no0 no0Var, int i) {
            if ((no0Var instanceof jo0) && ((jo0) no0Var).f2398new.f5714for && (no0Var.m1904public() instanceof po0) && !po0.m2068interface(this.f2400do)) {
                this.f2400do.append(' ');
            }
        }
    }

    /* compiled from: Element.java */
    /* renamed from: com.apk.jo0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif extends zn0<no0> {

        /* renamed from: do  reason: not valid java name */
        public final jo0 f2401do;

        public Cif(jo0 jo0Var, int i) {
            super(i);
            this.f2401do = jo0Var;
        }

        @Override // com.apk.zn0
        /* renamed from: do  reason: not valid java name */
        public void mo1390do() {
            this.f2401do.f2399try = null;
        }
    }

    static {
        Pattern.compile("\\s+");
        f2395this = "/baseUri";
    }

    public jo0(xo0 xo0Var, @Nullable String str, @Nullable do0 do0Var) {
        sb0.m2418instanceof(xo0Var);
        this.f2396case = no0.f3280for;
        this.f2397else = do0Var;
        this.f2398new = xo0Var;
        if (str != null) {
            sb0.m2418instanceof(str);
            mo1375case().m499super(f2395this, str);
        }
    }

    public static boolean a(@Nullable no0 no0Var) {
        if (no0Var instanceof jo0) {
            jo0 jo0Var = (jo0) no0Var;
            int i = 0;
            while (!jo0Var.f2398new.f5713else) {
                jo0Var = (jo0) jo0Var.f3281do;
                i++;
                if (i < 6) {
                    if (jo0Var == null) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: continue  reason: not valid java name */
    public static void m1372continue(StringBuilder sb, po0 po0Var) {
        String m1740continue = po0Var.m1740continue();
        if (!a(po0Var.f3281do) && !(po0Var instanceof eo0)) {
            bo0.m249do(sb, m1740continue, po0.m2068interface(sb));
        } else {
            sb.append(m1740continue);
        }
    }

    /* renamed from: instanceof  reason: not valid java name */
    public static <E extends jo0> int m1373instanceof(jo0 jo0Var, List<E> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) == jo0Var) {
                return i;
            }
        }
        return 0;
    }

    /* renamed from: abstract  reason: not valid java name */
    public jo0 m1374abstract(no0 no0Var) {
        sb0.m2418instanceof(no0Var);
        sb0.m2418instanceof(this);
        no0 no0Var2 = no0Var.f3281do;
        if (no0Var2 != null) {
            no0Var2.mo1647package(no0Var);
        }
        no0Var.f3281do = this;
        mo1385super();
        this.f2396case.add(no0Var);
        no0Var.f3282if = this.f2396case.size() - 1;
        return this;
    }

    @Nullable
    public jo0 b() {
        List<jo0> m1384strictfp;
        int m1373instanceof;
        no0 no0Var = this.f3281do;
        if (no0Var != null && (m1373instanceof = m1373instanceof(this, (m1384strictfp = ((jo0) no0Var).m1384strictfp()))) > 0) {
            return m1384strictfp.get(m1373instanceof - 1);
        }
        return null;
    }

    public gp0 c(String str) {
        sb0.m2435transient(str);
        hp0 m1651goto = lp0.m1651goto(str);
        sb0.m2418instanceof(m1651goto);
        sb0.m2418instanceof(this);
        gp0 gp0Var = new gp0();
        jp0.m1391do(new dp0(this, gp0Var, m1651goto), this);
        return gp0Var;
    }

    @Override // com.apk.no0
    /* renamed from: case  reason: not valid java name */
    public do0 mo1375case() {
        if (this.f2397else == null) {
            this.f2397else = new do0();
        }
        return this.f2397else;
    }

    @Override // com.apk.no0
    /* renamed from: const  reason: not valid java name */
    public no0 mo1376const(@Nullable no0 no0Var) {
        jo0 jo0Var = (jo0) super.mo1376const(no0Var);
        do0 do0Var = this.f2397else;
        jo0Var.f2397else = do0Var != null ? do0Var.clone() : null;
        Cif cif = new Cif(jo0Var, this.f2396case.size());
        jo0Var.f2396case = cif;
        cif.addAll(this.f2396case);
        return jo0Var;
    }

    @Nullable
    public jo0 d(String str) {
        sb0.m2435transient(str);
        return new ep0(lp0.m1651goto(str)).m673do(this, this);
    }

    @Override // com.apk.no0
    @Nullable
    /* renamed from: default  reason: not valid java name */
    public no0 mo1377default() {
        return (jo0) this.f3281do;
    }

    public String e() {
        StringBuilder m253if = bo0.m253if();
        jp0.m1391do(new Cdo(this, m253if), this);
        return bo0.m246catch(m253if).trim();
    }

    @Override // com.apk.no0
    /* renamed from: else  reason: not valid java name */
    public String mo1378else() {
        String str = f2395this;
        for (jo0 jo0Var = this; jo0Var != null; jo0Var = (jo0) jo0Var.f3281do) {
            do0 do0Var = jo0Var.f2397else;
            if (do0Var != null) {
                if (do0Var.m490class(str) != -1) {
                    return jo0Var.f2397else.m493else(str);
                }
            }
        }
        return "";
    }

    @Override // com.apk.no0
    /* renamed from: final  reason: not valid java name */
    public no0 mo1379final() {
        this.f2396case.clear();
        return this;
    }

    /* renamed from: implements  reason: not valid java name */
    public String m1380implements() {
        StringBuilder m253if = bo0.m253if();
        int size = this.f2396case.size();
        for (int i = 0; i < size; i++) {
            no0 no0Var = this.f2396case.get(i);
            if (no0Var == null) {
                throw null;
            }
            jp0.m1391do(new no0.Cdo(m253if, sb0.b(no0Var)), no0Var);
        }
        String m246catch = bo0.m246catch(m253if);
        return sb0.b(this).f1918try ? m246catch.trim() : m246catch;
    }

    @Override // com.apk.no0
    /* renamed from: import  reason: not valid java name */
    public boolean mo1381import() {
        return this.f2397else != null;
    }

    @Override // com.apk.no0
    /* renamed from: interface */
    public jo0 clone() {
        return (jo0) super.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.apk.no0] */
    @Override // com.apk.no0
    /* renamed from: private  reason: not valid java name */
    public no0 mo1382private() {
        jo0 jo0Var = this;
        while (true) {
            ?? r1 = jo0Var.f3281do;
            if (r1 == 0) {
                return jo0Var;
            }
            jo0Var = r1;
        }
    }

    /* renamed from: protected  reason: not valid java name */
    public String m1383protected() {
        StringBuilder m253if = bo0.m253if();
        for (no0 no0Var : this.f2396case) {
            if (no0Var instanceof go0) {
                m253if.append(((go0) no0Var).m1740continue());
            } else if (no0Var instanceof fo0) {
                m253if.append(((fo0) no0Var).m1740continue());
            } else if (no0Var instanceof jo0) {
                m253if.append(((jo0) no0Var).m1383protected());
            } else if (no0Var instanceof eo0) {
                m253if.append(((eo0) no0Var).m1740continue());
            }
        }
        return bo0.m246catch(m253if);
    }

    @Override // com.apk.no0
    /* renamed from: return */
    public String mo669return() {
        return this.f2398new.f5712do;
    }

    /* renamed from: strictfp  reason: not valid java name */
    public List<jo0> m1384strictfp() {
        List<jo0> list;
        if (mo1387this() == 0) {
            return f2394goto;
        }
        WeakReference<List<jo0>> weakReference = this.f2399try;
        if (weakReference == null || (list = weakReference.get()) == null) {
            int size = this.f2396case.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                no0 no0Var = this.f2396case.get(i);
                if (no0Var instanceof jo0) {
                    arrayList.add((jo0) no0Var);
                }
            }
            this.f2399try = new WeakReference<>(arrayList);
            return arrayList;
        }
        return list;
    }

    @Override // com.apk.no0
    /* renamed from: super  reason: not valid java name */
    public List<no0> mo1385super() {
        if (this.f2396case == no0.f3280for) {
            this.f2396case = new Cif(this, 4);
        }
        return this.f2396case;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x005d  */
    @Override // com.apk.no0
    /* renamed from: switch */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo670switch(java.lang.Appendable r6, int r7, com.apk.ho0.Cdo r8) throws java.io.IOException {
        /*
            r5 = this;
            boolean r0 = r8.f1918try
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L71
            com.apk.xo0 r0 = r5.f2398new
            boolean r0 = r0.f5717new
            if (r0 != 0) goto L1f
            com.apk.no0 r0 = r5.f3281do
            com.apk.jo0 r0 = (com.apk.jo0) r0
            if (r0 == 0) goto L18
            com.apk.xo0 r0 = r0.f2398new
            boolean r0 = r0.f5717new
            if (r0 != 0) goto L1f
        L18:
            boolean r0 = r8.f1911case
            if (r0 == 0) goto L1d
            goto L1f
        L1d:
            r0 = 0
            goto L20
        L1f:
            r0 = 1
        L20:
            if (r0 == 0) goto L71
            com.apk.xo0 r0 = r5.f2398new
            boolean r3 = r0.f5714for
            r3 = r3 ^ r2
            if (r3 == 0) goto L5a
            boolean r0 = r0.f5719try
            if (r0 != 0) goto L5a
            com.apk.no0 r0 = r5.f3281do
            com.apk.jo0 r0 = (com.apk.jo0) r0
            if (r0 == 0) goto L39
            com.apk.xo0 r0 = r0.f2398new
            boolean r0 = r0.f5714for
            if (r0 == 0) goto L5a
        L39:
            com.apk.no0 r0 = r5.f3281do
            r3 = 0
            if (r0 != 0) goto L3f
            goto L52
        L3f:
            int r4 = r5.f3282if
            if (r4 <= 0) goto L52
            java.util.List r0 = r0.mo1385super()
            int r3 = r5.f3282if
            int r3 = r3 + (-1)
            java.lang.Object r0 = r0.get(r3)
            r3 = r0
            com.apk.no0 r3 = (com.apk.no0) r3
        L52:
            if (r3 == 0) goto L5a
            boolean r0 = r8.f1911case
            if (r0 != 0) goto L5a
            r0 = 1
            goto L5b
        L5a:
            r0 = 0
        L5b:
            if (r0 != 0) goto L71
            boolean r0 = r6 instanceof java.lang.StringBuilder
            if (r0 == 0) goto L6e
            r0 = r6
            java.lang.StringBuilder r0 = (java.lang.StringBuilder) r0
            int r0 = r0.length()
            if (r0 <= 0) goto L71
            r5.m1903native(r6, r7, r8)
            goto L71
        L6e:
            r5.m1903native(r6, r7, r8)
        L71:
            r7 = 60
            java.lang.Appendable r7 = r6.append(r7)
            com.apk.xo0 r0 = r5.f2398new
            java.lang.String r0 = r0.f5712do
            r7.append(r0)
            com.apk.do0 r7 = r5.f2397else
            if (r7 == 0) goto L85
            r7.m489catch(r6, r8)
        L85:
            java.util.List<com.apk.no0> r7 = r5.f2396case
            boolean r7 = r7.isEmpty()
            r0 = 62
            if (r7 == 0) goto Lb2
            com.apk.xo0 r7 = r5.f2398new
            boolean r3 = r7.f5719try
            if (r3 != 0) goto L99
            boolean r7 = r7.f5711case
            if (r7 == 0) goto L9a
        L99:
            r1 = 1
        L9a:
            if (r1 == 0) goto Lb2
            com.apk.ho0$do$do r7 = r8.f1915goto
            com.apk.ho0$do$do r8 = com.apk.ho0.Cdo.EnumC0066do.html
            if (r7 != r8) goto Lac
            com.apk.xo0 r7 = r5.f2398new
            boolean r7 = r7.f5719try
            if (r7 == 0) goto Lac
            r6.append(r0)
            goto Lb5
        Lac:
            java.lang.String r7 = " />"
            r6.append(r7)
            goto Lb5
        Lb2:
            r6.append(r0)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.jo0.mo670switch(java.lang.Appendable, int, com.apk.ho0$do):void");
    }

    /* renamed from: synchronized  reason: not valid java name */
    public String m1386synchronized() {
        StringBuilder m253if = bo0.m253if();
        for (int i = 0; i < mo1387this(); i++) {
            no0 no0Var = this.f2396case.get(i);
            if (no0Var instanceof po0) {
                m1372continue(m253if, (po0) no0Var);
            } else if ((no0Var instanceof jo0) && ((jo0) no0Var).f2398new.f5716if.equals("br") && !po0.m2068interface(m253if)) {
                m253if.append(" ");
            }
        }
        return bo0.m246catch(m253if).trim();
    }

    @Override // com.apk.no0
    /* renamed from: this  reason: not valid java name */
    public int mo1387this() {
        return this.f2396case.size();
    }

    @Override // com.apk.no0
    /* renamed from: throws */
    public void mo671throws(Appendable appendable, int i, ho0.Cdo cdo) throws IOException {
        if (this.f2396case.isEmpty()) {
            xo0 xo0Var = this.f2398new;
            if (xo0Var.f5719try || xo0Var.f5711case) {
                return;
            }
        }
        if (cdo.f1918try && !this.f2396case.isEmpty() && (this.f2398new.f5717new || (cdo.f1911case && (this.f2396case.size() > 1 || (this.f2396case.size() == 1 && !(this.f2396case.get(0) instanceof po0)))))) {
            m1903native(appendable, i, cdo);
        }
        appendable.append("</").append(this.f2398new.f5712do).append('>');
    }

    /* renamed from: transient  reason: not valid java name */
    public int m1388transient() {
        no0 no0Var = this.f3281do;
        if (((jo0) no0Var) == null) {
            return 0;
        }
        return m1373instanceof(this, ((jo0) no0Var).m1384strictfp());
    }

    /* renamed from: volatile  reason: not valid java name */
    public gp0 m1389volatile() {
        return new gp0(m1384strictfp());
    }
}
