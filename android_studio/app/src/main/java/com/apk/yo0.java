package com.apk;

import javax.annotation.Nullable;

/* compiled from: Token.java */
/* loaded from: classes7.dex */
public abstract class yo0 {

    /* renamed from: do  reason: not valid java name */
    public Cbreak f6010do;

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$break  reason: invalid class name */
    /* loaded from: classes7.dex */
    public enum Cbreak {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$case  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ccase extends yo0 {
        public Ccase() {
            super(null);
            this.f6010do = Cbreak.EOF;
        }

        @Override // com.apk.yo0
        /* renamed from: else */
        public yo0 mo3089else() {
            return this;
        }

        public String toString() {
            return "";
        }
    }

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$else  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Celse extends Cthis {
        public Celse() {
            this.f6010do = Cbreak.EndTag;
        }

        public String toString() {
            StringBuilder m1016super = com.apk.Cgoto.m1016super("</");
            m1016super.append(m3105static());
            m1016super.append(">");
            return m1016super.toString();
        }
    }

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cfor extends yo0 {

        /* renamed from: if  reason: not valid java name */
        public String f6018if;

        public Cfor() {
            super(null);
            this.f6010do = Cbreak.Character;
        }

        @Override // com.apk.yo0
        /* renamed from: else */
        public yo0 mo3089else() {
            this.f6018if = null;
            return this;
        }

        public String toString() {
            return this.f6018if;
        }
    }

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$goto  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cgoto extends Cthis {
        public Cgoto() {
            this.f6010do = Cbreak.StartTag;
        }

        @Override // com.apk.yo0.Cthis, com.apk.yo0
        /* renamed from: else */
        public /* bridge */ /* synthetic */ yo0 mo3089else() {
            mo3094return();
            return this;
        }

        @Override // com.apk.yo0.Cthis
        /* renamed from: return  reason: not valid java name */
        public Cthis mo3094return() {
            super.mo3089else();
            this.f6025class = null;
            return this;
        }

        public String toString() {
            if (m3109while() && this.f6025class.f948do > 0) {
                StringBuilder m1016super = com.apk.Cgoto.m1016super("<");
                m1016super.append(m3105static());
                m1016super.append(" ");
                m1016super.append(this.f6025class.toString());
                m1016super.append(">");
                return m1016super.toString();
            }
            StringBuilder m1016super2 = com.apk.Cgoto.m1016super("<");
            m1016super2.append(m3105static());
            m1016super2.append(">");
            return m1016super2.toString();
        }
    }

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif extends Cfor {
        public Cif(String str) {
            this.f6018if = str;
        }

        @Override // com.apk.yo0.Cfor
        public String toString() {
            return com.apk.Cgoto.m991class(com.apk.Cgoto.m1016super("<![CDATA["), this.f6018if, "]]>");
        }
    }

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cnew extends yo0 {

        /* renamed from: for  reason: not valid java name */
        public String f6019for;

        /* renamed from: if  reason: not valid java name */
        public final StringBuilder f6020if;

        /* renamed from: new  reason: not valid java name */
        public boolean f6021new;

        public Cnew() {
            super(null);
            this.f6020if = new StringBuilder();
            this.f6010do = Cbreak.Comment;
        }

        /* renamed from: break  reason: not valid java name */
        public final Cnew m3095break(String str) {
            String str2 = this.f6019for;
            if (str2 != null) {
                this.f6020if.append(str2);
                this.f6019for = null;
            }
            if (this.f6020if.length() == 0) {
                this.f6019for = str;
            } else {
                this.f6020if.append(str);
            }
            return this;
        }

        @Override // com.apk.yo0
        /* renamed from: else */
        public yo0 mo3089else() {
            yo0.m3086goto(this.f6020if);
            this.f6019for = null;
            return this;
        }

        /* renamed from: this  reason: not valid java name */
        public final Cnew m3096this(char c) {
            String str = this.f6019for;
            if (str != null) {
                this.f6020if.append(str);
                this.f6019for = null;
            }
            this.f6020if.append(c);
            return this;
        }

        public String toString() {
            StringBuilder m1016super = com.apk.Cgoto.m1016super("<!--");
            String str = this.f6019for;
            if (str == null) {
                str = this.f6020if.toString();
            }
            return com.apk.Cgoto.m991class(m1016super, str, "-->");
        }
    }

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$this  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static abstract class Cthis extends yo0 {

        /* renamed from: break  reason: not valid java name */
        public boolean f6022break;

        /* renamed from: case  reason: not valid java name */
        public boolean f6023case;

        /* renamed from: catch  reason: not valid java name */
        public boolean f6024catch;
        @Nullable

        /* renamed from: class  reason: not valid java name */
        public do0 f6025class;

        /* renamed from: else  reason: not valid java name */
        public final StringBuilder f6026else;
        @Nullable

        /* renamed from: for  reason: not valid java name */
        public String f6027for;
        @Nullable

        /* renamed from: goto  reason: not valid java name */
        public String f6028goto;
        @Nullable

        /* renamed from: if  reason: not valid java name */
        public String f6029if;

        /* renamed from: new  reason: not valid java name */
        public final StringBuilder f6030new;

        /* renamed from: this  reason: not valid java name */
        public boolean f6031this;
        @Nullable

        /* renamed from: try  reason: not valid java name */
        public String f6032try;

        public Cthis() {
            super(null);
            this.f6030new = new StringBuilder();
            this.f6023case = false;
            this.f6026else = new StringBuilder();
            this.f6031this = false;
            this.f6022break = false;
            this.f6024catch = false;
        }

        /* renamed from: break  reason: not valid java name */
        public final void m3097break(char c) {
            m3106super();
            this.f6026else.append(c);
        }

        /* renamed from: catch  reason: not valid java name */
        public final void m3098catch(String str) {
            m3106super();
            if (this.f6026else.length() == 0) {
                this.f6028goto = str;
            } else {
                this.f6026else.append(str);
            }
        }

        /* renamed from: class  reason: not valid java name */
        public final void m3099class(int[] iArr) {
            m3106super();
            for (int i : iArr) {
                this.f6026else.appendCodePoint(i);
            }
        }

        /* renamed from: const  reason: not valid java name */
        public final void m3100const(char c) {
            m3101final(String.valueOf(c));
        }

        /* renamed from: final  reason: not valid java name */
        public final void m3101final(String str) {
            String replace = str.replace((char) 0, (char) 65533);
            String str2 = this.f6029if;
            if (str2 != null) {
                replace = str2.concat(replace);
            }
            this.f6029if = replace;
            this.f6027for = vo0.m2828do(replace);
        }

        /* renamed from: import  reason: not valid java name */
        public final String m3102import() {
            String str = this.f6029if;
            sb0.m2410extends(str == null || str.length() == 0);
            return this.f6029if;
        }

        /* renamed from: native  reason: not valid java name */
        public final Cthis m3103native(String str) {
            this.f6029if = str;
            this.f6027for = vo0.m2828do(str);
            return this;
        }

        /* renamed from: public  reason: not valid java name */
        public final void m3104public() {
            String str;
            if (this.f6025class == null) {
                this.f6025class = new do0();
            }
            if (this.f6023case && this.f6025class.f948do < 512) {
                String trim = (this.f6030new.length() > 0 ? this.f6030new.toString() : this.f6032try).trim();
                if (trim.length() > 0) {
                    if (this.f6031this) {
                        str = this.f6026else.length() > 0 ? this.f6026else.toString() : this.f6028goto;
                    } else {
                        str = this.f6022break ? "" : null;
                    }
                    this.f6025class.m492do(trim, str);
                }
            }
            yo0.m3086goto(this.f6030new);
            this.f6032try = null;
            this.f6023case = false;
            yo0.m3086goto(this.f6026else);
            this.f6028goto = null;
            this.f6031this = false;
            this.f6022break = false;
        }

        @Override // com.apk.yo0
        /* renamed from: return */
        public Cthis mo3089else() {
            this.f6029if = null;
            this.f6027for = null;
            yo0.m3086goto(this.f6030new);
            this.f6032try = null;
            this.f6023case = false;
            yo0.m3086goto(this.f6026else);
            this.f6028goto = null;
            this.f6022break = false;
            this.f6031this = false;
            this.f6024catch = false;
            this.f6025class = null;
            return this;
        }

        /* renamed from: static  reason: not valid java name */
        public final String m3105static() {
            String str = this.f6029if;
            return str != null ? str : "[unset]";
        }

        /* renamed from: super  reason: not valid java name */
        public final void m3106super() {
            this.f6031this = true;
            String str = this.f6028goto;
            if (str != null) {
                this.f6026else.append(str);
                this.f6028goto = null;
            }
        }

        /* renamed from: this  reason: not valid java name */
        public final void m3107this(char c) {
            this.f6023case = true;
            String str = this.f6032try;
            if (str != null) {
                this.f6030new.append(str);
                this.f6032try = null;
            }
            this.f6030new.append(c);
        }

        /* renamed from: throw  reason: not valid java name */
        public final boolean m3108throw(String str) {
            do0 do0Var = this.f6025class;
            if (do0Var != null) {
                return do0Var.m490class(str) != -1;
            }
            return false;
        }

        /* renamed from: while  reason: not valid java name */
        public final boolean m3109while() {
            return this.f6025class != null;
        }
    }

