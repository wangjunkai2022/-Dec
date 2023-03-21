package com.apk;

import com.apk.yo0;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: TokeniserState.java */
/* loaded from: classes7.dex */
public abstract class bp0 {
    public static final bp0 B;
    public static final char[] C;
    public static final char[] D;
    public static final String E;
    public static final /* synthetic */ bp0[] F;

    /* renamed from: do  reason: not valid java name */
    public static final bp0 f412do = new Ccatch("Data", 0);

    /* renamed from: if  reason: not valid java name */
    public static final bp0 f419if = new bp0("CharacterReferenceInData", 1) { // from class: com.apk.bp0.static
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m260do(ap0Var, bp0.f412do);
        }
    };

    /* renamed from: for  reason: not valid java name */
    public static final bp0 f417for = new bp0("Rcdata", 2) { // from class: com.apk.bp0.volatile
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2154const = qo0Var.m2154const();
            if (m2154const == 0) {
                ap0Var.m80catch(this);
                qo0Var.m2156do();
                ap0Var.m89try((char) 65533);
            } else if (m2154const == '&') {
                bp0 bp0Var = bp0.f425new;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else if (m2154const == '<') {
                bp0 bp0Var2 = bp0.f407catch;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var2;
            } else if (m2154const != 65535) {
                ap0Var.m79case(qo0Var.m2157else());
            } else {
                ap0Var.m85goto(new yo0.Ccase());
            }
        }
    };

    /* renamed from: new  reason: not valid java name */
    public static final bp0 f425new = new bp0("CharacterReferenceInRcdata", 3) { // from class: com.apk.bp0.e
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m260do(ap0Var, bp0.f417for);
        }
    };

    /* renamed from: try  reason: not valid java name */
    public static final bp0 f440try = new bp0("Rawtext", 4) { // from class: com.apk.bp0.p
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m262if(ap0Var, qo0Var, this, bp0.f415final);
        }
    };

    /* renamed from: case  reason: not valid java name */
    public static final bp0 f406case = new bp0("ScriptData", 5) { // from class: com.apk.bp0.y
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m262if(ap0Var, qo0Var, this, bp0.f442while);
        }
    };

    /* renamed from: else  reason: not valid java name */
    public static final bp0 f413else = new bp0("PLAINTEXT", 6) { // from class: com.apk.bp0.z
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2154const = qo0Var.m2154const();
            if (m2154const == 0) {
                ap0Var.m80catch(this);
                qo0Var.m2156do();
                ap0Var.m89try((char) 65533);
            } else if (m2154const != 65535) {
                ap0Var.m79case(qo0Var.m2173this((char) 0));
            } else {
                ap0Var.m85goto(new yo0.Ccase());
            }
        }
    };

    /* renamed from: goto  reason: not valid java name */
    public static final bp0 f418goto = new bp0("TagOpen", 7) { // from class: com.apk.bp0.a0
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2154const = qo0Var.m2154const();
            if (m2154const == '!') {
                bp0 bp0Var = bp0.e;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else if (m2154const == '/') {
                bp0 bp0Var2 = bp0.f436this;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var2;
            } else if (m2154const != '?') {
                if (qo0Var.m2172switch()) {
                    ap0Var.m87new(true);
                    ap0Var.f139for = bp0.f405break;
                    return;
                }
                ap0Var.m80catch(this);
                ap0Var.m89try('<');
                ap0Var.f139for = bp0.f412do;
            } else {
                ap0Var.m84for();
                ap0Var.f139for = bp0.d;
            }
        }
    };

    /* renamed from: this  reason: not valid java name */
    public static final bp0 f436this = new bp0("EndTagOpen", 8) { // from class: com.apk.bp0.b0
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2171super()) {
                ap0Var.m78break(this);
                ap0Var.m79case("</");
                ap0Var.f139for = bp0.f412do;
            } else if (qo0Var.m2172switch()) {
                ap0Var.m87new(false);
                ap0Var.f139for = bp0.f405break;
            } else if (qo0Var.m2169return('>')) {
                ap0Var.m80catch(this);
                bp0 bp0Var = bp0.f412do;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else {
                ap0Var.m80catch(this);
                ap0Var.m84for();
                ap0Var.f138final.m3096this('/');
                ap0Var.f139for = bp0.d;
            }
        }
    };

    /* renamed from: break  reason: not valid java name */
    public static final bp0 f405break = new bp0("TagName", 9) { // from class: com.apk.bp0.do
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char c2;
            qo0Var.m2162if();
            int i2 = qo0Var.f3911try;
            int i3 = qo0Var.f3906for;
            char[] cArr = qo0Var.f3904do;
            int i4 = i2;
            while (i4 < i3 && (c2 = cArr[i4]) != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ' && c2 != '/' && c2 != '<' && c2 != '>') {
                i4++;
            }
            qo0Var.f3911try = i4;
            ap0Var.f145this.m3101final(i4 > i2 ? qo0.m2149for(qo0Var.f3904do, qo0Var.f3907goto, i2, i4 - i2) : "");
            char m2176try = qo0Var.m2176try();
            if (m2176try != 0) {
                if (m2176try != ' ') {
                    if (m2176try != '/') {
                        if (m2176try == '<') {
                            qo0Var.m2167private();
                            ap0Var.m80catch(this);
                        } else if (m2176try != '>') {
                            if (m2176try == 65535) {
                                ap0Var.m78break(this);
                                ap0Var.f139for = bp0.f412do;
                                return;
                            } else if (m2176try != '\t' && m2176try != '\n' && m2176try != '\f' && m2176try != '\r') {
                                ap0Var.f145this.m3100const(m2176try);
                                return;
                            }
                        }
                        ap0Var.m88this();
                        ap0Var.f139for = bp0.f412do;
                        return;
                    }
                    ap0Var.f139for = bp0.c;
                    return;
                }
                ap0Var.f139for = bp0.f423interface;
                return;
            }
            ap0Var.f145this.m3101final(bp0.E);
        }
    };

    /* renamed from: catch  reason: not valid java name */
    public static final bp0 f407catch = new bp0("RcdataLessthanSign", 10) { // from class: com.apk.bp0.if
        /* JADX WARN: Code restructure failed: missing block: B:18:0x004c, code lost:
            if (r1 >= r8.f3911try) goto L18;
         */
        /* JADX WARN: Removed duplicated region for block: B:31:0x007b  */
        @Override // com.apk.bp0
        /* renamed from: case */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo265case(com.apk.ap0 r7, com.apk.qo0 r8) {
            /*
                r6 = this;
                r0 = 47
                boolean r0 = r8.m2169return(r0)
                if (r0 == 0) goto L18
                java.lang.StringBuilder r8 = r7.f140goto
                com.apk.yo0.m3086goto(r8)
                com.apk.bp0 r8 = com.apk.bp0.f408class
                com.apk.qo0 r0 = r7.f136do
                r0.m2156do()
                r7.f139for = r8
                goto L97
            L18:
                boolean r0 = r8.m2172switch()
                if (r0 == 0) goto L8e
                java.lang.String r0 = r7.f144super
                if (r0 == 0) goto L8e
                java.lang.String r0 = r7.f146throw
                if (r0 != 0) goto L37
                java.lang.String r0 = "</"
                java.lang.StringBuilder r0 = com.apk.Cgoto.m1016super(r0)
                java.lang.String r1 = r7.f144super
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r7.f146throw = r0
            L37:
                java.lang.String r0 = r7.f146throw
                java.lang.String r1 = r8.f3902class
                boolean r1 = r0.equals(r1)
                r2 = -1
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L4f
                int r1 = r8.f3903const
                if (r1 != r2) goto L4a
                r3 = 0
                goto L79
            L4a:
                int r5 = r8.f3911try
                if (r1 < r5) goto L4f
                goto L79
            L4f:
                r8.f3902class = r0
                java.util.Locale r1 = java.util.Locale.ENGLISH
                java.lang.String r1 = r0.toLowerCase(r1)
                int r1 = r8.m2155default(r1)
                if (r1 <= r2) goto L63
                int r0 = r8.f3911try
                int r0 = r0 + r1
                r8.f3903const = r0
                goto L79
            L63:
                java.util.Locale r1 = java.util.Locale.ENGLISH
                java.lang.String r0 = r0.toUpperCase(r1)
                int r0 = r8.m2155default(r0)
                if (r0 <= r2) goto L70
                goto L71
            L70:
                r3 = 0
            L71:
                if (r3 == 0) goto L77
                int r1 = r8.f3911try
                int r2 = r1 + r0
            L77:
                r8.f3903const = r2
            L79:
                if (r3 != 0) goto L8e
                com.apk.yo0$this r8 = r7.m87new(r4)
                java.lang.String r0 = r7.f144super
                r8.m3103native(r0)
                r7.f145this = r8
                r7.m88this()
                com.apk.bp0 r8 = com.apk.bp0.f418goto
                r7.f139for = r8
                goto L97
            L8e:
                java.lang.String r8 = "<"
                r7.m79case(r8)
                com.apk.bp0 r8 = com.apk.bp0.f417for
                r7.f139for = r8
            L97:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.bp0.Cif.mo265case(com.apk.ap0, com.apk.qo0):void");
        }
    };

    /* renamed from: class  reason: not valid java name */
    public static final bp0 f408class = new bp0("RCDATAEndTagOpen", 11) { // from class: com.apk.bp0.for
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2172switch()) {
                ap0Var.m87new(false);
                ap0Var.f145this.m3100const(qo0Var.m2154const());
                ap0Var.f140goto.append(qo0Var.m2154const());
                bp0 bp0Var = bp0.f409const;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
                return;
            }
            ap0Var.m79case("</");
            ap0Var.f139for = bp0.f417for;
        }
    };

    /* renamed from: const  reason: not valid java name */
    public static final bp0 f409const = new bp0("RCDATAEndTagName", 12) { // from class: com.apk.bp0.new
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2172switch()) {
                String m2161goto = qo0Var.m2161goto();
                ap0Var.f145this.m3101final(m2161goto);
                ap0Var.f140goto.append(m2161goto);
                return;
            }
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                if (ap0Var.m81class()) {
                    ap0Var.f139for = bp0.f423interface;
                } else {
                    m266else(ap0Var, qo0Var);
                }
            } else if (m2176try == '/') {
                if (ap0Var.m81class()) {
                    ap0Var.f139for = bp0.c;
                } else {
                    m266else(ap0Var, qo0Var);
                }
            } else if (m2176try != '>') {
                m266else(ap0Var, qo0Var);
            } else if (ap0Var.m81class()) {
                ap0Var.m88this();
                ap0Var.f139for = bp0.f412do;
            } else {
                m266else(ap0Var, qo0Var);
            }
        }

        /* renamed from: else  reason: not valid java name */
        public final void m266else(ap0 ap0Var, qo0 qo0Var) {
            ap0Var.m79case("</");
            ap0Var.m83else(ap0Var.f140goto);
            qo0Var.m2167private();
            ap0Var.f139for = bp0.f417for;
        }
    };

    /* renamed from: final  reason: not valid java name */
    public static final bp0 f415final = new bp0("RawtextLessthanSign", 13) { // from class: com.apk.bp0.try
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2169return('/')) {
                yo0.m3086goto(ap0Var.f140goto);
                bp0 bp0Var = bp0.f433super;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
                return;
            }
            ap0Var.m89try('<');
            ap0Var.f139for = bp0.f440try;
        }
    };

    /* renamed from: super  reason: not valid java name */
    public static final bp0 f433super = new bp0("RawtextEndTagOpen", 14) { // from class: com.apk.bp0.case
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m261for(ap0Var, qo0Var, bp0.f437throw, bp0.f440try);
        }
    };

    /* renamed from: throw  reason: not valid java name */
    public static final bp0 f437throw = new bp0("RawtextEndTagName", 15) { // from class: com.apk.bp0.else
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m263new(ap0Var, qo0Var, bp0.f440try);
        }
    };

    /* renamed from: while  reason: not valid java name */
    public static final bp0 f442while = new bp0("ScriptDataLessthanSign", 16) { // from class: com.apk.bp0.goto
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '!') {
                ap0Var.m79case("<!");
                ap0Var.f139for = bp0.f429public;
            } else if (m2176try == '/') {
                yo0.m3086goto(ap0Var.f140goto);
                ap0Var.f139for = bp0.f421import;
            } else if (m2176try != 65535) {
                ap0Var.m79case("<");
                qo0Var.m2167private();
                ap0Var.f139for = bp0.f406case;
            } else {
                ap0Var.m79case("<");
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };

    /* renamed from: import  reason: not valid java name */
    public static final bp0 f421import = new bp0("ScriptDataEndTagOpen", 17) { // from class: com.apk.bp0.this
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m261for(ap0Var, qo0Var, bp0.f424native, bp0.f406case);
        }
    };

    /* renamed from: native  reason: not valid java name */
    public static final bp0 f424native = new bp0("ScriptDataEndTagName", 18) { // from class: com.apk.bp0.break
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m263new(ap0Var, qo0Var, bp0.f406case);
        }
    };

    /* renamed from: public  reason: not valid java name */
    public static final bp0 f429public = new bp0("ScriptDataEscapeStart", 19) { // from class: com.apk.bp0.class
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2169return('-')) {
                ap0Var.m89try('-');
                bp0 bp0Var = bp0.f430return;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
                return;
            }
            ap0Var.f139for = bp0.f406case;
        }
    };

    /* renamed from: return  reason: not valid java name */
    public static final bp0 f430return = new bp0("ScriptDataEscapeStartDash", 20) { // from class: com.apk.bp0.const
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2169return('-')) {
                ap0Var.m89try('-');
                bp0 bp0Var = bp0.f438throws;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
                return;
            }
            ap0Var.f139for = bp0.f406case;
        }
    };

    /* renamed from: static  reason: not valid java name */
    public static final bp0 f431static = new bp0("ScriptDataEscaped", 21) { // from class: com.apk.bp0.final
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2171super()) {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
                return;
            }
            char m2154const = qo0Var.m2154const();
            if (m2154const == 0) {
                ap0Var.m80catch(this);
                qo0Var.m2156do();
                ap0Var.m89try((char) 65533);
            } else if (m2154const == '-') {
                ap0Var.m89try('-');
                bp0 bp0Var = bp0.f434switch;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else if (m2154const != '<') {
                ap0Var.m79case(qo0Var.m2150break('-', '<', 0));
            } else {
                bp0 bp0Var2 = bp0.f411default;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var2;
            }
        }
    };

    /* renamed from: switch  reason: not valid java name */
    public static final bp0 f434switch = new bp0("ScriptDataEscapedDash", 22) { // from class: com.apk.bp0.super
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2171super()) {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
                return;
            }
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.m89try((char) 65533);
                ap0Var.f139for = bp0.f431static;
            } else if (m2176try == '-') {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f438throws;
            } else if (m2176try != '<') {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f431static;
            } else {
                ap0Var.f139for = bp0.f411default;
            }
        }
    };

    /* renamed from: throws  reason: not valid java name */
    public static final bp0 f438throws = new bp0("ScriptDataEscapedDashDash", 23) { // from class: com.apk.bp0.throw
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2171super()) {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
                return;
            }
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.m89try((char) 65533);
                ap0Var.f139for = bp0.f431static;
            } else if (m2176try == '-') {
                ap0Var.m89try(m2176try);
            } else if (m2176try == '<') {
                ap0Var.f139for = bp0.f411default;
            } else if (m2176try != '>') {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f431static;
            } else {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f406case;
            }
        }
    };

    /* renamed from: default  reason: not valid java name */
    public static final bp0 f411default = new bp0("ScriptDataEscapedLessthanSign", 24) { // from class: com.apk.bp0.while
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2172switch()) {
                yo0.m3086goto(ap0Var.f140goto);
                ap0Var.f140goto.append(qo0Var.m2154const());
                ap0Var.m79case("<");
                ap0Var.m89try(qo0Var.m2154const());
                bp0 bp0Var = bp0.f426package;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else if (qo0Var.m2169return('/')) {
                yo0.m3086goto(ap0Var.f140goto);
                bp0 bp0Var2 = bp0.f414extends;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var2;
            } else {
                ap0Var.m89try('<');
                ap0Var.f139for = bp0.f431static;
            }
        }
    };

    /* renamed from: extends  reason: not valid java name */
    public static final bp0 f414extends = new bp0("ScriptDataEscapedEndTagOpen", 25) { // from class: com.apk.bp0.import
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2172switch()) {
                ap0Var.m87new(false);
                ap0Var.f145this.m3100const(qo0Var.m2154const());
                ap0Var.f140goto.append(qo0Var.m2154const());
                bp0 bp0Var = bp0.f416finally;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
                return;
            }
            ap0Var.m79case("</");
            ap0Var.f139for = bp0.f431static;
        }
    };

    /* renamed from: finally  reason: not valid java name */
    public static final bp0 f416finally = new bp0("ScriptDataEscapedEndTagName", 26) { // from class: com.apk.bp0.native
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m263new(ap0Var, qo0Var, bp0.f431static);
        }
    };

    /* renamed from: package  reason: not valid java name */
    public static final bp0 f426package = new bp0("ScriptDataDoubleEscapeStart", 27) { // from class: com.apk.bp0.public
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m264try(ap0Var, qo0Var, bp0.f427private, bp0.f431static);
        }
    };

    /* renamed from: private  reason: not valid java name */
    public static final bp0 f427private = new bp0("ScriptDataDoubleEscaped", 28) { // from class: com.apk.bp0.return
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2154const = qo0Var.m2154const();
            if (m2154const == 0) {
                ap0Var.m80catch(this);
                qo0Var.m2156do();
                ap0Var.m89try((char) 65533);
            } else if (m2154const == '-') {
                ap0Var.m89try(m2154const);
                bp0 bp0Var = bp0.f404abstract;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else if (m2154const == '<') {
                ap0Var.m89try(m2154const);
                bp0 bp0Var2 = bp0.f432strictfp;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var2;
            } else if (m2154const != 65535) {
                ap0Var.m79case(qo0Var.m2150break('-', '<', 0));
            } else {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };

    /* renamed from: abstract  reason: not valid java name */
    public static final bp0 f404abstract = new bp0("ScriptDataDoubleEscapedDash", 29) { // from class: com.apk.bp0.switch
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.m89try((char) 65533);
                ap0Var.f139for = bp0.f427private;
            } else if (m2176try == '-') {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f410continue;
            } else if (m2176try == '<') {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f432strictfp;
            } else if (m2176try != 65535) {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f427private;
            } else {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };

    /* renamed from: continue  reason: not valid java name */
    public static final bp0 f410continue = new bp0("ScriptDataDoubleEscapedDashDash", 30) { // from class: com.apk.bp0.throws
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.m89try((char) 65533);
                ap0Var.f139for = bp0.f427private;
            } else if (m2176try == '-') {
                ap0Var.m89try(m2176try);
            } else if (m2176try == '<') {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f432strictfp;
            } else if (m2176try == '>') {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f406case;
            } else if (m2176try != 65535) {
                ap0Var.m89try(m2176try);
                ap0Var.f139for = bp0.f427private;
            } else {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };

    /* renamed from: strictfp  reason: not valid java name */
    public static final bp0 f432strictfp = new bp0("ScriptDataDoubleEscapedLessthanSign", 31) { // from class: com.apk.bp0.default
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2169return('/')) {
                ap0Var.m89try('/');
                yo0.m3086goto(ap0Var.f140goto);
                bp0 bp0Var = bp0.f441volatile;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
                return;
            }
            ap0Var.f139for = bp0.f427private;
        }
    };

    /* renamed from: volatile  reason: not valid java name */
    public static final bp0 f441volatile = new bp0("ScriptDataDoubleEscapeEnd", 32) { // from class: com.apk.bp0.extends
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            bp0.m264try(ap0Var, qo0Var, bp0.f431static, bp0.f427private);
        }
    };

    /* renamed from: interface  reason: not valid java name */
    public static final bp0 f423interface = new bp0("BeforeAttributeName", 33) { // from class: com.apk.bp0.finally
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                qo0Var.m2167private();
                ap0Var.m80catch(this);
                ap0Var.f145this.m3104public();
                ap0Var.f139for = bp0.f428protected;
            } else if (m2176try != ' ') {
                if (m2176try != '\"' && m2176try != '\'') {
                    if (m2176try == '/') {
                        ap0Var.f139for = bp0.c;
                        return;
                    } else if (m2176try == 65535) {
                        ap0Var.m78break(this);
                        ap0Var.f139for = bp0.f412do;
                        return;
                    } else if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r') {
                        return;
                    } else {
                        switch (m2176try) {
                            case '<':
                                qo0Var.m2167private();
                                ap0Var.m80catch(this);
                                ap0Var.m88this();
                                ap0Var.f139for = bp0.f412do;
                                return;
                            case '=':
                                break;
                            case '>':
                                ap0Var.m88this();
                                ap0Var.f139for = bp0.f412do;
                                return;
                            default:
                                ap0Var.f145this.m3104public();
                                qo0Var.m2167private();
                                ap0Var.f139for = bp0.f428protected;
                                return;
                        }
                    }
                }
                ap0Var.m80catch(this);
                ap0Var.f145this.m3104public();
                ap0Var.f145this.m3107this(m2176try);
                ap0Var.f139for = bp0.f428protected;
            }
        }
    };

    /* renamed from: protected  reason: not valid java name */
    public static final bp0 f428protected = new bp0("AttributeName", 34) { // from class: com.apk.bp0.package
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            String m2152catch = qo0Var.m2152catch(bp0.C);
            yo0.Cthis cthis = ap0Var.f145this;
            if (cthis != null) {
                String replace = m2152catch.replace((char) 0, (char) 65533);
                cthis.f6023case = true;
                String str = cthis.f6032try;
                if (str != null) {
                    cthis.f6030new.append(str);
                    cthis.f6032try = null;
                }
                if (cthis.f6030new.length() == 0) {
                    cthis.f6032try = replace;
                } else {
                    cthis.f6030new.append(replace);
                }
                char m2176try = qo0Var.m2176try();
                if (m2176try != '\t' && m2176try != '\n' && m2176try != '\f' && m2176try != '\r' && m2176try != ' ') {
                    if (m2176try != '\"' && m2176try != '\'') {
                        if (m2176try == '/') {
                            ap0Var.f139for = bp0.c;
                            return;
                        } else if (m2176try != 65535) {
                            switch (m2176try) {
                                case '<':
                                    break;
                                case '=':
                                    ap0Var.f139for = bp0.f420implements;
                                    return;
                                case '>':
                                    ap0Var.m88this();
                                    ap0Var.f139for = bp0.f412do;
                                    return;
                                default:
                                    ap0Var.f145this.m3107this(m2176try);
                                    return;
                            }
                        } else {
                            ap0Var.m78break(this);
                            ap0Var.f139for = bp0.f412do;
                            return;
                        }
                    }
                    ap0Var.m80catch(this);
                    ap0Var.f145this.m3107this(m2176try);
                    return;
                }
                ap0Var.f139for = bp0.f439transient;
                return;
            }
            throw null;
        }
    };

    /* renamed from: transient  reason: not valid java name */
    public static final bp0 f439transient = new bp0("AfterAttributeName", 35) { // from class: com.apk.bp0.private
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f145this.m3107this((char) 65533);
                ap0Var.f139for = bp0.f428protected;
            } else if (m2176try != ' ') {
                if (m2176try != '\"' && m2176try != '\'') {
                    if (m2176try == '/') {
                        ap0Var.f139for = bp0.c;
                        return;
                    } else if (m2176try == 65535) {
                        ap0Var.m78break(this);
                        ap0Var.f139for = bp0.f412do;
                        return;
                    } else if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r') {
                        return;
                    } else {
                        switch (m2176try) {
                            case '<':
                                break;
                            case '=':
                                ap0Var.f139for = bp0.f420implements;
                                return;
                            case '>':
                                ap0Var.m88this();
                                ap0Var.f139for = bp0.f412do;
                                return;
                            default:
                                ap0Var.f145this.m3104public();
                                qo0Var.m2167private();
                                ap0Var.f139for = bp0.f428protected;
                                return;
                        }
                    }
                }
                ap0Var.m80catch(this);
                ap0Var.f145this.m3104public();
                ap0Var.f145this.m3107this(m2176try);
                ap0Var.f139for = bp0.f428protected;
            }
        }
    };

    /* renamed from: implements  reason: not valid java name */
    public static final bp0 f420implements = new bp0("BeforeAttributeValue", 36) { // from class: com.apk.bp0.abstract
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f145this.m3097break((char) 65533);
                ap0Var.f139for = bp0.f11099a;
            } else if (m2176try != ' ') {
                if (m2176try != '\"') {
                    if (m2176try != '`') {
                        if (m2176try == 65535) {
                            ap0Var.m78break(this);
                            ap0Var.m88this();
                            ap0Var.f139for = bp0.f412do;
                            return;
                        } else if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r') {
                            return;
                        } else {
                            if (m2176try == '&') {
                                qo0Var.m2167private();
                                ap0Var.f139for = bp0.f11099a;
                                return;
                            } else if (m2176try != '\'') {
                                switch (m2176try) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        ap0Var.m80catch(this);
                                        ap0Var.m88this();
                                        ap0Var.f139for = bp0.f412do;
                                        return;
                                    default:
                                        qo0Var.m2167private();
                                        ap0Var.f139for = bp0.f11099a;
                                        return;
                                }
                            } else {
                                ap0Var.f139for = bp0.f435synchronized;
                                return;
                            }
                        }
                    }
                    ap0Var.m80catch(this);
                    ap0Var.f145this.m3097break(m2176try);
                    ap0Var.f139for = bp0.f11099a;
                    return;
                }
                ap0Var.f139for = bp0.f422instanceof;
            }
        }
    };

    /* renamed from: instanceof  reason: not valid java name */
    public static final bp0 f422instanceof = new bp0("AttributeValue_doubleQuoted", 37) { // from class: com.apk.bp0.continue
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            String m2151case = qo0Var.m2151case(false);
            if (m2151case.length() > 0) {
                ap0Var.f145this.m3098catch(m2151case);
            } else {
                ap0Var.f145this.f6022break = true;
            }
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f145this.m3097break((char) 65533);
            } else if (m2176try == '\"') {
                ap0Var.f139for = bp0.b;
            } else if (m2176try != '&') {
                if (m2176try != 65535) {
                    ap0Var.f145this.m3097break(m2176try);
                    return;
                }
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
            } else {
                int[] m86if = ap0Var.m86if('\"', true);
                if (m86if != null) {
                    ap0Var.f145this.m3099class(m86if);
                } else {
                    ap0Var.f145this.m3097break('&');
                }
            }
        }
    };

    /* renamed from: synchronized  reason: not valid java name */
    public static final bp0 f435synchronized = new bp0("AttributeValue_singleQuoted", 38) { // from class: com.apk.bp0.strictfp
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            String m2151case = qo0Var.m2151case(true);
            if (m2151case.length() > 0) {
                ap0Var.f145this.m3098catch(m2151case);
            } else {
                ap0Var.f145this.f6022break = true;
            }
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f145this.m3097break((char) 65533);
            } else if (m2176try == 65535) {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != '&') {
                if (m2176try != '\'') {
                    ap0Var.f145this.m3097break(m2176try);
                } else {
                    ap0Var.f139for = bp0.b;
                }
            } else {
                int[] m86if = ap0Var.m86if('\'', true);
                if (m86if != null) {
                    ap0Var.f145this.m3099class(m86if);
                } else {
                    ap0Var.f145this.m3097break('&');
                }
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public static final bp0 f11099a = new bp0("AttributeValue_unquoted", 39) { // from class: com.apk.bp0.interface
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            String m2152catch = qo0Var.m2152catch(bp0.D);
            if (m2152catch.length() > 0) {
                ap0Var.f145this.m3098catch(m2152catch);
            }
            char m2176try = qo0Var.m2176try();
            if (m2176try != 0) {
                if (m2176try != ' ') {
                    if (m2176try != '\"' && m2176try != '`') {
                        if (m2176try == 65535) {
                            ap0Var.m78break(this);
                            ap0Var.f139for = bp0.f412do;
                            return;
                        } else if (m2176try != '\t' && m2176try != '\n' && m2176try != '\f' && m2176try != '\r') {
                            if (m2176try == '&') {
                                int[] m86if = ap0Var.m86if('>', true);
                                if (m86if != null) {
                                    ap0Var.f145this.m3099class(m86if);
                                    return;
                                } else {
                                    ap0Var.f145this.m3097break('&');
                                    return;
                                }
                            } else if (m2176try != '\'') {
                                switch (m2176try) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        ap0Var.m88this();
                                        ap0Var.f139for = bp0.f412do;
                                        return;
                                    default:
                                        ap0Var.f145this.m3097break(m2176try);
                                        return;
                                }
                            }
                        }
                    }
                    ap0Var.m80catch(this);
                    ap0Var.f145this.m3097break(m2176try);
                    return;
                }
                ap0Var.f139for = bp0.f423interface;
                return;
            }
            ap0Var.m80catch(this);
            ap0Var.f145this.m3097break((char) 65533);
        }
    };
    public static final bp0 b = new bp0("AfterAttributeValue_quoted", 40) { // from class: com.apk.bp0.protected
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                ap0Var.f139for = bp0.f423interface;
            } else if (m2176try == '/') {
                ap0Var.f139for = bp0.c;
            } else if (m2176try == '>') {
                ap0Var.m88this();
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                qo0Var.m2167private();
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.f423interface;
            } else {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 c = new bp0("SelfClosingStartTag", 41) { // from class: com.apk.bp0.transient
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '>') {
                ap0Var.f145this.f6024catch = true;
                ap0Var.m88this();
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                qo0Var.m2167private();
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.f423interface;
            } else {
                ap0Var.m78break(this);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 d = new bp0("BogusComment", 42) { // from class: com.apk.bp0.implements
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            ap0Var.f138final.m3095break(qo0Var.m2173this('>'));
            char m2154const = qo0Var.m2154const();
            if (m2154const == '>' || m2154const == 65535) {
                qo0Var.m2176try();
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 e = new bp0("MarkupDeclarationOpen", 43) { // from class: com.apk.bp0.instanceof
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2164native("--")) {
                ap0Var.f138final.mo3089else();
                ap0Var.f139for = bp0.f;
            } else if (qo0Var.m2168public("DOCTYPE")) {
                ap0Var.f139for = bp0.l;
            } else if (qo0Var.m2164native("[CDATA[")) {
                yo0.m3086goto(ap0Var.f140goto);
                ap0Var.f139for = bp0.B;
            } else {
                ap0Var.m80catch(this);
                ap0Var.m84for();
                ap0Var.f139for = bp0.d;
            }
        }
    };
    public static final bp0 f = new bp0("CommentStart", 44) { // from class: com.apk.bp0.synchronized
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f138final.m3096this((char) 65533);
                ap0Var.f139for = bp0.h;
            } else if (m2176try == '-') {
                ap0Var.f139for = bp0.g;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                qo0Var.m2167private();
                ap0Var.f139for = bp0.h;
            } else {
                ap0Var.m78break(this);
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 g = new bp0("CommentStartDash", 45) { // from class: com.apk.bp0.a
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f138final.m3096this((char) 65533);
                ap0Var.f139for = bp0.h;
            } else if (m2176try == '-') {
                ap0Var.f139for = bp0.g;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.f138final.m3096this(m2176try);
                ap0Var.f139for = bp0.h;
            } else {
                ap0Var.m78break(this);
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 h = new bp0("Comment", 46) { // from class: com.apk.bp0.b
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2154const = qo0Var.m2154const();
            if (m2154const == 0) {
                ap0Var.m80catch(this);
                qo0Var.m2156do();
                ap0Var.f138final.m3096this((char) 65533);
            } else if (m2154const == '-') {
                bp0 bp0Var = bp0.i;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else if (m2154const != 65535) {
                ap0Var.f138final.m3095break(qo0Var.m2150break('-', 0));
            } else {
                ap0Var.m78break(this);
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 i = new bp0("CommentEndDash", 47) { // from class: com.apk.bp0.c
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                yo0.Cnew cnew = ap0Var.f138final;
                cnew.m3096this('-');
                cnew.m3096this((char) 65533);
                ap0Var.f139for = bp0.h;
            } else if (m2176try == '-') {
                ap0Var.f139for = bp0.j;
            } else if (m2176try != 65535) {
                yo0.Cnew cnew2 = ap0Var.f138final;
                cnew2.m3096this('-');
                cnew2.m3096this(m2176try);
                ap0Var.f139for = bp0.h;
            } else {
                ap0Var.m78break(this);
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 j = new bp0("CommentEnd", 48) { // from class: com.apk.bp0.d
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                yo0.Cnew cnew = ap0Var.f138final;
                cnew.m3095break("--");
                cnew.m3096this((char) 65533);
                ap0Var.f139for = bp0.h;
            } else if (m2176try == '!') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.k;
            } else if (m2176try == '-') {
                ap0Var.m80catch(this);
                ap0Var.f138final.m3096this('-');
            } else if (m2176try == '>') {
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.m80catch(this);
                yo0.Cnew cnew2 = ap0Var.f138final;
                cnew2.m3095break("--");
                cnew2.m3096this(m2176try);
                ap0Var.f139for = bp0.h;
            } else {
                ap0Var.m78break(this);
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 k = new bp0("CommentEndBang", 49) { // from class: com.apk.bp0.f
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                yo0.Cnew cnew = ap0Var.f138final;
                cnew.m3095break("--!");
                cnew.m3096this((char) 65533);
                ap0Var.f139for = bp0.h;
            } else if (m2176try == '-') {
                ap0Var.f138final.m3095break("--!");
                ap0Var.f139for = bp0.i;
            } else if (m2176try == '>') {
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                yo0.Cnew cnew2 = ap0Var.f138final;
                cnew2.m3095break("--!");
                cnew2.m3096this(m2176try);
                ap0Var.f139for = bp0.h;
            } else {
                ap0Var.m78break(this);
                ap0Var.m85goto(ap0Var.f138final);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 l = new bp0("Doctype", 50) { // from class: com.apk.bp0.g
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try != '\t' && m2176try != '\n' && m2176try != '\f' && m2176try != '\r' && m2176try != ' ') {
                if (m2176try != '>') {
                    if (m2176try != 65535) {
                        ap0Var.m80catch(this);
                        ap0Var.f139for = bp0.m;
                        return;
                    }
                    ap0Var.m78break(this);
                }
                ap0Var.m80catch(this);
                ap0Var.f135const.mo3089else();
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
                return;
            }
            ap0Var.f139for = bp0.m;
        }
    };
    public static final bp0 m = new bp0("BeforeDoctypeName", 51) { // from class: com.apk.bp0.h
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2172switch()) {
                ap0Var.f135const.mo3089else();
                ap0Var.f139for = bp0.n;
                return;
            }
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f135const.mo3089else();
                ap0Var.f135const.f6035if.append((char) 65533);
                ap0Var.f139for = bp0.n;
            } else if (m2176try != ' ') {
                if (m2176try == 65535) {
                    ap0Var.m78break(this);
                    ap0Var.f135const.mo3089else();
                    yo0.Ctry ctry = ap0Var.f135const;
                    ctry.f6033case = true;
                    ap0Var.m85goto(ctry);
                    ap0Var.f139for = bp0.f412do;
                } else if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r') {
                } else {
                    ap0Var.f135const.mo3089else();
                    ap0Var.f135const.f6035if.append(m2176try);
                    ap0Var.f139for = bp0.n;
                }
            }
        }
    };
    public static final bp0 n = new bp0("DoctypeName", 52) { // from class: com.apk.bp0.i
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2175throws()) {
                ap0Var.f135const.f6035if.append(qo0Var.m2161goto());
                return;
            }
            char m2176try = qo0Var.m2176try();
            if (m2176try != 0) {
                if (m2176try != ' ') {
                    if (m2176try == '>') {
                        ap0Var.m85goto(ap0Var.f135const);
                        ap0Var.f139for = bp0.f412do;
                        return;
                    } else if (m2176try == 65535) {
                        ap0Var.m78break(this);
                        yo0.Ctry ctry = ap0Var.f135const;
                        ctry.f6033case = true;
                        ap0Var.m85goto(ctry);
                        ap0Var.f139for = bp0.f412do;
                        return;
                    } else if (m2176try != '\t' && m2176try != '\n' && m2176try != '\f' && m2176try != '\r') {
                        ap0Var.f135const.f6035if.append(m2176try);
                        return;
                    }
                }
                ap0Var.f139for = bp0.o;
                return;
            }
            ap0Var.m80catch(this);
            ap0Var.f135const.f6035if.append((char) 65533);
        }
    };
    public static final bp0 o = new bp0("AfterDoctypeName", 53) { // from class: com.apk.bp0.j
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            if (qo0Var.m2171super()) {
                ap0Var.m78break(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (qo0Var.m2170static('\t', '\n', '\r', '\f', ' ')) {
                qo0Var.m2156do();
            } else if (qo0Var.m2169return('>')) {
                ap0Var.m85goto(ap0Var.f135const);
                bp0 bp0Var = bp0.f412do;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else if (qo0Var.m2168public("PUBLIC")) {
                ap0Var.f135const.f6034for = "PUBLIC";
                ap0Var.f139for = bp0.p;
            } else if (qo0Var.m2168public("SYSTEM")) {
                ap0Var.f135const.f6034for = "SYSTEM";
                ap0Var.f139for = bp0.v;
            } else {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6033case = true;
                bp0 bp0Var2 = bp0.A;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var2;
            }
        }
    };
    public static final bp0 p = new bp0("AfterDoctypePublicKeyword", 54) { // from class: com.apk.bp0.k
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                ap0Var.f139for = bp0.q;
            } else if (m2176try == '\"') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.r;
            } else if (m2176try == '\'') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.s;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6033case = true;
                ap0Var.f139for = bp0.A;
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry2 = ap0Var.f135const;
                ctry2.f6033case = true;
                ap0Var.m85goto(ctry2);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 q = new bp0("BeforeDoctypePublicIdentifier", 55) { // from class: com.apk.bp0.l
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                return;
            }
            if (m2176try == '\"') {
                ap0Var.f139for = bp0.r;
            } else if (m2176try == '\'') {
                ap0Var.f139for = bp0.s;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6033case = true;
                ap0Var.f139for = bp0.A;
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry2 = ap0Var.f135const;
                ctry2.f6033case = true;
                ap0Var.m85goto(ctry2);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 r = new bp0("DoctypePublicIdentifier_doubleQuoted", 56) { // from class: com.apk.bp0.m
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6036new.append((char) 65533);
            } else if (m2176try == '\"') {
                ap0Var.f139for = bp0.t;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.f135const.f6036new.append(m2176try);
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry2 = ap0Var.f135const;
                ctry2.f6033case = true;
                ap0Var.m85goto(ctry2);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 s = new bp0("DoctypePublicIdentifier_singleQuoted", 57) { // from class: com.apk.bp0.n
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6036new.append((char) 65533);
            } else if (m2176try == '\'') {
                ap0Var.f139for = bp0.t;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.f135const.f6036new.append(m2176try);
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry2 = ap0Var.f135const;
                ctry2.f6033case = true;
                ap0Var.m85goto(ctry2);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 t = new bp0("AfterDoctypePublicIdentifier", 58) { // from class: com.apk.bp0.o
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                ap0Var.f139for = bp0.u;
            } else if (m2176try == '\"') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.x;
            } else if (m2176try == '\'') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.y;
            } else if (m2176try == '>') {
                ap0Var.m85goto(ap0Var.f135const);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6033case = true;
                ap0Var.f139for = bp0.A;
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 u = new bp0("BetweenDoctypePublicAndSystemIdentifiers", 59) { // from class: com.apk.bp0.q
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                return;
            }
            if (m2176try == '\"') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.x;
            } else if (m2176try == '\'') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.y;
            } else if (m2176try == '>') {
                ap0Var.m85goto(ap0Var.f135const);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6033case = true;
                ap0Var.f139for = bp0.A;
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 v = new bp0("AfterDoctypeSystemKeyword", 60) { // from class: com.apk.bp0.r
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                ap0Var.f139for = bp0.w;
            } else if (m2176try == '\"') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.x;
            } else if (m2176try == '\'') {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.y;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.m80catch(this);
                yo0.Ctry ctry2 = ap0Var.f135const;
                ctry2.f6033case = true;
                ap0Var.m85goto(ctry2);
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry3 = ap0Var.f135const;
                ctry3.f6033case = true;
                ap0Var.m85goto(ctry3);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 w = new bp0("BeforeDoctypeSystemIdentifier", 61) { // from class: com.apk.bp0.s
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                return;
            }
            if (m2176try == '\"') {
                ap0Var.f139for = bp0.x;
            } else if (m2176try == '\'') {
                ap0Var.f139for = bp0.y;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6033case = true;
                ap0Var.f139for = bp0.A;
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry2 = ap0Var.f135const;
                ctry2.f6033case = true;
                ap0Var.m85goto(ctry2);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 x = new bp0("DoctypeSystemIdentifier_doubleQuoted", 62) { // from class: com.apk.bp0.t
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6037try.append((char) 65533);
            } else if (m2176try == '\"') {
                ap0Var.f139for = bp0.z;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.f135const.f6037try.append(m2176try);
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry2 = ap0Var.f135const;
                ctry2.f6033case = true;
                ap0Var.m85goto(ctry2);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 y = new bp0("DoctypeSystemIdentifier_singleQuoted", 63) { // from class: com.apk.bp0.u
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == 0) {
                ap0Var.m80catch(this);
                ap0Var.f135const.f6037try.append((char) 65533);
            } else if (m2176try == '\'') {
                ap0Var.f139for = bp0.z;
            } else if (m2176try == '>') {
                ap0Var.m80catch(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.f135const.f6037try.append(m2176try);
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry2 = ap0Var.f135const;
                ctry2.f6033case = true;
                ap0Var.m85goto(ctry2);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 z = new bp0("AfterDoctypeSystemIdentifier", 64) { // from class: com.apk.bp0.v
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                return;
            }
            if (m2176try == '>') {
                ap0Var.m85goto(ap0Var.f135const);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
                ap0Var.m80catch(this);
                ap0Var.f139for = bp0.A;
            } else {
                ap0Var.m78break(this);
                yo0.Ctry ctry = ap0Var.f135const;
                ctry.f6033case = true;
                ap0Var.m85goto(ctry);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };
    public static final bp0 A = new bp0("BogusDoctype", 65) { // from class: com.apk.bp0.w
        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '>') {
                ap0Var.m85goto(ap0Var.f135const);
                ap0Var.f139for = bp0.f412do;
            } else if (m2176try != 65535) {
            } else {
                ap0Var.m85goto(ap0Var.f135const);
                ap0Var.f139for = bp0.f412do;
            }
        }
    };

    /* compiled from: TokeniserState.java */
    /* renamed from: com.apk.bp0$catch  reason: invalid class name */
    /* loaded from: classes7.dex */
    public enum Ccatch extends bp0 {
        public Ccatch(String str, int i) {
            super(str, i, null);
        }

        @Override // com.apk.bp0
        /* renamed from: case */
        public void mo265case(ap0 ap0Var, qo0 qo0Var) {
            char m2154const = qo0Var.m2154const();
            if (m2154const == 0) {
                ap0Var.m80catch(this);
                ap0Var.m89try(qo0Var.m2176try());
            } else if (m2154const == '&') {
                bp0 bp0Var = bp0.f419if;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var;
            } else if (m2154const == '<') {
                bp0 bp0Var2 = bp0.f418goto;
                ap0Var.f136do.m2156do();
                ap0Var.f139for = bp0Var2;
            } else if (m2154const != 65535) {
                ap0Var.m79case(qo0Var.m2157else());
            } else {
                ap0Var.m85goto(new yo0.Ccase());
            }
        }
    }

    static {
        bp0 bp0Var = new bp0("CdataSection", 66) { // from class: com.apk.bp0.x
            @Override // com.apk.bp0
            /* renamed from: case */
            public void mo265case(ap0 ap0Var, qo0 qo0Var) {
                String m2149for;
                int m2155default = qo0Var.m2155default("]]>");
                if (m2155default != -1) {
                    m2149for = qo0.m2149for(qo0Var.f3904do, qo0Var.f3907goto, qo0Var.f3911try, m2155default);
                    qo0Var.f3911try += m2155default;
                } else {
                    int i2 = qo0Var.f3906for;
                    int i3 = qo0Var.f3911try;
                    if (i2 - i3 < 3) {
                        m2149for = qo0Var.m2153class();
                    } else {
                        int i4 = (i2 - 3) + 1;
                        m2149for = qo0.m2149for(qo0Var.f3904do, qo0Var.f3907goto, i3, i4 - i3);
                        qo0Var.f3911try = i4;
                    }
                }
                ap0Var.f140goto.append(m2149for);
                if (qo0Var.m2164native("]]>") || qo0Var.m2171super()) {
                    ap0Var.m85goto(new yo0.Cif(ap0Var.f140goto.toString()));
                    ap0Var.f139for = bp0.f412do;
                }
            }
        };
        B = bp0Var;
        F = new bp0[]{f412do, f419if, f417for, f425new, f440try, f406case, f413else, f418goto, f436this, f405break, f407catch, f408class, f409const, f415final, f433super, f437throw, f442while, f421import, f424native, f429public, f430return, f431static, f434switch, f438throws, f411default, f414extends, f416finally, f426package, f427private, f404abstract, f410continue, f432strictfp, f441volatile, f423interface, f428protected, f439transient, f420implements, f422instanceof, f435synchronized, f11099a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, bp0Var};
        C = new char[]{'\t', '\n', '\f', '\r', ' ', '\"', '\'', '/', '<', '=', '>'};
        D = new char[]{0, '\t', '\n', '\f', '\r', ' ', '\"', '&', '\'', '<', '=', '>', '`'};
        E = String.valueOf((char) 65533);
    }

    public bp0(String str, int i2, Ccatch ccatch) {
    }

    /* renamed from: do  reason: not valid java name */
    public static void m260do(ap0 ap0Var, bp0 bp0Var) {
        int[] m86if = ap0Var.m86if(null, false);
        if (m86if == null) {
            ap0Var.m89try('&');
        } else {
            ap0Var.m79case(new String(m86if, 0, m86if.length));
        }
        ap0Var.f139for = bp0Var;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m261for(ap0 ap0Var, qo0 qo0Var, bp0 bp0Var, bp0 bp0Var2) {
        if (qo0Var.m2172switch()) {
            ap0Var.m87new(false);
            ap0Var.f139for = bp0Var;
            return;
        }
        ap0Var.m79case("</");
        ap0Var.f139for = bp0Var2;
    }

    /* renamed from: if  reason: not valid java name */
    public static void m262if(ap0 ap0Var, qo0 qo0Var, bp0 bp0Var, bp0 bp0Var2) {
        char m2154const = qo0Var.m2154const();
        if (m2154const == 0) {
            ap0Var.m80catch(bp0Var);
            qo0Var.m2156do();
            ap0Var.m89try((char) 65533);
        } else if (m2154const == '<') {
            ap0Var.f136do.m2156do();
            ap0Var.f139for = bp0Var2;
        } else if (m2154const != 65535) {
            int i2 = qo0Var.f3911try;
            int i3 = qo0Var.f3906for;
            char[] cArr = qo0Var.f3904do;
            int i4 = i2;
            while (i4 < i3) {
                char c2 = cArr[i4];
                if (c2 == 0 || c2 == '<') {
                    break;
                }
                i4++;
            }
            qo0Var.f3911try = i4;
            ap0Var.m79case(i4 > i2 ? qo0.m2149for(qo0Var.f3904do, qo0Var.f3907goto, i2, i4 - i2) : "");
        } else {
            ap0Var.m85goto(new yo0.Ccase());
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static void m263new(ap0 ap0Var, qo0 qo0Var, bp0 bp0Var) {
        if (qo0Var.m2175throws()) {
            String m2161goto = qo0Var.m2161goto();
            ap0Var.f145this.m3101final(m2161goto);
            ap0Var.f140goto.append(m2161goto);
            return;
        }
        boolean z2 = false;
        boolean z3 = true;
        if (ap0Var.m81class() && !qo0Var.m2171super()) {
            char m2176try = qo0Var.m2176try();
            if (m2176try == '\t' || m2176try == '\n' || m2176try == '\f' || m2176try == '\r' || m2176try == ' ') {
                ap0Var.f139for = f423interface;
            } else if (m2176try == '/') {
                ap0Var.f139for = c;
            } else if (m2176try != '>') {
                ap0Var.f140goto.append(m2176try);
                z2 = true;
            } else {
                ap0Var.m88this();
                ap0Var.f139for = f412do;
            }
            z3 = z2;
        }
        if (z3) {
            ap0Var.m79case("</");
            ap0Var.m83else(ap0Var.f140goto);
            ap0Var.f139for = bp0Var;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static void m264try(ap0 ap0Var, qo0 qo0Var, bp0 bp0Var, bp0 bp0Var2) {
        if (qo0Var.m2175throws()) {
            String m2161goto = qo0Var.m2161goto();
            ap0Var.f140goto.append(m2161goto);
            ap0Var.m79case(m2161goto);
            return;
        }
        char m2176try = qo0Var.m2176try();
        if (m2176try != '\t' && m2176try != '\n' && m2176try != '\f' && m2176try != '\r' && m2176try != ' ' && m2176try != '/' && m2176try != '>') {
            qo0Var.m2167private();
            ap0Var.f139for = bp0Var2;
            return;
        }
        if (ap0Var.f140goto.toString().equals("script")) {
            ap0Var.f139for = bp0Var;
        } else {
            ap0Var.f139for = bp0Var2;
        }
        ap0Var.m89try(m2176try);
    }

    public static bp0 valueOf(String str) {
        return (bp0) Enum.valueOf(bp0.class, str);
    }

    public static bp0[] values() {
        return (bp0[]) F.clone();
    }

    /* renamed from: case  reason: not valid java name */
    public abstract void mo265case(ap0 ap0Var, qo0 qo0Var);
}
