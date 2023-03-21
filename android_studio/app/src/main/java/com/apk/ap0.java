package com.apk;

import com.apk.yo0;
import com.umeng.analytics.pro.o;
import java.util.Arrays;
import javax.annotation.Nullable;

/* compiled from: Tokeniser.java */
/* loaded from: classes7.dex */
public final class ap0 {

    /* renamed from: native  reason: not valid java name */
    public static final char[] f129native;

    /* renamed from: public  reason: not valid java name */
    public static final int[] f130public = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, o.a.A, o.a.B, 732, 8482, 353, 8250, 339, 157, 382, 376};

    /* renamed from: do  reason: not valid java name */
    public final qo0 f136do;

    /* renamed from: if  reason: not valid java name */
    public final uo0 f141if;

    /* renamed from: new  reason: not valid java name */
    public yo0 f143new;

    /* renamed from: super  reason: not valid java name */
    public String f144super;

    /* renamed from: this  reason: not valid java name */
    public yo0.Cthis f145this;
    @Nullable

    /* renamed from: throw  reason: not valid java name */
    public String f146throw;

    /* renamed from: for  reason: not valid java name */
    public bp0 f139for = bp0.f412do;

    /* renamed from: try  reason: not valid java name */
    public boolean f147try = false;

    /* renamed from: case  reason: not valid java name */
    public String f132case = null;

    /* renamed from: else  reason: not valid java name */
    public StringBuilder f137else = new StringBuilder(1024);

    /* renamed from: goto  reason: not valid java name */
    public StringBuilder f140goto = new StringBuilder(1024);

    /* renamed from: break  reason: not valid java name */
    public yo0.Cgoto f131break = new yo0.Cgoto();

    /* renamed from: catch  reason: not valid java name */
    public yo0.Celse f133catch = new yo0.Celse();

    /* renamed from: class  reason: not valid java name */
    public yo0.Cfor f134class = new yo0.Cfor();

    /* renamed from: const  reason: not valid java name */
    public yo0.Ctry f135const = new yo0.Ctry();

    /* renamed from: final  reason: not valid java name */
    public yo0.Cnew f138final = new yo0.Cnew();

    /* renamed from: while  reason: not valid java name */
    public final int[] f148while = new int[1];

    /* renamed from: import  reason: not valid java name */
    public final int[] f142import = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        f129native = cArr;
        Arrays.sort(cArr);
    }

    public ap0(qo0 qo0Var, uo0 uo0Var) {
        this.f136do = qo0Var;
        this.f141if = uo0Var;
    }

    /* renamed from: break  reason: not valid java name */
    public void m78break(bp0 bp0Var) {
        if (this.f141if.m2728do()) {
            this.f141if.add(new to0(this.f136do, "Unexpectedly reached end of file (EOF) in input state [%s]", bp0Var));
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void m79case(String str) {
        if (this.f132case == null) {
            this.f132case = str;
            return;
        }
        if (this.f137else.length() == 0) {
            this.f137else.append(this.f132case);
        }
        this.f137else.append(str);
    }

    /* renamed from: catch  reason: not valid java name */
    public void m80catch(bp0 bp0Var) {
        if (this.f141if.m2728do()) {
            uo0 uo0Var = this.f141if;
            qo0 qo0Var = this.f136do;
            uo0Var.add(new to0(qo0Var, "Unexpected character '%s' in input state [%s]", Character.valueOf(qo0Var.m2154const()), bp0Var));
        }
    }

    /* renamed from: class  reason: not valid java name */
    public boolean m81class() {
        return this.f144super != null && this.f145this.m3102import().equalsIgnoreCase(this.f144super);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m82do(String str, Object... objArr) {
        if (this.f141if.m2728do()) {
            uo0 uo0Var = this.f141if;
            qo0 qo0Var = this.f136do;
            uo0Var.add(new to0(qo0Var, String.format("Invalid character reference: " + str, objArr)));
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m83else(StringBuilder sb) {
        if (this.f132case == null) {
            this.f132case = sb.toString();
            return;
        }
        if (this.f137else.length() == 0) {
            this.f137else.append(this.f132case);
        }
        this.f137else.append((CharSequence) sb);
    }

    /* renamed from: for  reason: not valid java name */
    public void m84for() {
        this.f138final.mo3089else();
        this.f138final.f6021new = true;
    }

    /* renamed from: goto  reason: not valid java name */
    public void m85goto(yo0 yo0Var) {
        sb0.m2410extends(this.f147try);
        this.f143new = yo0Var;
        this.f147try = true;
        yo0.Cbreak cbreak = yo0Var.f6010do;
        if (cbreak == yo0.Cbreak.StartTag) {
            this.f144super = ((yo0.Cgoto) yo0Var).f6029if;
            this.f146throw = null;
        } else if (cbreak == yo0.Cbreak.EndTag) {
            yo0.Celse celse = (yo0.Celse) yo0Var;
            if (celse.m3109while()) {
                Object[] objArr = {celse.f6027for};
                if (this.f141if.m2728do()) {
                    this.f141if.add(new to0(this.f136do, "Attributes incorrectly present on end tag [/%s]", objArr));
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x01ec, code lost:
        if (r13.f136do.m2170static('=', '-', '_') == false) goto L135;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01be  */
    @javax.annotation.Nullable
    /* renamed from: if  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int[] m86if(java.lang.Character r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ap0.m86if(java.lang.Character, boolean):int[]");
    }

    /* renamed from: new  reason: not valid java name */
    public yo0.Cthis m87new(boolean z) {
        yo0.Cthis cthis;
        if (z) {
            cthis = this.f131break;
            cthis.mo3094return();
        } else {
            cthis = this.f133catch;
            cthis.mo3089else();
        }
        this.f145this = cthis;
        return cthis;
    }

    /* renamed from: this  reason: not valid java name */
    public void m88this() {
        yo0.Cthis cthis = this.f145this;
        if (cthis.f6023case) {
            cthis.m3104public();
        }
        m85goto(this.f145this);
    }

    /* renamed from: try  reason: not valid java name */
    public void m89try(char c) {
        if (this.f132case == null) {
            this.f132case = String.valueOf(c);
            return;
        }
        if (this.f137else.length() == 0) {
            this.f137else.append(this.f132case);
        }
        this.f137else.append(c);
    }
}