    /* compiled from: Token.java */
    /* renamed from: com.apk.yo0$try  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ctry extends yo0 {

        /* renamed from: case  reason: not valid java name */
        public boolean f6033case;

        /* renamed from: for  reason: not valid java name */
        public String f6034for;

        /* renamed from: if  reason: not valid java name */
        public final StringBuilder f6035if;

        /* renamed from: new  reason: not valid java name */
        public final StringBuilder f6036new;

        /* renamed from: try  reason: not valid java name */
        public final StringBuilder f6037try;

        public Ctry() {
            super(null);
            this.f6035if = new StringBuilder();
            this.f6034for = null;
            this.f6036new = new StringBuilder();
            this.f6037try = new StringBuilder();
            this.f6033case = false;
            this.f6010do = Cbreak.Doctype;
        }

        @Override // com.apk.yo0
        /* renamed from: else */
        public yo0 mo3089else() {
            yo0.m3086goto(this.f6035if);
            this.f6034for = null;
            yo0.m3086goto(this.f6036new);
            yo0.m3086goto(this.f6037try);
            this.f6033case = false;
            return this;
        }

        public String toString() {
            StringBuilder m1016super = com.apk.Cgoto.m1016super("<!doctype ");
            m1016super.append(this.f6035if.toString());
            m1016super.append(">");
            return m1016super.toString();
        }
    }

    public yo0(Cdo cdo) {
    }

    /* renamed from: goto  reason: not valid java name */
    public static void m3086goto(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final boolean m3087case() {
        return this.f6010do == Cbreak.StartTag;
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m3088do() {
        return this.f6010do == Cbreak.Character;
    }

    /* renamed from: else  reason: not valid java name */
    public abstract yo0 mo3089else();

    /* renamed from: for  reason: not valid java name */
    public final boolean m3090for() {
        return this.f6010do == Cbreak.Doctype;
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m3091if() {
        return this.f6010do == Cbreak.Comment;
    }

    /* renamed from: new  reason: not valid java name */
    public final boolean m3092new() {
        return this.f6010do == Cbreak.EOF;
    }

    /* renamed from: try  reason: not valid java name */
    public final boolean m3093try() {
        return this.f6010do == Cbreak.EndTag;
    }
}
