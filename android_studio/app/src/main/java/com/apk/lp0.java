package com.apk;

import com.apk.fp0;
import com.apk.hp0;
import com.apk.np0;
import com.google.android.material.badge.BadgeDrawable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: QueryParser.java */
/* loaded from: classes7.dex */
public class lp0 {

    /* renamed from: do  reason: not valid java name */
    public final zo0 f2875do;

    /* renamed from: for  reason: not valid java name */
    public final List<hp0> f2876for = new ArrayList();

    /* renamed from: if  reason: not valid java name */
    public final String f2877if;

    /* renamed from: new  reason: not valid java name */
    public static final String[] f2873new = {",", ">", BadgeDrawable.DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX, "~", " "};

    /* renamed from: try  reason: not valid java name */
    public static final String[] f2874try = {"=", "!=", "^=", "$=", "*=", "~="};

    /* renamed from: case  reason: not valid java name */
    public static final Pattern f2871case = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    /* renamed from: else  reason: not valid java name */
    public static final Pattern f2872else = Pattern.compile("([+-])?(\\d+)");

    public lp0(String str) {
        sb0.m2435transient(str);
        String trim = str.trim();
        this.f2877if = trim;
        this.f2875do = new zo0(trim);
    }

    /* renamed from: goto  reason: not valid java name */
    public static hp0 m1651goto(String str) {
        try {
            return new lp0(str).m1654else();
        } catch (IllegalArgumentException e) {
            throw new mp0(e.getMessage(), new Object[0]);
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final void m1652case(boolean z) {
        this.f2875do.m3237new(z ? ":matchesOwn" : ":matches");
        String m3232do = this.f2875do.m3232do('(', ')');
        sb0.m2416implements(m3232do, ":matches(regex) query must not be empty");
        if (z) {
            this.f2876for.add(new hp0.Cprotected(Pattern.compile(m3232do)));
        } else {
            this.f2876for.add(new hp0.Cinterface(Pattern.compile(m3232do)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0154  */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1653do(char r10) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.lp0.m1653do(char):void");
    }

    /* renamed from: else  reason: not valid java name */
    public hp0 m1654else() {
        this.f2875do.m3229case();
        if (this.f2875do.m3228break(f2873new)) {
            this.f2876for.add(new np0.Celse());
            m1653do(this.f2875do.m3234for());
        } else {
            m1658try();
        }
        while (!this.f2875do.m3233else()) {
            boolean m3229case = this.f2875do.m3229case();
            if (this.f2875do.m3228break(f2873new)) {
                m1653do(this.f2875do.m3234for());
            } else if (m3229case) {
                m1653do(' ');
            } else {
                m1658try();
            }
        }
        if (this.f2876for.size() == 1) {
            return this.f2876for.get(0);
        }
        return new fp0.Cdo(this.f2876for);
    }

    /* renamed from: for  reason: not valid java name */
    public final void m1655for(boolean z) {
        this.f2875do.m3237new(z ? ":containsOwn" : ":contains");
        String m3227const = zo0.m3227const(this.f2875do.m3232do('(', ')'));
        sb0.m2416implements(m3227const, ":contains(text) query must not be empty");
        if (z) {
            this.f2876for.add(new hp0.Cconst(m3227const));
        } else {
            this.f2876for.add(new hp0.Cfinal(m3227const));
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final int m1656if() {
        String trim = this.f2875do.m3236if(")").trim();
        sb0.m2423private(bo0.m245case(trim), "Index must be numeric");
        return Integer.parseInt(trim);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0090  */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1657new(boolean r9, boolean r10) {
        /*
            r8 = this;
            com.apk.zo0 r0 = r8.f2875do
            java.lang.String r1 = ")"
            java.lang.String r0 = r0.m3236if(r1)
            java.lang.String r0 = com.apk.sb0.m2424protected(r0)
            java.util.regex.Pattern r1 = com.apk.lp0.f2871case
            java.util.regex.Matcher r1 = r1.matcher(r0)
            java.util.regex.Pattern r2 = com.apk.lp0.f2872else
            java.util.regex.Matcher r2 = r2.matcher(r0)
            java.lang.String r3 = "odd"
            boolean r3 = r3.equals(r0)
            r4 = 0
            r5 = 1
            r6 = 2
            if (r3 == 0) goto L26
            r0 = 1
        L24:
            r4 = 2
            goto L76
        L26:
            java.lang.String r3 = "even"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L30
            r0 = 0
            goto L24
        L30:
            boolean r3 = r1.matches()
            java.lang.String r6 = ""
            java.lang.String r7 = "^\\+"
            if (r3 == 0) goto L64
            r0 = 3
            java.lang.String r0 = r1.group(r0)
            if (r0 == 0) goto L4d
            java.lang.String r0 = r1.group(r5)
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r5 = java.lang.Integer.parseInt(r0)
        L4d:
            r0 = 4
            java.lang.String r2 = r1.group(r0)
            if (r2 == 0) goto L61
            java.lang.String r0 = r1.group(r0)
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r0 = java.lang.Integer.parseInt(r0)
            r4 = r0
        L61:
            r0 = r4
            r4 = r5
            goto L76
        L64:
            boolean r1 = r2.matches()
            if (r1 == 0) goto La8
            java.lang.String r0 = r2.group()
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r0 = java.lang.Integer.parseInt(r0)
        L76:
            if (r10 == 0) goto L90
            if (r9 == 0) goto L85
            java.util.List<com.apk.hp0> r9 = r8.f2876for
            com.apk.hp0$package r10 = new com.apk.hp0$package
            r10.<init>(r4, r0)
            r9.add(r10)
            goto La7
        L85:
            java.util.List<com.apk.hp0> r9 = r8.f2876for
            com.apk.hp0$private r10 = new com.apk.hp0$private
            r10.<init>(r4, r0)
            r9.add(r10)
            goto La7
        L90:
            if (r9 == 0) goto L9d
            java.util.List<com.apk.hp0> r9 = r8.f2876for
            com.apk.hp0$finally r10 = new com.apk.hp0$finally
            r10.<init>(r4, r0)
            r9.add(r10)
            goto La7
        L9d:
            java.util.List<com.apk.hp0> r9 = r8.f2876for
            com.apk.hp0$extends r10 = new com.apk.hp0$extends
            r10.<init>(r4, r0)
            r9.add(r10)
        La7:
            return
        La8:
            com.apk.mp0 r9 = new com.apk.mp0
            java.lang.Object[] r10 = new java.lang.Object[r5]
            r10[r4] = r0
            java.lang.String r0 = "Could not parse nth-index '%s': unexpected format"
            r9.<init>(r0, r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.lp0.m1657new(boolean, boolean):void");
    }

    public String toString() {
        return this.f2877if;
    }

    /* renamed from: try  reason: not valid java name */
    public final void m1658try() {
        if (this.f2875do.m3235goto("#")) {
            String m3239try = this.f2875do.m3239try();
            sb0.m2435transient(m3239try);
            this.f2876for.add(new hp0.Cthrow(m3239try));
        } else if (this.f2875do.m3235goto(".")) {
            String m3239try2 = this.f2875do.m3239try();
            sb0.m2435transient(m3239try2);
            this.f2876for.add(new hp0.Ccatch(m3239try2.trim()));
        } else if (!this.f2875do.m3230catch() && !this.f2875do.m3238this("*|")) {
            if (this.f2875do.m3238this("[")) {
                zo0 zo0Var = new zo0(this.f2875do.m3232do('[', ']'));
                String[] strArr = f2874try;
                int i = zo0Var.f6224if;
                while (!zo0Var.m3233else() && !zo0Var.m3228break(strArr)) {
                    zo0Var.f6224if++;
                }
                String substring = zo0Var.f6223do.substring(i, zo0Var.f6224if);
                sb0.m2435transient(substring);
                zo0Var.m3229case();
                if (zo0Var.m3233else()) {
                    if (substring.startsWith("^")) {
                        this.f2876for.add(new hp0.Cnew(substring.substring(1)));
                    } else {
                        this.f2876for.add(new hp0.Cif(substring));
                    }
                } else if (zo0Var.m3235goto("=")) {
                    this.f2876for.add(new hp0.Ctry(substring, zo0Var.m3231class()));
                } else if (zo0Var.m3235goto("!=")) {
                    this.f2876for.add(new hp0.Cthis(substring, zo0Var.m3231class()));
                } else if (zo0Var.m3235goto("^=")) {
                    this.f2876for.add(new hp0.Cbreak(substring, zo0Var.m3231class()));
                } else if (zo0Var.m3235goto("$=")) {
                    this.f2876for.add(new hp0.Celse(substring, zo0Var.m3231class()));
                } else if (zo0Var.m3235goto("*=")) {
                    this.f2876for.add(new hp0.Ccase(substring, zo0Var.m3231class()));
                } else if (zo0Var.m3235goto("~=")) {
                    this.f2876for.add(new hp0.Cgoto(substring, Pattern.compile(zo0Var.m3231class())));
                } else {
                    throw new mp0("Could not parse attribute query '%s': unexpected token at '%s'", this.f2877if, zo0Var.m3231class());
                }
            } else if (this.f2875do.m3235goto("*")) {
                this.f2876for.add(new hp0.Cdo());
            } else if (this.f2875do.m3235goto(":lt(")) {
                this.f2876for.add(new hp0.Cpublic(m1656if()));
            } else if (this.f2875do.m3235goto(":gt(")) {
                this.f2876for.add(new hp0.Cnative(m1656if()));
            } else if (this.f2875do.m3235goto(":eq(")) {
                this.f2876for.add(new hp0.Cwhile(m1656if()));
            } else if (this.f2875do.m3238this(":has(")) {
                this.f2875do.m3237new(":has");
                String m3232do = this.f2875do.m3232do('(', ')');
                sb0.m2416implements(m3232do, ":has(selector) subselect must not be empty");
                this.f2876for.add(new np0.Cdo(m1651goto(m3232do)));
            } else if (this.f2875do.m3238this(":contains(")) {
                m1655for(false);
            } else if (this.f2875do.m3238this(":containsOwn(")) {
                m1655for(true);
            } else if (this.f2875do.m3238this(":containsData(")) {
                this.f2875do.m3237new(":containsData");
                String m3227const = zo0.m3227const(this.f2875do.m3232do('(', ')'));
                sb0.m2416implements(m3227const, ":containsData(text) query must not be empty");
                this.f2876for.add(new hp0.Cclass(m3227const));
            } else if (this.f2875do.m3238this(":matches(")) {
                m1652case(false);
            } else if (this.f2875do.m3238this(":matchesOwn(")) {
                m1652case(true);
            } else if (this.f2875do.m3238this(":not(")) {
                this.f2875do.m3237new(":not");
                String m3232do2 = this.f2875do.m3232do('(', ')');
                sb0.m2416implements(m3232do2, ":not(selector) subselect must not be empty");
                this.f2876for.add(new np0.Cnew(m1651goto(m3232do2)));
            } else if (this.f2875do.m3235goto(":nth-child(")) {
                m1657new(false, false);
            } else if (this.f2875do.m3235goto(":nth-last-child(")) {
                m1657new(true, false);
            } else if (this.f2875do.m3235goto(":nth-of-type(")) {
                m1657new(false, true);
            } else if (this.f2875do.m3235goto(":nth-last-of-type(")) {
                m1657new(true, true);
            } else if (this.f2875do.m3235goto(":first-child")) {
                this.f2876for.add(new hp0.Cstatic());
            } else if (this.f2875do.m3235goto(":last-child")) {
                this.f2876for.add(new hp0.Cthrows());
            } else if (this.f2875do.m3235goto(":first-of-type")) {
                this.f2876for.add(new hp0.Cswitch());
            } else if (this.f2875do.m3235goto(":last-of-type")) {
                this.f2876for.add(new hp0.Cdefault());
            } else if (this.f2875do.m3235goto(":only-child")) {
                this.f2876for.add(new hp0.Cabstract());
            } else if (this.f2875do.m3235goto(":only-of-type")) {
                this.f2876for.add(new hp0.Ccontinue());
            } else if (this.f2875do.m3235goto(":empty")) {
                this.f2876for.add(new hp0.Creturn());
            } else if (this.f2875do.m3235goto(":root")) {
                this.f2876for.add(new hp0.Cstrictfp());
            } else if (this.f2875do.m3235goto(":matchText")) {
                this.f2876for.add(new hp0.Cvolatile());
            } else {
                throw new mp0("Could not parse query '%s': unexpected token at '%s'", this.f2877if, this.f2875do.m3231class());
            }
        } else {
            zo0 zo0Var2 = this.f2875do;
            int i2 = zo0Var2.f6224if;
            while (!zo0Var2.m3233else() && (zo0Var2.m3230catch() || zo0Var2.m3228break("*|", "|", "_", "-"))) {
                zo0Var2.f6224if++;
            }
            String m2424protected = sb0.m2424protected(zo0Var2.f6223do.substring(i2, zo0Var2.f6224if));
            sb0.m2435transient(m2424protected);
            if (m2424protected.startsWith("*|")) {
                this.f2876for.add(new fp0.Cif(new hp0.Ctransient(m2424protected.substring(2)), new hp0.Cimplements(m2424protected.replace("*|", ":"))));
                return;
            }
            if (m2424protected.contains("|")) {
                m2424protected = m2424protected.replace("|", ":");
            }
            this.f2876for.add(new hp0.Ctransient(m2424protected));
        }
    }
}
