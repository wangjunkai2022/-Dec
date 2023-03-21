package com.apk;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompatJellybean;
import androidx.core.view.InputDeviceCompat;
import com.apk.so0;
import com.apk.yo0;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: HtmlTreeBuilder.java */
/* loaded from: classes7.dex */
public class ro0 extends cp0 {

    /* renamed from: class  reason: not valid java name */
    public so0 f4170class;

    /* renamed from: const  reason: not valid java name */
    public so0 f4171const;

    /* renamed from: default  reason: not valid java name */
    public String[] f4172default = {null};

    /* renamed from: final  reason: not valid java name */
    public boolean f4173final;

    /* renamed from: import  reason: not valid java name */
    public ArrayList<jo0> f4174import;

    /* renamed from: native  reason: not valid java name */
    public ArrayList<so0> f4175native;

    /* renamed from: public  reason: not valid java name */
    public List<String> f4176public;

    /* renamed from: return  reason: not valid java name */
    public yo0.Celse f4177return;

    /* renamed from: static  reason: not valid java name */
    public boolean f4178static;
    @Nullable

    /* renamed from: super  reason: not valid java name */
    public jo0 f4179super;

    /* renamed from: switch  reason: not valid java name */
    public boolean f4180switch;
    @Nullable

    /* renamed from: throw  reason: not valid java name */
    public lo0 f4181throw;

    /* renamed from: throws  reason: not valid java name */
    public boolean f4182throws;
    @Nullable

    /* renamed from: while  reason: not valid java name */
    public jo0 f4183while;

