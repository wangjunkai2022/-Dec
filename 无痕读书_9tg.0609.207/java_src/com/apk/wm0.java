package com.apk;
/* compiled from: DoctypeToken.java */
/* loaded from: classes7.dex */
public class wm0 extends jm0 implements km0 {

    /* renamed from: case  reason: not valid java name */
    public Integer f5352case = null;

    /* renamed from: for  reason: not valid java name */
    public String f5353for;

    /* renamed from: if  reason: not valid java name */
    public String f5354if;

    /* renamed from: new  reason: not valid java name */
    public String f5355new;

    /* renamed from: try  reason: not valid java name */
    public String f5356try;

    public wm0(String str, String str2, String str3, String str4) {
        this.f5354if = str;
        this.f5353for = str2 != null ? str2.toUpperCase() : str2;
        this.f5355new = m2930new(str3);
        this.f5356try = m2930new(str4);
        m2931try();
    }

    public int getType() {
        return this.f5352case.intValue();
    }

    /* renamed from: new  reason: not valid java name */
    public final String m2930new(String str) {
        return str != null ? str.replace('>', ' ').replace('<', ' ').replace('&', ' ').replace('\'', ' ').replace('\"', ' ') : str;
    }

    public String toString() {
        String sb;
        if (this.f5352case.intValue() == 0 && this.f5354if == null) {
            return "<!DOCTYPE>";
        }
        if (this.f5352case.intValue() != 0) {
            sb = this.f5352case.intValue() >= 30 ? "<!DOCTYPE html" : "<!DOCTYPE HTML";
        } else {
            StringBuilder m1016super = Cgoto.m1016super("<!DOCTYPE ");
            m1016super.append(this.f5354if);
            sb = m1016super.toString();
        }
        if (this.f5353for != null) {
            StringBuilder m1025while = Cgoto.m1025while(sb, " ");
            m1025while.append(this.f5353for);
            m1025while.append(" \"");
            sb = Cgoto.m991class(m1025while, this.f5355new, "\"");
            if (!"".equals(this.f5356try)) {
                sb = Cgoto.m991class(Cgoto.m1025while(sb, " \""), this.f5356try, "\"");
            }
        }
        return Cgoto.m989case(sb, ">");
    }

    /* renamed from: try  reason: not valid java name */
    public final void m2931try() {
        if (!"public".equalsIgnoreCase(this.f5353for) && !"system".equalsIgnoreCase(this.f5353for) && "html".equalsIgnoreCase(this.f5354if) && this.f5353for == null) {
            this.f5352case = 60;
        }
        if ("public".equalsIgnoreCase(this.f5353for)) {
            if ("-//W3C//DTD HTML 4.0//EN".equals(this.f5355new)) {
                this.f5352case = 10;
                if (!"http://www.w3.org/TR/REC-html40/strict.dtd".equals(this.f5356try)) {
                    "".equals(this.f5356try);
                }
            }
            if ("-//W3C//DTD HTML 4.01//EN".equals(this.f5355new)) {
                this.f5352case = 21;
                if (!"http://www.w3.org/TR/html4/strict.dtd".equals(this.f5356try)) {
                    "".equals(this.f5356try);
                }
            }
            if ("-//W3C//DTD HTML 4.01 Transitional//EN".equals(this.f5355new)) {
                this.f5352case = 22;
                "http://www.w3.org/TR/html4/loose.dtd".equals(this.f5356try);
            }
            if ("-//W3C//DTD HTML 4.01 Frameset//EN".equals(this.f5355new)) {
                this.f5352case = 23;
                "http://www.w3.org/TR/html4/frameset.dtd".equals(this.f5356try);
            }
            if ("-//W3C//DTD XHTML 1.0 Strict//EN".equals(this.f5355new)) {
                this.f5352case = 31;
                "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd".equals(this.f5356try);
            }
            if ("-//W3C//DTD XHTML 1.0 Transitional//EN".equals(this.f5355new)) {
                this.f5352case = 32;
                "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd".equals(this.f5356try);
            }
            if ("-//W3C//DTD XHTML 1.0 Frameset//EN".equals(this.f5355new)) {
                this.f5352case = 33;
                "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd".equals(this.f5356try);
            }
            if ("-//W3C//DTD XHTML 1.1//EN".equals(this.f5355new)) {
                this.f5352case = 40;
                "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd".equals(this.f5356try);
            }
            if ("-//W3C//DTD XHTML Basic 1.1//EN".equals(this.f5355new)) {
                this.f5352case = 41;
                "http://www.w3.org/TR/xhtml11/DTD/xhtml-basic11.dtd".equals(this.f5356try);
            }
        }
        if ("system".equalsIgnoreCase(this.f5353for) && "about:legacy-compat".equals(this.f5355new)) {
            this.f5352case = 61;
        }
        if (this.f5352case == null) {
            this.f5352case = 0;
        }
    }

    public wm0(String str, String str2, String str3, String str4, String str5) {
        this.f5354if = str;
        this.f5353for = str2 != null ? str2.toUpperCase() : str2;
        this.f5355new = m2930new(str3);
        this.f5356try = m2930new(str5);
        m2931try();
    }
}