    /* renamed from: extends  reason: not valid java name */
    public static final String[] f4164extends = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};

    /* renamed from: finally  reason: not valid java name */
    public static final String[] f4165finally = {"ol", "ul"};

    /* renamed from: package  reason: not valid java name */
    public static final String[] f4166package = {"button"};

    /* renamed from: private  reason: not valid java name */
    public static final String[] f4167private = {"html", "table"};

    /* renamed from: abstract  reason: not valid java name */
    public static final String[] f4162abstract = {"optgroup", "option"};

    /* renamed from: continue  reason: not valid java name */
    public static final String[] f4163continue = {"dd", "dt", "li", "optgroup", "option", com.umeng.analytics.pro.ak.ax, "rb", "rp", "rt", "rtc"};

    /* renamed from: strictfp  reason: not valid java name */
    public static final String[] f4168strictfp = {"caption", "colgroup", "dd", "dt", "li", "optgroup", "option", com.umeng.analytics.pro.ak.ax, "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};

    /* renamed from: volatile  reason: not valid java name */
    public static final String[] f4169volatile = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", SupportMenuInflater.XML_MENU, TTDownloadField.TT_META, "nav", "noembed", "noframes", "noscript", "object", "ol", com.umeng.analytics.pro.ak.ax, "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", NotificationCompatJellybean.KEY_TITLE, "tr", "ul", "wbr", "xmp"};

    /* renamed from: continue  reason: not valid java name */
    public static boolean m2319continue(ArrayList<jo0> arrayList, jo0 jo0Var) {
        int size = arrayList.size() - 1;
        int i = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        while (size >= i) {
            if (arrayList.get(size) == jo0Var) {
                return true;
            }
            size--;
        }
        return false;
    }

    public boolean a(jo0 jo0Var) {
        for (int size = this.f740try.size() - 1; size >= 0; size--) {
            if (this.f740try.get(size) == jo0Var) {
                this.f740try.remove(size);
                return true;
            }
        }
        return false;
    }

    /* renamed from: abstract  reason: not valid java name */
    public boolean m2320abstract(jo0 jo0Var) {
        return bo0.m254new(jo0Var.f2398new.f5716if, f4169volatile);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void b() {
        char c;
        so0 so0Var;
        ArrayList<so0> arrayList;
        int size = this.f740try.size() - 1;
        int i = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        if (this.f740try.size() == 0) {
            this.f4170class = so0.f4481else;
        }
        boolean z = false;
        while (size >= i) {
            jo0 jo0Var = this.f740try.get(size);
            if (size == i) {
                if (this.f4182throws) {
                    jo0Var = this.f4183while;
                }
                z = true;
            }
            String str = jo0Var != null ? jo0Var.f2398new.f5716if : "";
            switch (str.hashCode()) {
                case -1644953643:
                    if (str.equals("frameset")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case -1321546630:
                    if (str.equals("template")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -906021636:
                    if (str.equals("select")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -636197633:
                    if (str.equals("colgroup")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 3696:
                    if (str.equals("td")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 3700:
                    if (str.equals("th")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 3710:
                    if (str.equals("tr")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 3029410:
                    if (str.equals("body")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 3198432:
                    if (str.equals("head")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 3213227:
                    if (str.equals("html")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case 110115790:
                    if (str.equals("table")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 110157846:
                    if (str.equals("tbody")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 110277346:
                    if (str.equals("tfoot")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 110326868:
                    if (str.equals("thead")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 552573414:
                    if (str.equals("caption")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    this.f4170class = so0.f4496throw;
                    return;
                case 1:
                case 2:
                    if (!z) {
                        this.f4170class = so0.f4493super;
                        return;
                    }
                    break;
                case 3:
                    this.f4170class = so0.f4483final;
                    return;
                case 4:
                case 5:
                case 6:
                    this.f4170class = so0.f4478const;
                    return;
                case 7:
                    this.f4170class = so0.f4476catch;
                    return;
                case '\b':
                    this.f4170class = so0.f4477class;
                    return;
                case '\t':
                    this.f4170class = so0.f4495this;
                    return;
                case '\n':
                    if (this.f4175native.size() > 0) {
                        so0Var = this.f4175native.get(arrayList.size() - 1);
                    } else {
                        so0Var = null;
                    }
                    sb0.m2431synchronized(so0Var, "Bug: no template insertion mode on stack!");
                    this.f4170class = so0Var;
                    return;
                case 11:
                    if (!z) {
                        this.f4170class = so0.f4489new;
                        return;
                    }
                    break;
                case '\f':
                    this.f4170class = so0.f4481else;
                    return;
                case '\r':
                    this.f4170class = so0.f4490public;
                    return;
                case 14:
                    this.f4170class = this.f4179super == null ? so0.f4484for : so0.f4475case;
                    return;
            }
            if (z) {
                this.f4170class = so0.f4481else;
                return;
            }
            size--;
        }
    }

    /* renamed from: break  reason: not valid java name */
    public void m2321break() {
        jo0 jo0Var;
        while (!this.f4174import.isEmpty()) {
            int size = this.f4174import.size();
            if (size > 0) {
                jo0Var = this.f4174import.remove(size - 1);
                continue;
            } else {
                jo0Var = null;
                continue;
            }
            if (jo0Var == null) {
                return;
            }
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m2322catch(String... strArr) {
        int size = this.f740try.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            jo0 jo0Var = this.f740try.get(size);
            if (bo0.m251for(jo0Var.f2398new.f5716if, strArr) || jo0Var.f2398new.f5716if.equals("html")) {
                return;
            }
            this.f740try.remove(size);
        }
    }

    /* renamed from: class  reason: not valid java name */
    public void m2323class() {
        m2322catch("tbody", "tfoot", "thead", "template");
    }

    /* renamed from: const  reason: not valid java name */
    public void m2324const() {
        m2322catch("table", "template");
    }

    /* renamed from: default  reason: not valid java name */
    public jo0 m2325default(yo0.Cgoto cgoto) {
        xo0 m388else = m388else(cgoto.m3102import(), this.f736goto);
        vo0 vo0Var = this.f736goto;
        do0 do0Var = cgoto.f6025class;
        vo0Var.m2829if(do0Var);
        jo0 jo0Var = new jo0(m388else, null, do0Var);
        m2336private(jo0Var);
        if (cgoto.f6024catch) {
            if (xo0.f5703break.containsKey(m388else.f5712do)) {
                if (!m388else.f5719try) {
                    ap0 ap0Var = this.f735for;
                    Object[] objArr = {m388else.f5716if};
                    if (ap0Var.f141if.m2728do()) {
                        ap0Var.f141if.add(new to0(ap0Var.f136do, "Tag [%s] cannot be self closing; not a void tag", objArr));
                    }
                }
            } else {
                m388else.f5711case = true;
            }
        }
        return jo0Var;
    }

    /* renamed from: extends  reason: not valid java name */
    public lo0 m2326extends(yo0.Cgoto cgoto, boolean z, boolean z2) {
        xo0 m388else = m388else(cgoto.m3102import(), this.f736goto);
        vo0 vo0Var = this.f736goto;
        do0 do0Var = cgoto.f6025class;
        vo0Var.m2829if(do0Var);
        lo0 lo0Var = new lo0(m388else, null, do0Var);
        if (z2) {
            if (!(m2334native("template") != null)) {
                this.f4181throw = lo0Var;
            }
        } else {
            this.f4181throw = lo0Var;
        }
        m2336private(lo0Var);
        if (z) {
            this.f740try.add(lo0Var);
        }
        return lo0Var;
    }

    /* renamed from: final  reason: not valid java name */
    public void m2327final() {
        m2322catch("tr", "template");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /* renamed from: finally  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2328finally(com.apk.no0 r6) {
        /*
            r5 = this;
            java.lang.String r0 = "table"
            com.apk.jo0 r0 = r5.m2334native(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L1a
            com.apk.no0 r3 = r0.f3281do
            r4 = r3
            com.apk.jo0 r4 = (com.apk.jo0) r4
            if (r4 == 0) goto L15
            com.apk.jo0 r3 = (com.apk.jo0) r3
            r4 = 1
            goto L23
        L15:
            com.apk.jo0 r3 = r5.m2329goto(r0)
            goto L22
        L1a:
            java.util.ArrayList<com.apk.jo0> r3 = r5.f740try
            java.lang.Object r3 = r3.get(r2)
            com.apk.jo0 r3 = (com.apk.jo0) r3
        L22:
            r4 = 0
        L23:
            if (r4 == 0) goto L3c
            com.apk.sb0.m2418instanceof(r0)
            com.apk.sb0.m2418instanceof(r6)
            com.apk.no0 r3 = r0.f3281do
            com.apk.sb0.m2418instanceof(r3)
            com.apk.no0 r3 = r0.f3281do
            int r0 = r0.f3282if
            com.apk.no0[] r1 = new com.apk.no0[r1]
            r1[r2] = r6
            r3.m1902if(r0, r1)
            goto L3f
        L3c:
            r3.m1374abstract(r6)
        L3f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ro0.m2328finally(com.apk.no0):void");
    }

    @Override // com.apk.cp0
    @ParametersAreNonnullByDefault
    /* renamed from: for */
    public void mo389for(Reader reader, String str, wo0 wo0Var) {
        super.mo389for(reader, str, wo0Var);
        this.f4170class = so0.f4480do;
        this.f4171const = null;
        this.f4173final = false;
        this.f4179super = null;
        this.f4181throw = null;
        this.f4183while = null;
        this.f4174import = new ArrayList<>();
        this.f4175native = new ArrayList<>();
        this.f4176public = new ArrayList();
        this.f4177return = new yo0.Celse();
        this.f4178static = true;
        this.f4180switch = false;
        this.f4182throws = false;
    }

    @Nullable
    /* renamed from: goto  reason: not valid java name */
    public jo0 m2329goto(jo0 jo0Var) {
        for (int size = this.f740try.size() - 1; size >= 0; size--) {
            if (this.f740try.get(size) == jo0Var) {
                return this.f740try.get(size - 1);
            }
        }
        return null;
    }

    /* renamed from: implements  reason: not valid java name */
    public void m2330implements(jo0 jo0Var) {
        m2345this(jo0Var);
        this.f4174import.add(jo0Var);
    }

    /* renamed from: import  reason: not valid java name */
    public jo0 m2331import(String str) {
        for (int size = this.f4174import.size() - 1; size >= 0; size--) {
            jo0 jo0Var = this.f4174import.get(size);
            if (jo0Var == null) {
                return null;
            }
            if (jo0Var.f2398new.f5716if.equals(str)) {
                return jo0Var;
            }
        }
        return null;
    }

    public jo0 insert(yo0.Cgoto cgoto) {
        int i;
        if (cgoto.m3109while()) {
            if (!(cgoto.f6025class.f948do == 0)) {
                do0 do0Var = cgoto.f6025class;
                vo0 vo0Var = this.f736goto;
                if (do0Var.f948do == 0) {
                    i = 0;
                } else {
                    boolean z = vo0Var.f5186if;
                    int i2 = 0;
                    i = 0;
                    while (i2 < do0Var.f950if.length) {
                        int i3 = i2 + 1;
                        int i4 = i3;
                        while (true) {
                            String[] strArr = do0Var.f950if;
                            if (i4 < strArr.length && strArr[i4] != null) {
                                if (!z || !strArr[i2].equals(strArr[i4])) {
                                    if (!z) {
                                        String[] strArr2 = do0Var.f950if;
                                        if (!strArr2[i2].equalsIgnoreCase(strArr2[i4])) {
                                        }
                                    }
                                    i4++;
                                }
                                i++;
                                do0Var.m497import(i4);
                                i4--;
                                i4++;
                            }
                        }
                        i2 = i3;
                    }
                }
                if (i > 0) {
                    Object[] objArr = {cgoto.f6027for};
                    uo0 uo0Var = this.f733do.f5359do;
                    if (uo0Var.m2728do()) {
                        uo0Var.add(new to0(this.f737if, "Dropped duplicate attribute(s) in tag [%s]", objArr));
                    }
                }
            }
        }
        if (cgoto.f6024catch) {
            jo0 m2325default = m2325default(cgoto);
            this.f740try.add(m2325default);
            ap0 ap0Var = this.f735for;
            ap0Var.f139for = bp0.f412do;
            yo0.Celse celse = this.f4177return;
            celse.mo3089else();
            celse.m3103native(m2325default.f2398new.f5712do);
            ap0Var.m85goto(celse);
            return m2325default;
        }
        xo0 m388else = m388else(cgoto.m3102import(), this.f736goto);
        vo0 vo0Var2 = this.f736goto;
        do0 do0Var2 = cgoto.f6025class;
        vo0Var2.m2829if(do0Var2);
        jo0 jo0Var = new jo0(m388else, null, do0Var2);
        insert(jo0Var);
        return jo0Var;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x004d -> B:22:0x004e). Please submit an issue!!! */
    /* renamed from: instanceof  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2332instanceof() {
        /*
            r9 = this;
            java.util.ArrayList<com.apk.jo0> r0 = r9.f4174import
            int r0 = r0.size()
            r1 = 0
            if (r0 <= 0) goto L18
            java.util.ArrayList<com.apk.jo0> r0 = r9.f4174import
            int r2 = r0.size()
            int r2 = r2 + (-1)
            java.lang.Object r0 = r0.get(r2)
            com.apk.jo0 r0 = (com.apk.jo0) r0
            goto L19
        L18:
            r0 = r1
        L19:
            if (r0 == 0) goto L91
            java.util.ArrayList<com.apk.jo0> r2 = r9.f740try
            boolean r2 = m2319continue(r2, r0)
            if (r2 == 0) goto L25
            goto L91
        L25:
            java.util.ArrayList<com.apk.jo0> r2 = r9.f4174import
            int r2 = r2.size()
            int r3 = r2 + (-12)
            r4 = 0
            if (r3 >= 0) goto L31
            r3 = 0
        L31:
            r5 = 1
            int r2 = r2 - r5
            r6 = r2
        L34:
            if (r6 != r3) goto L38
            r3 = r9
            goto L4e
        L38:
            java.util.ArrayList<com.apk.jo0> r0 = r9.f4174import
            int r6 = r6 + (-1)
            java.lang.Object r0 = r0.get(r6)
            com.apk.jo0 r0 = (com.apk.jo0) r0
            if (r0 == 0) goto L4c
            java.util.ArrayList<com.apk.jo0> r7 = r9.f740try
            boolean r7 = m2319continue(r7, r0)
            if (r7 == 0) goto L34
        L4c:
            r3 = r9
        L4d:
            r5 = 0
        L4e:
            if (r5 != 0) goto L5a
            java.util.ArrayList<com.apk.jo0> r0 = r3.f4174import
            int r6 = r6 + 1
            java.lang.Object r0 = r0.get(r6)
            com.apk.jo0 r0 = (com.apk.jo0) r0
        L5a:
            com.apk.sb0.m2418instanceof(r0)
            com.apk.xo0 r5 = r0.f2398new
            java.lang.String r5 = r5.f5716if
            com.apk.jo0 r7 = new com.apk.jo0
            com.apk.vo0 r8 = r3.f736goto
            com.apk.xo0 r5 = r3.m388else(r5, r8)
            r7.<init>(r5, r1, r1)
            r3.insert(r7)
            boolean r5 = r0.mo1381import()
            if (r5 == 0) goto L7c
            com.apk.do0 r5 = r0.mo1375case()
            int r5 = r5.f948do
            goto L7d
        L7c:
            r5 = 0
        L7d:
            if (r5 <= 0) goto L8a
            com.apk.do0 r5 = r7.mo1375case()
            com.apk.do0 r8 = r0.mo1375case()
            r5.m496if(r8)
        L8a:
            java.util.ArrayList<com.apk.jo0> r5 = r3.f4174import
            r5.set(r6, r7)
            if (r6 != r2) goto L4d
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ro0.m2332instanceof():void");
    }

    @Nullable
    /* renamed from: interface  reason: not valid java name */
    public jo0 m2333interface(String str) {
        for (int size = this.f740try.size() - 1; size >= 0; size--) {
            jo0 jo0Var = this.f740try.get(size);
            this.f740try.remove(size);
            if (jo0Var.f2398new.f5716if.equals(str)) {
                return jo0Var;
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: native  reason: not valid java name */
    public jo0 m2334native(String str) {
        int size = this.f740try.size() - 1;
        int i = size >= 256 ? size + InputDeviceCompat.SOURCE_ANY : 0;
        while (size >= i) {
            jo0 jo0Var = this.f740try.get(size);
            if (jo0Var.f2398new.f5716if.equals(str)) {
                return jo0Var;
            }
            size--;
        }
        return null;
    }

    @Override // com.apk.cp0
    /* renamed from: new */
    public boolean mo391new(yo0 yo0Var) {
        this.f734else = yo0Var;
        return this.f4170class.mo2521for(yo0Var, this);
    }

    /* renamed from: package  reason: not valid java name */
    public void m2335package() {
        this.f4174import.add(null);
    }

    /* renamed from: private  reason: not valid java name */
    public final void m2336private(no0 no0Var) {
        lo0 lo0Var;
        if (this.f740try.isEmpty()) {
            this.f738new.m1374abstract(no0Var);
        } else if (this.f4180switch && bo0.m254new(m387do().f2398new.f5716if, so0.Cdefault.f4523private)) {
            m2328finally(no0Var);
        } else {
            m387do().m1374abstract(no0Var);
        }
        if (no0Var instanceof jo0) {
            jo0 jo0Var = (jo0) no0Var;
            if (!jo0Var.f2398new.f5715goto || (lo0Var = this.f4181throw) == null) {
                return;
            }
            lo0Var.f2848break.add(jo0Var);
        }
    }

    @Nullable
    /* renamed from: protected  reason: not valid java name */
    public so0 m2337protected() {
        if (this.f4175native.size() > 0) {
            ArrayList<so0> arrayList = this.f4175native;
            return arrayList.remove(arrayList.size() - 1);
        }
        return null;
    }

    /* renamed from: public  reason: not valid java name */
    public boolean m2338public(String str) {
        String[] strArr = f4166package;
        String[] strArr2 = f4164extends;
        String[] strArr3 = this.f4172default;
        strArr3[0] = str;
        return m2343switch(strArr3, strArr2, strArr);
    }

    /* renamed from: return  reason: not valid java name */
    public boolean m2339return(String str) {
        String[] strArr = f4164extends;
        String[] strArr2 = this.f4172default;
        strArr2[0] = str;
        return m2343switch(strArr2, strArr, null);
    }

    /* renamed from: static  reason: not valid java name */
    public boolean m2340static(String str) {
        for (int size = this.f740try.size() - 1; size >= 0; size--) {
            String str2 = this.f740try.get(size).f2398new.f5716if;
            if (str2.equals(str)) {
                return true;
            }
            if (!bo0.m254new(str2, f4162abstract)) {
                return false;
            }
        }
        throw new IllegalArgumentException("Should not be reachable");
    }

    /* renamed from: strictfp  reason: not valid java name */
    public boolean m2341strictfp(jo0 jo0Var) {
        return m2319continue(this.f740try, jo0Var);
    }

    /* renamed from: super  reason: not valid java name */
    public void m2342super(so0 so0Var) {
        if (this.f733do.f5359do.m2728do()) {
            this.f733do.f5359do.add(new to0(this.f737if, "Unexpected %s token [%s] when in state [%s]", this.f734else.getClass().getSimpleName(), this.f734else, so0Var));
        }
    }

    /* renamed from: switch  reason: not valid java name */
    public final boolean m2343switch(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.f740try.size() - 1;
        int i = size > 100 ? size - 100 : 0;
        while (size >= i) {
            String str = this.f740try.get(size).f2398new.f5716if;
            if (bo0.m254new(str, strArr)) {
                return true;
            }
            if (bo0.m254new(str, strArr2)) {
                return false;
            }
            if (strArr3 != null && bo0.m254new(str, strArr3)) {
                return false;
            }
            size--;
        }
        return false;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public void m2344synchronized(jo0 jo0Var) {
        int size = this.f4174import.size();
        do {
            size--;
            if (size < 0) {
                return;
            }
        } while (this.f4174import.get(size) != jo0Var);
        this.f4174import.remove(size);
    }

    /* renamed from: this  reason: not valid java name */
    public void m2345this(jo0 jo0Var) {
        int i = 0;
        for (int size = this.f4174import.size() - 1; size >= 0; size--) {
            jo0 jo0Var2 = this.f4174import.get(size);
            if (jo0Var2 == null) {
                return;
            }
            if (jo0Var.f2398new.f5716if.equals(jo0Var2.f2398new.f5716if) && jo0Var.mo1375case().equals(jo0Var2.mo1375case())) {
                i++;
            }
            if (i == 3) {
                this.f4174import.remove(size);
                return;
            }
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public void m2346throw(String str) {
        while (bo0.m254new(m387do().f2398new.f5716if, f4163continue)) {
            if (str != null && m390if(str)) {
                return;
            }
            m2349volatile();
        }
    }

    /* renamed from: throws  reason: not valid java name */
    public boolean m2347throws(String str) {
        String[] strArr = f4167private;
        String[] strArr2 = this.f4172default;
        strArr2[0] = str;
        return m2343switch(strArr2, strArr, null);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("TreeBuilder{currentToken=");
        m1016super.append(this.f734else);
        m1016super.append(", state=");
        m1016super.append(this.f4170class);
        m1016super.append(", currentElement=");
        m1016super.append(m387do());
        m1016super.append('}');
        return m1016super.toString();
    }

    /* renamed from: transient  reason: not valid java name */
    public int m2348transient(jo0 jo0Var) {
        for (int i = 0; i < this.f4174import.size(); i++) {
            if (jo0Var == this.f4174import.get(i)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: volatile  reason: not valid java name */
    public jo0 m2349volatile() {
        return this.f740try.remove(this.f740try.size() - 1);
    }

    /* renamed from: while  reason: not valid java name */
    public void m2350while(boolean z) {
        String[] strArr = z ? f4168strictfp : f4163continue;
        while (bo0.m254new(m387do().f2398new.f5716if, strArr)) {
            m2349volatile();
        }
    }

    public void insert(jo0 jo0Var) {
        m2336private(jo0Var);
        this.f740try.add(jo0Var);
    }

    public void insert(yo0.Cnew cnew) {
        String str = cnew.f6019for;
        if (str == null) {
            str = cnew.f6020if.toString();
        }
        m2336private(new fo0(str));
    }

    public void insert(yo0.Cfor cfor) {
        no0 po0Var;
        jo0 m387do = m387do();
        String str = m387do.f2398new.f5716if;
        String str2 = cfor.f6018if;
        if (cfor instanceof yo0.Cif) {
            po0Var = new eo0(str2);
        } else {
            if (str.equals("script") || str.equals("style")) {
                po0Var = new go0(str2);
            } else {
                po0Var = new po0(str2);
            }
        }
        m387do.m1374abstract(po0Var);
    }
}
