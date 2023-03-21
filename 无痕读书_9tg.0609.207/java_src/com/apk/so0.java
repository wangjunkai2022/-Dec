package com.apk;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompatJellybean;
import com.apk.ho0;
import com.apk.yo0;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: HtmlTreeBuilderState.java */
/* loaded from: classes7.dex */
public abstract class so0 {

    /* renamed from: default  reason: not valid java name */
    public static final String f4479default;

    /* renamed from: extends  reason: not valid java name */
    public static final /* synthetic */ so0[] f4482extends;

    /* renamed from: throws  reason: not valid java name */
    public static final so0 f4497throws;

    /* renamed from: do  reason: not valid java name */
    public static final so0 f4480do = new Ccatch("Initial", 0);

    /* renamed from: if  reason: not valid java name */
    public static final so0 f4486if = new so0("BeforeHtml", 1) { // from class: com.apk.so0.while
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3090for()) {
                ro0Var.m2342super(this);
                return false;
            } else if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
                return true;
            } else if (so0.m2519do(yo0Var)) {
                ro0Var.insert((yo0.Cfor) yo0Var);
                return true;
            } else {
                if (yo0Var.m3087case()) {
                    yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                    if (cgoto.f6027for.equals("html")) {
                        ro0Var.insert(cgoto);
                        ro0Var.f4170class = so0.f4484for;
                        return true;
                    }
                }
                if (yo0Var.m3093try() && bo0.m254new(((yo0.Celse) yo0Var).f6027for, Cdefault.f4536try)) {
                    return m2530new(yo0Var, ro0Var);
                }
                if (yo0Var.m3093try()) {
                    ro0Var.m2342super(this);
                    return false;
                }
                return m2530new(yo0Var, ro0Var);
            }
        }

        /* renamed from: new  reason: not valid java name */
        public final boolean m2530new(yo0 yo0Var, ro0 ro0Var) {
            if (ro0Var != null) {
                ro0Var.insert(new jo0(ro0Var.m388else("html", ro0Var.f736goto), null, null));
                so0 so0Var = so0.f4484for;
                ro0Var.f4170class = so0Var;
                ro0Var.f734else = yo0Var;
                return so0Var.mo2521for(yo0Var, ro0Var);
            }
            throw null;
        }
    };

    /* renamed from: for  reason: not valid java name */
    public static final so0 f4484for = new so0("BeforeHead", 2) { // from class: com.apk.so0.import
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (so0.m2519do(yo0Var)) {
                ro0Var.insert((yo0.Cfor) yo0Var);
                return true;
            } else if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
                return true;
            } else if (yo0Var.m3090for()) {
                ro0Var.m2342super(this);
                return false;
            } else if (yo0Var.m3087case() && ((yo0.Cgoto) yo0Var).f6027for.equals("html")) {
                return so0.f4481else.mo2521for(yo0Var, ro0Var);
            } else {
                if (yo0Var.m3087case()) {
                    yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                    if (cgoto.f6027for.equals("head")) {
                        ro0Var.f4179super = ro0Var.insert(cgoto);
                        ro0Var.f4170class = so0.f4489new;
                        return true;
                    }
                }
                if (yo0Var.m3093try() && bo0.m254new(((yo0.Celse) yo0Var).f6027for, Cdefault.f4536try)) {
                    ro0Var.m386case("head");
                    ro0Var.f734else = yo0Var;
                    return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                } else if (yo0Var.m3093try()) {
                    ro0Var.m2342super(this);
                    return false;
                } else {
                    ro0Var.m386case("head");
                    ro0Var.f734else = yo0Var;
                    return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                }
            }
        }
    };

    /* renamed from: new  reason: not valid java name */
    public static final so0 f4489new = new so0("InHead", 3) { // from class: com.apk.so0.native
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (so0.m2519do(yo0Var)) {
                ro0Var.insert((yo0.Cfor) yo0Var);
                return true;
            }
            int ordinal = yo0Var.f6010do.ordinal();
            if (ordinal == 0) {
                ro0Var.m2342super(this);
                return false;
            }
            if (ordinal == 1) {
                yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                String str = cgoto.f6027for;
                if (str.equals("html")) {
                    return so0.f4481else.mo2521for(yo0Var, ro0Var);
                }
                if (bo0.m254new(str, Cdefault.f4508do)) {
                    jo0 m2325default = ro0Var.m2325default(cgoto);
                    if (str.equals("base") && m2325default.mo1744while("href") && !ro0Var.f4173final) {
                        String mo1741do = m2325default.mo1741do("href");
                        if (mo1741do.length() != 0) {
                            ro0Var.f731case = mo1741do;
                            ro0Var.f4173final = true;
                            ho0 ho0Var = ro0Var.f738new;
                            if (ho0Var != null) {
                                sb0.m2418instanceof(mo1741do);
                                ho0Var.mo1375case().m499super(jo0.f2395this, mo1741do);
                            } else {
                                throw null;
                            }
                        }
                    }
                } else if (str.equals(TTDownloadField.TT_META)) {
                    ro0Var.m2325default(cgoto);
                } else if (str.equals(NotificationCompatJellybean.KEY_TITLE)) {
                    ro0Var.f735for.f139for = bp0.f417for;
                    ro0Var.f4171const = ro0Var.f4170class;
                    ro0Var.f4170class = so0.f4485goto;
                    ro0Var.insert(cgoto);
                } else if (bo0.m254new(str, Cdefault.f4515if)) {
                    so0.m2520if(cgoto, ro0Var);
                } else if (str.equals("noscript")) {
                    ro0Var.insert(cgoto);
                    ro0Var.f4170class = so0.f4498try;
                } else if (str.equals("script")) {
                    ro0Var.f735for.f139for = bp0.f406case;
                    ro0Var.f4171const = ro0Var.f4170class;
                    ro0Var.f4170class = so0.f4485goto;
                    ro0Var.insert(cgoto);
                } else if (str.equals("head")) {
                    ro0Var.m2342super(this);
                    return false;
                } else if (str.equals("template")) {
                    ro0Var.insert(cgoto);
                    ro0Var.m2335package();
                    ro0Var.f4178static = false;
                    so0 so0Var = so0.f4487import;
                    ro0Var.f4170class = so0Var;
                    ro0Var.f4175native.add(so0Var);
                } else {
                    return m2523new(yo0Var, ro0Var);
                }
            } else if (ordinal == 2) {
                String str2 = ((yo0.Celse) yo0Var).f6027for;
                if (str2.equals("head")) {
                    ro0Var.m2349volatile();
                    ro0Var.f4170class = so0.f4475case;
                } else if (bo0.m254new(str2, Cdefault.f4513for)) {
                    return m2523new(yo0Var, ro0Var);
                } else {
                    if (str2.equals("template")) {
                        if (!(ro0Var.m2334native(str2) != null)) {
                            ro0Var.m2342super(this);
                        } else {
                            ro0Var.m2350while(true);
                            if (!str2.equals(ro0Var.m387do().f2398new.f5716if)) {
                                ro0Var.m2342super(this);
                            }
                            ro0Var.m2333interface(str2);
                            ro0Var.m2321break();
                            ro0Var.m2337protected();
                            ro0Var.b();
                        }
                    } else {
                        ro0Var.m2342super(this);
                        return false;
                    }
                }
            } else if (ordinal != 3) {
                return m2523new(yo0Var, ro0Var);
            } else {
                ro0Var.insert((yo0.Cnew) yo0Var);
            }
            return true;
        }

        /* renamed from: new  reason: not valid java name */
        public final boolean m2523new(yo0 yo0Var, cp0 cp0Var) {
            cp0Var.m392try("head");
            ro0 ro0Var = (ro0) cp0Var;
            ro0Var.f734else = yo0Var;
            return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
        }
    };

    /* renamed from: try  reason: not valid java name */
    public static final so0 f4498try = new so0("InHeadNoscript", 4) { // from class: com.apk.so0.public
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3090for()) {
                ro0Var.m2342super(this);
            } else if (yo0Var.m3087case() && ((yo0.Cgoto) yo0Var).f6027for.equals("html")) {
                so0 so0Var = so0.f4481else;
                ro0Var.f734else = yo0Var;
                return so0Var.mo2521for(yo0Var, ro0Var);
            } else if (yo0Var.m3093try() && ((yo0.Celse) yo0Var).f6027for.equals("noscript")) {
                ro0Var.m2349volatile();
                ro0Var.f4170class = so0.f4489new;
            } else if (!so0.m2519do(yo0Var) && !yo0Var.m3091if() && (!yo0Var.m3087case() || !bo0.m254new(((yo0.Cgoto) yo0Var).f6027for, Cdefault.f4502case))) {
                if (yo0Var.m3093try() && ((yo0.Celse) yo0Var).f6027for.equals("br")) {
                    ro0Var.m2342super(this);
                    yo0.Cfor cfor = new yo0.Cfor();
                    cfor.f6018if = yo0Var.toString();
                    ro0Var.insert(cfor);
                    return true;
                } else if ((yo0Var.m3087case() && bo0.m254new(((yo0.Cgoto) yo0Var).f6027for, Cdefault.f4516implements)) || yo0Var.m3093try()) {
                    ro0Var.m2342super(this);
                    return false;
                } else {
                    ro0Var.m2342super(this);
                    yo0.Cfor cfor2 = new yo0.Cfor();
                    cfor2.f6018if = yo0Var.toString();
                    ro0Var.insert(cfor2);
                    return true;
                }
            } else {
                so0 so0Var2 = so0.f4489new;
                ro0Var.f734else = yo0Var;
                return so0Var2.mo2521for(yo0Var, ro0Var);
            }
            return true;
        }
    };

    /* renamed from: case  reason: not valid java name */
    public static final so0 f4475case = new so0("AfterHead", 5) { // from class: com.apk.so0.return
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (so0.m2519do(yo0Var)) {
                ro0Var.insert((yo0.Cfor) yo0Var);
                return true;
            } else if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
                return true;
            } else if (yo0Var.m3090for()) {
                ro0Var.m2342super(this);
                return true;
            } else if (yo0Var.m3087case()) {
                yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                String str = cgoto.f6027for;
                if (str.equals("html")) {
                    so0 so0Var = so0.f4481else;
                    ro0Var.f734else = yo0Var;
                    return so0Var.mo2521for(yo0Var, ro0Var);
                } else if (str.equals("body")) {
                    ro0Var.insert(cgoto);
                    ro0Var.f4178static = false;
                    ro0Var.f4170class = so0.f4481else;
                    return true;
                } else if (str.equals("frameset")) {
                    ro0Var.insert(cgoto);
                    ro0Var.f4170class = so0.f4490public;
                    return true;
                } else if (bo0.m254new(str, Cdefault.f4509else)) {
                    ro0Var.m2342super(this);
                    jo0 jo0Var = ro0Var.f4179super;
                    ro0Var.f740try.add(jo0Var);
                    so0 so0Var2 = so0.f4489new;
                    ro0Var.f734else = yo0Var;
                    so0Var2.mo2521for(yo0Var, ro0Var);
                    ro0Var.a(jo0Var);
                    return true;
                } else if (str.equals("head")) {
                    ro0Var.m2342super(this);
                    return false;
                } else {
                    m2526new(yo0Var, ro0Var);
                    return true;
                }
            } else if (yo0Var.m3093try()) {
                String str2 = ((yo0.Celse) yo0Var).f6027for;
                if (bo0.m254new(str2, Cdefault.f4521new)) {
                    m2526new(yo0Var, ro0Var);
                    return true;
                } else if (str2.equals("template")) {
                    so0 so0Var3 = so0.f4489new;
                    ro0Var.f734else = yo0Var;
                    so0Var3.mo2521for(yo0Var, ro0Var);
                    return true;
                } else {
                    ro0Var.m2342super(this);
                    return false;
                }
            } else {
                m2526new(yo0Var, ro0Var);
                return true;
            }
        }

        /* renamed from: new  reason: not valid java name */
        public final boolean m2526new(yo0 yo0Var, ro0 ro0Var) {
            ro0Var.m386case("body");
            ro0Var.f4178static = true;
            ro0Var.f734else = yo0Var;
            return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
        }
    };

    /* renamed from: else  reason: not valid java name */
    public static final so0 f4481else = new so0("InBody", 6) { // from class: com.apk.so0.static
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Can't wrap try/catch for region: R(14:87|(5:89|(1:91)|92|(2:94|95)(1:(11:114|115|(2:117|(3:119|(1:121)|122)(3:123|(1:125)|126))|127|(1:143)(1:130)|131|132|133|134|(2:136|137)(2:139|140)|138)(10:98|(1:100)(1:113)|101|(1:103)(1:112)|104|(1:106)|107|(1:109)|110|111))|96)|144|115|(0)|127|(0)|143|131|132|133|134|(0)(0)|138) */
        /* JADX WARN: Code restructure failed: missing block: B:230:0x03f5, code lost:
            r32.f4174import.add(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:284:0x04e8, code lost:
            if (r4.equals("image") != false) goto L590;
         */
        /* JADX WARN: Removed duplicated region for block: B:184:0x0302  */
        /* JADX WARN: Removed duplicated region for block: B:212:0x037e  */
        /* JADX WARN: Removed duplicated region for block: B:233:0x0406  */
        /* JADX WARN: Removed duplicated region for block: B:234:0x0408  */
        /* JADX WARN: Removed duplicated region for block: B:649:0x02f6 A[SYNTHETIC] */
        @Override // com.apk.so0
        /* renamed from: for */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo2521for(com.apk.yo0 r31, com.apk.ro0 r32) {
            /*
                Method dump skipped, instructions count: 3444
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.so0.Cstatic.mo2521for(com.apk.yo0, com.apk.ro0):boolean");
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
            return true;
         */
        /* renamed from: new  reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m2527new(com.apk.yo0 r7, com.apk.ro0 r8) {
            /*
                r6 = this;
                com.apk.yo0$else r7 = (com.apk.yo0.Celse) r7
                java.lang.String r7 = r7.f6027for
                java.util.ArrayList<com.apk.jo0> r0 = r8.f740try
                com.apk.jo0 r1 = r8.m2334native(r7)
                r2 = 0
                if (r1 != 0) goto L11
                r8.m2342super(r6)
                return r2
            L11:
                int r1 = r0.size()
                r3 = 1
                int r1 = r1 - r3
            L17:
                if (r1 < 0) goto L46
                java.lang.Object r4 = r0.get(r1)
                com.apk.jo0 r4 = (com.apk.jo0) r4
                com.apk.xo0 r5 = r4.f2398new
                java.lang.String r5 = r5.f5716if
                boolean r5 = r5.equals(r7)
                if (r5 == 0) goto L39
                r8.m2346throw(r7)
                boolean r0 = r8.m390if(r7)
                if (r0 != 0) goto L35
                r8.m2342super(r6)
            L35:
                r8.m2333interface(r7)
                goto L46
            L39:
                boolean r4 = r8.m2320abstract(r4)
                if (r4 == 0) goto L43
                r8.m2342super(r6)
                return r2
            L43:
                int r1 = r1 + (-1)
                goto L17
            L46:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.so0.Cstatic.m2527new(com.apk.yo0, com.apk.ro0):boolean");
        }
    };

    /* renamed from: goto  reason: not valid java name */
    public static final so0 f4485goto = new so0("Text", 7) { // from class: com.apk.so0.switch
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3088do()) {
                ro0Var.insert((yo0.Cfor) yo0Var);
                return true;
            } else if (yo0Var.m3092new()) {
                ro0Var.m2342super(this);
                ro0Var.m2349volatile();
                so0 so0Var = ro0Var.f4171const;
                ro0Var.f4170class = so0Var;
                ro0Var.f734else = yo0Var;
                return so0Var.mo2521for(yo0Var, ro0Var);
            } else if (yo0Var.m3093try()) {
                ro0Var.m2349volatile();
                ro0Var.f4170class = ro0Var.f4171const;
                return true;
            } else {
                return true;
            }
        }
    };

    /* renamed from: this  reason: not valid java name */
    public static final so0 f4495this = new so0("InTable", 8) { // from class: com.apk.so0.throws
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3088do() && bo0.m254new(ro0Var.m387do().f2398new.f5716if, Cdefault.f4523private)) {
                ro0Var.f4176public = new ArrayList();
                ro0Var.f4171const = ro0Var.f4170class;
                so0 so0Var = so0.f4474break;
                ro0Var.f4170class = so0Var;
                ro0Var.f734else = yo0Var;
                return so0Var.mo2521for(yo0Var, ro0Var);
            } else if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
                return true;
            } else if (yo0Var.m3090for()) {
                ro0Var.m2342super(this);
                return false;
            } else if (yo0Var.m3087case()) {
                yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                String str = cgoto.f6027for;
                if (str.equals("caption")) {
                    ro0Var.m2324const();
                    ro0Var.m2335package();
                    ro0Var.insert(cgoto);
                    ro0Var.f4170class = so0.f4476catch;
                } else if (str.equals("colgroup")) {
                    ro0Var.m2324const();
                    ro0Var.insert(cgoto);
                    ro0Var.f4170class = so0.f4477class;
                } else if (str.equals("col")) {
                    ro0Var.m2324const();
                    ro0Var.m386case("colgroup");
                    ro0Var.f734else = yo0Var;
                    return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                } else if (bo0.m254new(str, Cdefault.f4526return)) {
                    ro0Var.m2324const();
                    ro0Var.insert(cgoto);
                    ro0Var.f4170class = so0.f4478const;
                } else if (bo0.m254new(str, Cdefault.f4527static)) {
                    ro0Var.m2324const();
                    ro0Var.m386case("tbody");
                    ro0Var.f734else = yo0Var;
                    return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                } else if (str.equals("table")) {
                    ro0Var.m2342super(this);
                    if (ro0Var.m2347throws(str)) {
                        ro0Var.m2333interface(str);
                        ro0Var.b();
                        so0 so0Var2 = ro0Var.f4170class;
                        if (so0Var2 == so0.f4495this) {
                            ro0Var.insert(cgoto);
                            return true;
                        }
                        ro0Var.f734else = yo0Var;
                        return so0Var2.mo2521for(yo0Var, ro0Var);
                    }
                    return false;
                } else if (bo0.m254new(str, Cdefault.f4530switch)) {
                    so0 so0Var3 = so0.f4489new;
                    ro0Var.f734else = yo0Var;
                    return so0Var3.mo2521for(yo0Var, ro0Var);
                } else if (str.equals("input")) {
                    if (cgoto.m3109while() && cgoto.f6025class.m493else("type").equalsIgnoreCase("hidden")) {
                        ro0Var.m2325default(cgoto);
                    } else {
                        m2528new(yo0Var, ro0Var);
                        return true;
                    }
                } else if (str.equals("form")) {
                    ro0Var.m2342super(this);
                    if (ro0Var.f4181throw == null) {
                        if (!(ro0Var.m2334native("template") != null)) {
                            ro0Var.m2326extends(cgoto, false, false);
                        }
                    }
                    return false;
                } else {
                    m2528new(yo0Var, ro0Var);
                    return true;
                }
                return true;
            } else if (yo0Var.m3093try()) {
                String str2 = ((yo0.Celse) yo0Var).f6027for;
                if (str2.equals("table")) {
                    if (!ro0Var.m2347throws(str2)) {
                        ro0Var.m2342super(this);
                        return false;
                    }
                    ro0Var.m2333interface("table");
                    ro0Var.b();
                } else if (bo0.m254new(str2, Cdefault.f4522package)) {
                    ro0Var.m2342super(this);
                    return false;
                } else if (str2.equals("template")) {
                    so0 so0Var4 = so0.f4489new;
                    ro0Var.f734else = yo0Var;
                    so0Var4.mo2521for(yo0Var, ro0Var);
                } else {
                    m2528new(yo0Var, ro0Var);
                    return true;
                }
                return true;
            } else if (yo0Var.m3092new()) {
                if (ro0Var.m390if("html")) {
                    ro0Var.m2342super(this);
                }
                return true;
            } else {
                m2528new(yo0Var, ro0Var);
                return true;
            }
        }

        /* renamed from: new  reason: not valid java name */
        public boolean m2528new(yo0 yo0Var, ro0 ro0Var) {
            ro0Var.m2342super(this);
            ro0Var.f4180switch = true;
            so0 so0Var = so0.f4481else;
            ro0Var.f734else = yo0Var;
            so0Var.mo2521for(yo0Var, ro0Var);
            ro0Var.f4180switch = false;
            return true;
        }
    };

    /* renamed from: break  reason: not valid java name */
    public static final so0 f4474break = new so0("InTableText", 9) { // from class: com.apk.so0.do
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.f6010do == yo0.Cbreak.Character) {
                yo0.Cfor cfor = (yo0.Cfor) yo0Var;
                if (cfor.f6018if.equals(so0.f4479default)) {
                    ro0Var.m2342super(this);
                    return false;
                }
                ro0Var.f4176public.add(cfor.f6018if);
                return true;
            }
            if (ro0Var.f4176public.size() > 0) {
                for (String str : ro0Var.f4176public) {
                    if (!bo0.m256try(str)) {
                        ro0Var.m2342super(this);
                        if (bo0.m254new(ro0Var.m387do().f2398new.f5716if, Cdefault.f4523private)) {
                            ro0Var.f4180switch = true;
                            yo0.Cfor cfor2 = new yo0.Cfor();
                            cfor2.f6018if = str;
                            so0 so0Var = so0.f4481else;
                            ro0Var.f734else = cfor2;
                            so0Var.mo2521for(cfor2, ro0Var);
                            ro0Var.f4180switch = false;
                        } else {
                            yo0.Cfor cfor3 = new yo0.Cfor();
                            cfor3.f6018if = str;
                            so0 so0Var2 = so0.f4481else;
                            ro0Var.f734else = cfor3;
                            so0Var2.mo2521for(cfor3, ro0Var);
                        }
                    } else {
                        yo0.Cfor cfor4 = new yo0.Cfor();
                        cfor4.f6018if = str;
                        ro0Var.insert(cfor4);
                    }
                }
                ro0Var.f4176public = new ArrayList();
            }
            so0 so0Var3 = ro0Var.f4171const;
            ro0Var.f4170class = so0Var3;
            ro0Var.f734else = yo0Var;
            return so0Var3.mo2521for(yo0Var, ro0Var);
        }
    };

    /* renamed from: catch  reason: not valid java name */
    public static final so0 f4476catch = new so0("InCaption", 10) { // from class: com.apk.so0.if
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3093try()) {
                yo0.Celse celse = (yo0.Celse) yo0Var;
                if (celse.f6027for.equals("caption")) {
                    if (!ro0Var.m2347throws(celse.f6027for)) {
                        ro0Var.m2342super(this);
                        return false;
                    }
                    ro0Var.m2350while(false);
                    if (!ro0Var.m390if("caption")) {
                        ro0Var.m2342super(this);
                    }
                    ro0Var.m2333interface("caption");
                    ro0Var.m2321break();
                    ro0Var.f4170class = so0.f4495this;
                    return true;
                }
            }
            if ((yo0Var.m3087case() && bo0.m254new(((yo0.Cgoto) yo0Var).f6027for, Cdefault.f4512finally)) || (yo0Var.m3093try() && ((yo0.Celse) yo0Var).f6027for.equals("table"))) {
                ro0Var.m2342super(this);
                if (ro0Var.m392try("caption")) {
                    ro0Var.f734else = yo0Var;
                    return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                }
                return true;
            } else if (yo0Var.m3093try() && bo0.m254new(((yo0.Celse) yo0Var).f6027for, Cdefault.f4518instanceof)) {
                ro0Var.m2342super(this);
                return false;
            } else {
                so0 so0Var = so0.f4481else;
                ro0Var.f734else = yo0Var;
                return so0Var.mo2521for(yo0Var, ro0Var);
            }
        }
    };

    /* renamed from: class  reason: not valid java name */
    public static final so0 f4477class = new so0("InColumnGroup", 11) { // from class: com.apk.so0.for
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (so0.m2519do(yo0Var)) {
                ro0Var.insert((yo0.Cfor) yo0Var);
                return true;
            }
            int ordinal = yo0Var.f6010do.ordinal();
            if (ordinal != 0) {
                char c = 65535;
                if (ordinal == 1) {
                    yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                    String str = cgoto.f6027for;
                    int hashCode = str.hashCode();
                    if (hashCode != -1321546630) {
                        if (hashCode != 98688) {
                            if (hashCode == 3213227 && str.equals("html")) {
                                c = 0;
                            }
                        } else if (str.equals("col")) {
                            c = 1;
                        }
                    } else if (str.equals("template")) {
                        c = 2;
                    }
                    if (c == 0) {
                        so0 so0Var = so0.f4481else;
                        ro0Var.f734else = yo0Var;
                        return so0Var.mo2521for(yo0Var, ro0Var);
                    } else if (c == 1) {
                        ro0Var.m2325default(cgoto);
                    } else if (c != 2) {
                        return m2522new(yo0Var, ro0Var);
                    } else {
                        so0 so0Var2 = so0.f4489new;
                        ro0Var.f734else = yo0Var;
                        so0Var2.mo2521for(yo0Var, ro0Var);
                    }
                } else if (ordinal == 2) {
                    String str2 = ((yo0.Celse) yo0Var).f6027for;
                    int hashCode2 = str2.hashCode();
                    if (hashCode2 != -1321546630) {
                        if (hashCode2 == -636197633 && str2.equals("colgroup")) {
                            c = 0;
                        }
                    } else if (str2.equals("template")) {
                        c = 1;
                    }
                    if (c != 0) {
                        if (c != 1) {
                            return m2522new(yo0Var, ro0Var);
                        }
                        so0 so0Var3 = so0.f4489new;
                        ro0Var.f734else = yo0Var;
                        so0Var3.mo2521for(yo0Var, ro0Var);
                    } else if (!ro0Var.m390if(str2)) {
                        ro0Var.m2342super(this);
                        return false;
                    } else {
                        ro0Var.m2349volatile();
                        ro0Var.f4170class = so0.f4495this;
                    }
                } else if (ordinal != 3) {
                    if (ordinal != 5) {
                        return m2522new(yo0Var, ro0Var);
                    }
                    if (ro0Var.m390if("html")) {
                        return true;
                    }
                    return m2522new(yo0Var, ro0Var);
                } else {
                    ro0Var.insert((yo0.Cnew) yo0Var);
                }
            } else {
                ro0Var.m2342super(this);
            }
            return true;
        }

        /* renamed from: new  reason: not valid java name */
        public final boolean m2522new(yo0 yo0Var, ro0 ro0Var) {
            if (!ro0Var.m390if("colgroup")) {
                ro0Var.m2342super(this);
                return false;
            }
            ro0Var.m2349volatile();
            so0 so0Var = so0.f4495this;
            ro0Var.f4170class = so0Var;
            ro0Var.f734else = yo0Var;
            so0Var.mo2521for(yo0Var, ro0Var);
            return true;
        }
    };

    /* renamed from: const  reason: not valid java name */
    public static final so0 f4478const = new so0("InTableBody", 12) { // from class: com.apk.so0.new
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            int ordinal = yo0Var.f6010do.ordinal();
            if (ordinal == 1) {
                yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                String str = cgoto.f6027for;
                if (str.equals("tr")) {
                    ro0Var.m2323class();
                    ro0Var.insert(cgoto);
                    ro0Var.f4170class = so0.f4483final;
                } else if (bo0.m254new(str, Cdefault.f4534throws)) {
                    ro0Var.m2342super(this);
                    ro0Var.m386case("tr");
                    ro0Var.f734else = cgoto;
                    return ro0Var.f4170class.mo2521for(cgoto, ro0Var);
                } else if (bo0.m254new(str, Cdefault.f4500abstract)) {
                    return m2525try(yo0Var, ro0Var);
                } else {
                    return m2524new(yo0Var, ro0Var);
                }
            } else if (ordinal != 2) {
                return m2524new(yo0Var, ro0Var);
            } else {
                String str2 = ((yo0.Celse) yo0Var).f6027for;
                if (bo0.m254new(str2, Cdefault.f4535transient)) {
                    if (!ro0Var.m2347throws(str2)) {
                        ro0Var.m2342super(this);
                        return false;
                    }
                    ro0Var.m2323class();
                    ro0Var.m2349volatile();
                    ro0Var.f4170class = so0.f4495this;
                } else if (str2.equals("table")) {
                    return m2525try(yo0Var, ro0Var);
                } else {
                    if (bo0.m254new(str2, Cdefault.f4506continue)) {
                        ro0Var.m2342super(this);
                        return false;
                    }
                    return m2524new(yo0Var, ro0Var);
                }
            }
            return true;
        }

        /* renamed from: new  reason: not valid java name */
        public final boolean m2524new(yo0 yo0Var, ro0 ro0Var) {
            so0 so0Var = so0.f4495this;
            ro0Var.f734else = yo0Var;
            return so0Var.mo2521for(yo0Var, ro0Var);
        }

        /* renamed from: try  reason: not valid java name */
        public final boolean m2525try(yo0 yo0Var, ro0 ro0Var) {
            if (!ro0Var.m2347throws("tbody") && !ro0Var.m2347throws("thead") && !ro0Var.m2339return("tfoot")) {
                ro0Var.m2342super(this);
                return false;
            }
            ro0Var.m2323class();
            ro0Var.m392try(ro0Var.m387do().f2398new.f5716if);
            ro0Var.f734else = yo0Var;
            return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
        }
    };

    /* renamed from: final  reason: not valid java name */
    public static final so0 f4483final = new so0("InRow", 13) { // from class: com.apk.so0.try
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3087case()) {
                yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                String str = cgoto.f6027for;
                if (bo0.m254new(str, Cdefault.f4534throws)) {
                    ro0Var.m2327final();
                    ro0Var.insert(cgoto);
                    ro0Var.f4170class = so0.f4493super;
                    ro0Var.m2335package();
                    return true;
                } else if (bo0.m254new(str, Cdefault.f4528strictfp)) {
                    if (ro0Var.m392try("tr")) {
                        ro0Var.f734else = yo0Var;
                        return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                    }
                    return false;
                } else {
                    return m2529new(yo0Var, ro0Var);
                }
            } else if (yo0Var.m3093try()) {
                String str2 = ((yo0.Celse) yo0Var).f6027for;
                if (str2.equals("tr")) {
                    if (!ro0Var.m2347throws(str2)) {
                        ro0Var.m2342super(this);
                        return false;
                    }
                    ro0Var.m2327final();
                    ro0Var.m2349volatile();
                    ro0Var.f4170class = so0.f4478const;
                    return true;
                } else if (str2.equals("table")) {
                    if (ro0Var.m392try("tr")) {
                        ro0Var.f734else = yo0Var;
                        return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                    }
                    return false;
                } else if (bo0.m254new(str2, Cdefault.f4526return)) {
                    if (ro0Var.m2347throws(str2) && ro0Var.m2347throws("tr")) {
                        ro0Var.m2327final();
                        ro0Var.m2349volatile();
                        ro0Var.f4170class = so0.f4478const;
                        return true;
                    }
                    ro0Var.m2342super(this);
                    return false;
                } else if (bo0.m254new(str2, Cdefault.f4537volatile)) {
                    ro0Var.m2342super(this);
                    return false;
                } else {
                    return m2529new(yo0Var, ro0Var);
                }
            } else {
                return m2529new(yo0Var, ro0Var);
            }
        }

        /* renamed from: new  reason: not valid java name */
        public final boolean m2529new(yo0 yo0Var, ro0 ro0Var) {
            so0 so0Var = so0.f4495this;
            ro0Var.f734else = yo0Var;
            return so0Var.mo2521for(yo0Var, ro0Var);
        }
    };

    /* renamed from: super  reason: not valid java name */
    public static final so0 f4493super = new so0("InCell", 14) { // from class: com.apk.so0.case
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3093try()) {
                String str = ((yo0.Celse) yo0Var).f6027for;
                if (bo0.m254new(str, Cdefault.f4534throws)) {
                    if (!ro0Var.m2347throws(str)) {
                        ro0Var.m2342super(this);
                        ro0Var.f4170class = so0.f4483final;
                        return false;
                    }
                    ro0Var.m2350while(false);
                    if (!ro0Var.m390if(str)) {
                        ro0Var.m2342super(this);
                    }
                    ro0Var.m2333interface(str);
                    ro0Var.m2321break();
                    ro0Var.f4170class = so0.f4483final;
                    return true;
                } else if (bo0.m254new(str, Cdefault.f4507default)) {
                    ro0Var.m2342super(this);
                    return false;
                } else if (bo0.m254new(str, Cdefault.f4510extends)) {
                    if (!ro0Var.m2347throws(str)) {
                        ro0Var.m2342super(this);
                        return false;
                    }
                    if (ro0Var.m2347throws("td")) {
                        ro0Var.m392try("td");
                    } else {
                        ro0Var.m392try("th");
                    }
                    ro0Var.f734else = yo0Var;
                    return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                } else {
                    so0 so0Var = so0.f4481else;
                    ro0Var.f734else = yo0Var;
                    return so0Var.mo2521for(yo0Var, ro0Var);
                }
            } else if (yo0Var.m3087case() && bo0.m254new(((yo0.Cgoto) yo0Var).f6027for, Cdefault.f4512finally)) {
                if (!ro0Var.m2347throws("td") && !ro0Var.m2347throws("th")) {
                    ro0Var.m2342super(this);
                    return false;
                }
                if (ro0Var.m2347throws("td")) {
                    ro0Var.m392try("td");
                } else {
                    ro0Var.m392try("th");
                }
                ro0Var.f734else = yo0Var;
                return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
            } else {
                so0 so0Var2 = so0.f4481else;
                ro0Var.f734else = yo0Var;
                return so0Var2.mo2521for(yo0Var, ro0Var);
            }
        }
    };

    /* renamed from: throw  reason: not valid java name */
    public static final so0 f4496throw = new so0("InSelect", 15) { // from class: com.apk.so0.else
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            int ordinal = yo0Var.f6010do.ordinal();
            if (ordinal == 0) {
                ro0Var.m2342super(this);
                return false;
            }
            if (ordinal == 1) {
                yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                String str = cgoto.f6027for;
                if (str.equals("html")) {
                    so0 so0Var = so0.f4481else;
                    ro0Var.f734else = cgoto;
                    return so0Var.mo2521for(cgoto, ro0Var);
                } else if (str.equals("option")) {
                    if (ro0Var.m390if("option")) {
                        ro0Var.m392try("option");
                    }
                    ro0Var.insert(cgoto);
                } else if (str.equals("optgroup")) {
                    if (ro0Var.m390if("option")) {
                        ro0Var.m392try("option");
                    }
                    if (ro0Var.m390if("optgroup")) {
                        ro0Var.m392try("optgroup");
                    }
                    ro0Var.insert(cgoto);
                } else if (str.equals("select")) {
                    ro0Var.m2342super(this);
                    return ro0Var.m392try("select");
                } else if (bo0.m254new(str, Cdefault.f4519interface)) {
                    ro0Var.m2342super(this);
                    if (ro0Var.m2340static("select")) {
                        ro0Var.m392try("select");
                        ro0Var.f734else = cgoto;
                        return ro0Var.f4170class.mo2521for(cgoto, ro0Var);
                    }
                    return false;
                } else if (!str.equals("script") && !str.equals("template")) {
                    ro0Var.m2342super(this);
                    return false;
                } else {
                    so0 so0Var2 = so0.f4489new;
                    ro0Var.f734else = yo0Var;
                    return so0Var2.mo2521for(yo0Var, ro0Var);
                }
            } else if (ordinal == 2) {
                String str2 = ((yo0.Celse) yo0Var).f6027for;
                char c = 65535;
                switch (str2.hashCode()) {
                    case -1321546630:
                        if (str2.equals("template")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1010136971:
                        if (str2.equals("option")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -906021636:
                        if (str2.equals("select")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -80773204:
                        if (str2.equals("optgroup")) {
                            c = 0;
                            break;
                        }
                        break;
                }
                if (c == 0) {
                    if (ro0Var.m390if("option") && ro0Var.m2329goto(ro0Var.m387do()) != null && ro0Var.m2329goto(ro0Var.m387do()).f2398new.f5716if.equals("optgroup")) {
                        ro0Var.m392try("option");
                    }
                    if (ro0Var.m390if("optgroup")) {
                        ro0Var.m2349volatile();
                    } else {
                        ro0Var.m2342super(this);
                    }
                } else if (c != 1) {
                    if (c != 2) {
                        if (c != 3) {
                            ro0Var.m2342super(this);
                            return false;
                        }
                        so0 so0Var3 = so0.f4489new;
                        ro0Var.f734else = yo0Var;
                        return so0Var3.mo2521for(yo0Var, ro0Var);
                    } else if (!ro0Var.m2340static(str2)) {
                        ro0Var.m2342super(this);
                        return false;
                    } else {
                        ro0Var.m2333interface(str2);
                        ro0Var.b();
                    }
                } else if (ro0Var.m390if("option")) {
                    ro0Var.m2349volatile();
                } else {
                    ro0Var.m2342super(this);
                }
            } else if (ordinal == 3) {
                ro0Var.insert((yo0.Cnew) yo0Var);
            } else if (ordinal == 4) {
                yo0.Cfor cfor = (yo0.Cfor) yo0Var;
                if (cfor.f6018if.equals(so0.f4479default)) {
                    ro0Var.m2342super(this);
                    return false;
                }
                ro0Var.insert(cfor);
            } else if (ordinal != 5) {
                ro0Var.m2342super(this);
                return false;
            } else if (!ro0Var.m390if("html")) {
                ro0Var.m2342super(this);
            }
            return true;
        }
    };

    /* renamed from: while  reason: not valid java name */
    public static final so0 f4499while = new so0("InSelectInTable", 16) { // from class: com.apk.so0.goto
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3087case() && bo0.m254new(((yo0.Cgoto) yo0Var).f6027for, Cdefault.f4524protected)) {
                ro0Var.m2342super(this);
                ro0Var.m2333interface("select");
                ro0Var.b();
                ro0Var.f734else = yo0Var;
                return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
            }
            if (yo0Var.m3093try()) {
                yo0.Celse celse = (yo0.Celse) yo0Var;
                if (bo0.m254new(celse.f6027for, Cdefault.f4524protected)) {
                    ro0Var.m2342super(this);
                    if (ro0Var.m2347throws(celse.f6027for)) {
                        ro0Var.m2333interface("select");
                        ro0Var.b();
                        ro0Var.f734else = yo0Var;
                        return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                    }
                    return false;
                }
            }
            so0 so0Var = so0.f4496throw;
            ro0Var.f734else = yo0Var;
            return so0Var.mo2521for(yo0Var, ro0Var);
        }
    };

    /* renamed from: import  reason: not valid java name */
    public static final so0 f4487import = new so0("InTemplate", 17) { // from class: com.apk.so0.this
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            int ordinal = yo0Var.f6010do.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3 && ordinal != 4) {
                            if (ordinal == 5) {
                                if (ro0Var.m2334native("template") != null) {
                                    ro0Var.m2342super(this);
                                    ro0Var.m2333interface("template");
                                    ro0Var.m2321break();
                                    ro0Var.m2337protected();
                                    ro0Var.b();
                                    if (ro0Var.f4170class == so0.f4487import || ro0Var.f4175native.size() >= 12) {
                                        return true;
                                    }
                                    ro0Var.f734else = yo0Var;
                                    return ro0Var.f4170class.mo2521for(yo0Var, ro0Var);
                                }
                                return true;
                            }
                        }
                    } else if (((yo0.Celse) yo0Var).f6027for.equals("template")) {
                        so0 so0Var = so0.f4489new;
                        ro0Var.f734else = yo0Var;
                        so0Var.mo2521for(yo0Var, ro0Var);
                    } else {
                        ro0Var.m2342super(this);
                        return false;
                    }
                } else {
                    String str = ((yo0.Cgoto) yo0Var).f6027for;
                    if (bo0.m254new(str, Cdefault.f4531synchronized)) {
                        so0 so0Var2 = so0.f4489new;
                        ro0Var.f734else = yo0Var;
                        so0Var2.mo2521for(yo0Var, ro0Var);
                    } else if (bo0.m254new(str, Cdefault.f11102a)) {
                        ro0Var.m2337protected();
                        ro0Var.f4175native.add(so0.f4495this);
                        so0 so0Var3 = so0.f4495this;
                        ro0Var.f4170class = so0Var3;
                        ro0Var.f734else = yo0Var;
                        return so0Var3.mo2521for(yo0Var, ro0Var);
                    } else if (str.equals("col")) {
                        ro0Var.m2337protected();
                        ro0Var.f4175native.add(so0.f4477class);
                        so0 so0Var4 = so0.f4477class;
                        ro0Var.f4170class = so0Var4;
                        ro0Var.f734else = yo0Var;
                        return so0Var4.mo2521for(yo0Var, ro0Var);
                    } else if (str.equals("tr")) {
                        ro0Var.m2337protected();
                        ro0Var.f4175native.add(so0.f4478const);
                        so0 so0Var5 = so0.f4478const;
                        ro0Var.f4170class = so0Var5;
                        ro0Var.f734else = yo0Var;
                        return so0Var5.mo2521for(yo0Var, ro0Var);
                    } else if (!str.equals("td") && !str.equals("th")) {
                        ro0Var.m2337protected();
                        ro0Var.f4175native.add(so0.f4481else);
                        so0 so0Var6 = so0.f4481else;
                        ro0Var.f4170class = so0Var6;
                        ro0Var.f734else = yo0Var;
                        return so0Var6.mo2521for(yo0Var, ro0Var);
                    } else {
                        ro0Var.m2337protected();
                        ro0Var.f4175native.add(so0.f4483final);
                        so0 so0Var7 = so0.f4483final;
                        ro0Var.f4170class = so0Var7;
                        ro0Var.f734else = yo0Var;
                        return so0Var7.mo2521for(yo0Var, ro0Var);
                    }
                }
                return true;
            }
            so0 so0Var8 = so0.f4481else;
            ro0Var.f734else = yo0Var;
            so0Var8.mo2521for(yo0Var, ro0Var);
            return true;
        }
    };

    /* renamed from: native  reason: not valid java name */
    public static final so0 f4488native = new so0("AfterBody", 18) { // from class: com.apk.so0.break
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (so0.m2519do(yo0Var)) {
                ro0Var.insert((yo0.Cfor) yo0Var);
                return true;
            } else if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
                return true;
            } else if (yo0Var.m3090for()) {
                ro0Var.m2342super(this);
                return false;
            } else if (yo0Var.m3087case() && ((yo0.Cgoto) yo0Var).f6027for.equals("html")) {
                so0 so0Var = so0.f4481else;
                ro0Var.f734else = yo0Var;
                return so0Var.mo2521for(yo0Var, ro0Var);
            } else if (yo0Var.m3093try() && ((yo0.Celse) yo0Var).f6027for.equals("html")) {
                if (ro0Var.f4182throws) {
                    ro0Var.m2342super(this);
                    return false;
                }
                ro0Var.f4170class = so0.f4492static;
                return true;
            } else if (yo0Var.m3092new()) {
                return true;
            } else {
                ro0Var.m2342super(this);
                so0 so0Var2 = so0.f4481else;
                ro0Var.f4170class = so0Var2;
                ro0Var.f734else = yo0Var;
                return so0Var2.mo2521for(yo0Var, ro0Var);
            }
        }
    };

    /* renamed from: public  reason: not valid java name */
    public static final so0 f4490public = new so0("InFrameset", 19) { // from class: com.apk.so0.class
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (so0.m2519do(yo0Var)) {
                ro0Var.insert((yo0.Cfor) yo0Var);
            } else if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
            } else if (yo0Var.m3090for()) {
                ro0Var.m2342super(this);
                return false;
            } else if (yo0Var.m3087case()) {
                yo0.Cgoto cgoto = (yo0.Cgoto) yo0Var;
                String str = cgoto.f6027for;
                char c = 65535;
                switch (str.hashCode()) {
                    case -1644953643:
                        if (str.equals("frameset")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3213227:
                        if (str.equals("html")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 97692013:
                        if (str.equals("frame")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1192721831:
                        if (str.equals("noframes")) {
                            c = 3;
                            break;
                        }
                        break;
                }
                if (c == 0) {
                    so0 so0Var = so0.f4481else;
                    ro0Var.f734else = cgoto;
                    return so0Var.mo2521for(cgoto, ro0Var);
                } else if (c == 1) {
                    ro0Var.insert(cgoto);
                } else if (c != 2) {
                    if (c != 3) {
                        ro0Var.m2342super(this);
                        return false;
                    }
                    so0 so0Var2 = so0.f4489new;
                    ro0Var.f734else = cgoto;
                    return so0Var2.mo2521for(cgoto, ro0Var);
                } else {
                    ro0Var.m2325default(cgoto);
                }
            } else if (yo0Var.m3093try() && ((yo0.Celse) yo0Var).f6027for.equals("frameset")) {
                if (ro0Var.m390if("html")) {
                    ro0Var.m2342super(this);
                    return false;
                }
                ro0Var.m2349volatile();
                if (!ro0Var.f4182throws && !ro0Var.m390if("frameset")) {
                    ro0Var.f4170class = so0.f4491return;
                }
            } else if (yo0Var.m3092new()) {
                if (!ro0Var.m390if("html")) {
                    ro0Var.m2342super(this);
                }
            } else {
                ro0Var.m2342super(this);
                return false;
            }
            return true;
        }
    };

    /* renamed from: return  reason: not valid java name */
    public static final so0 f4491return = new so0("AfterFrameset", 20) { // from class: com.apk.so0.const
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (so0.m2519do(yo0Var)) {
                ro0Var.insert((yo0.Cfor) yo0Var);
                return true;
            } else if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
                return true;
            } else if (yo0Var.m3090for()) {
                ro0Var.m2342super(this);
                return false;
            } else if (yo0Var.m3087case() && ((yo0.Cgoto) yo0Var).f6027for.equals("html")) {
                so0 so0Var = so0.f4481else;
                ro0Var.f734else = yo0Var;
                return so0Var.mo2521for(yo0Var, ro0Var);
            } else if (yo0Var.m3093try() && ((yo0.Celse) yo0Var).f6027for.equals("html")) {
                ro0Var.f4170class = so0.f4494switch;
                return true;
            } else if (yo0Var.m3087case() && ((yo0.Cgoto) yo0Var).f6027for.equals("noframes")) {
                so0 so0Var2 = so0.f4489new;
                ro0Var.f734else = yo0Var;
                return so0Var2.mo2521for(yo0Var, ro0Var);
            } else if (yo0Var.m3092new()) {
                return true;
            } else {
                ro0Var.m2342super(this);
                return false;
            }
        }
    };

    /* renamed from: static  reason: not valid java name */
    public static final so0 f4492static = new so0("AfterAfterBody", 21) { // from class: com.apk.so0.final
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
                return true;
            } else if (!yo0Var.m3090for() && (!yo0Var.m3087case() || !((yo0.Cgoto) yo0Var).f6027for.equals("html"))) {
                if (so0.m2519do(yo0Var)) {
                    jo0 m2333interface = ro0Var.m2333interface("html");
                    ro0Var.insert((yo0.Cfor) yo0Var);
                    if (m2333interface != null) {
                        ro0Var.f740try.add(m2333interface);
                        jo0 d = m2333interface.d("body");
                        if (d != null) {
                            ro0Var.f740try.add(d);
                            return true;
                        }
                        return true;
                    }
                    return true;
                } else if (yo0Var.m3092new()) {
                    return true;
                } else {
                    ro0Var.m2342super(this);
                    so0 so0Var = so0.f4481else;
                    ro0Var.f4170class = so0Var;
                    ro0Var.f734else = yo0Var;
                    return so0Var.mo2521for(yo0Var, ro0Var);
                }
            } else {
                so0 so0Var2 = so0.f4481else;
                ro0Var.f734else = yo0Var;
                return so0Var2.mo2521for(yo0Var, ro0Var);
            }
        }
    };

    /* renamed from: switch  reason: not valid java name */
    public static final so0 f4494switch = new so0("AfterAfterFrameset", 22) { // from class: com.apk.so0.super
        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
                return true;
            } else if (!yo0Var.m3090for() && !so0.m2519do(yo0Var) && (!yo0Var.m3087case() || !((yo0.Cgoto) yo0Var).f6027for.equals("html"))) {
                if (yo0Var.m3092new()) {
                    return true;
                }
                if (yo0Var.m3087case() && ((yo0.Cgoto) yo0Var).f6027for.equals("noframes")) {
                    so0 so0Var = so0.f4489new;
                    ro0Var.f734else = yo0Var;
                    return so0Var.mo2521for(yo0Var, ro0Var);
                }
                ro0Var.m2342super(this);
                return false;
            } else {
                so0 so0Var2 = so0.f4481else;
                ro0Var.f734else = yo0Var;
                return so0Var2.mo2521for(yo0Var, ro0Var);
            }
        }
    };

    /* compiled from: HtmlTreeBuilderState.java */
    /* renamed from: com.apk.so0$catch  reason: invalid class name */
    /* loaded from: classes7.dex */
    public enum Ccatch extends so0 {
        public Ccatch(String str, int i) {
            super(str, i, null);
        }

        @Override // com.apk.so0
        /* renamed from: for */
        public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
            if (so0.m2519do(yo0Var)) {
                return true;
            }
            if (yo0Var.m3091if()) {
                ro0Var.insert((yo0.Cnew) yo0Var);
            } else if (yo0Var.m3090for()) {
                yo0.Ctry ctry = (yo0.Ctry) yo0Var;
                vo0 vo0Var = ro0Var.f736goto;
                String sb = ctry.f6035if.toString();
                if (vo0Var != null) {
                    String trim = sb.trim();
                    if (!vo0Var.f5185do) {
                        trim = sb0.m2437volatile(trim);
                    }
                    io0 io0Var = new io0(trim, ctry.f6036new.toString(), ctry.f6037try.toString());
                    String str = ctry.f6034for;
                    if (str != null) {
                        io0Var.m1739abstract("pubSysKey", str);
                    }
                    ro0Var.f738new.m1374abstract(io0Var);
                    if (ctry.f6033case) {
                        ro0Var.f738new.f1910class = ho0.Cif.quirks;
                    }
                    ro0Var.f4170class = so0.f4486if;
                } else {
                    throw null;
                }
            } else {
                so0 so0Var = so0.f4486if;
                ro0Var.f4170class = so0Var;
                ro0Var.f734else = yo0Var;
                return so0Var.mo2521for(yo0Var, ro0Var);
            }
            return true;
        }
    }

    /* compiled from: HtmlTreeBuilderState.java */
    /* renamed from: com.apk.so0$default  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdefault {

        /* renamed from: do  reason: not valid java name */
        public static final String[] f4508do = {"base", "basefont", "bgsound", "command", "link"};

        /* renamed from: if  reason: not valid java name */
        public static final String[] f4515if = {"noframes", "style"};

        /* renamed from: for  reason: not valid java name */
        public static final String[] f4513for = {"body", "br", "html"};

        /* renamed from: new  reason: not valid java name */
        public static final String[] f4521new = {"body", "br", "html"};

        /* renamed from: try  reason: not valid java name */
        public static final String[] f4536try = {"body", "br", "head", "html"};

        /* renamed from: case  reason: not valid java name */
        public static final String[] f4502case = {"basefont", "bgsound", "link", TTDownloadField.TT_META, "noframes", "style"};

        /* renamed from: else  reason: not valid java name */
        public static final String[] f4509else = {"base", "basefont", "bgsound", "command", "link", TTDownloadField.TT_META, "noframes", "script", "style", "template", NotificationCompatJellybean.KEY_TITLE};

        /* renamed from: goto  reason: not valid java name */
        public static final String[] f4514goto = {"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", SupportMenuInflater.XML_MENU, "nav", "ol", com.umeng.analytics.pro.ak.ax, "section", "summary", "ul"};

        /* renamed from: this  reason: not valid java name */
        public static final String[] f4532this = {"h1", "h2", "h3", "h4", "h5", "h6"};

        /* renamed from: break  reason: not valid java name */
        public static final String[] f4501break = {"address", "div", com.umeng.analytics.pro.ak.ax};

        /* renamed from: catch  reason: not valid java name */
        public static final String[] f4503catch = {"dd", "dt"};

        /* renamed from: class  reason: not valid java name */
        public static final String[] f4504class = {"b", "big", PluginConstants.KEY_ERROR_CODE, "em", "font", com.umeng.analytics.pro.ak.aC, com.umeng.analytics.pro.ak.aB, "small", "strike", "strong", "tt", com.umeng.analytics.pro.ak.aG};

        /* renamed from: const  reason: not valid java name */
        public static final String[] f4505const = {"applet", "marquee", "object"};

        /* renamed from: final  reason: not valid java name */
        public static final String[] f4511final = {"area", "br", "embed", "img", "keygen", "wbr"};

        /* renamed from: super  reason: not valid java name */
        public static final String[] f4529super = {"param", "source", "track"};

        /* renamed from: throw  reason: not valid java name */
        public static final String[] f4533throw = {"action", "name", "prompt"};

        /* renamed from: while  reason: not valid java name */
        public static final String[] f4538while = {"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: import  reason: not valid java name */
        public static final String[] f4517import = {"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", SupportMenuInflater.XML_MENU, "nav", "ol", "pre", "section", "summary", "ul"};

        /* renamed from: native  reason: not valid java name */
        public static final String[] f4520native = {"a", "b", "big", PluginConstants.KEY_ERROR_CODE, "em", "font", com.umeng.analytics.pro.ak.aC, "nobr", com.umeng.analytics.pro.ak.aB, "small", "strike", "strong", "tt", com.umeng.analytics.pro.ak.aG};

        /* renamed from: public  reason: not valid java name */
        public static final String[] f4525public = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: return  reason: not valid java name */
        public static final String[] f4526return = {"tbody", "tfoot", "thead"};

        /* renamed from: static  reason: not valid java name */
        public static final String[] f4527static = {"td", "th", "tr"};

        /* renamed from: switch  reason: not valid java name */
        public static final String[] f4530switch = {"script", "style", "template"};

        /* renamed from: throws  reason: not valid java name */
        public static final String[] f4534throws = {"td", "th"};

        /* renamed from: default  reason: not valid java name */
        public static final String[] f4507default = {"body", "caption", "col", "colgroup", "html"};

        /* renamed from: extends  reason: not valid java name */
        public static final String[] f4510extends = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: finally  reason: not valid java name */
        public static final String[] f4512finally = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: package  reason: not valid java name */
        public static final String[] f4522package = {"body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: private  reason: not valid java name */
        public static final String[] f4523private = {"table", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: abstract  reason: not valid java name */
        public static final String[] f4500abstract = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};

        /* renamed from: continue  reason: not valid java name */
        public static final String[] f4506continue = {"body", "caption", "col", "colgroup", "html", "td", "th", "tr"};

        /* renamed from: strictfp  reason: not valid java name */
        public static final String[] f4528strictfp = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};

        /* renamed from: volatile  reason: not valid java name */
        public static final String[] f4537volatile = {"body", "caption", "col", "colgroup", "html", "td", "th"};

        /* renamed from: interface  reason: not valid java name */
        public static final String[] f4519interface = {"input", "keygen", "textarea"};

        /* renamed from: protected  reason: not valid java name */
        public static final String[] f4524protected = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: transient  reason: not valid java name */
        public static final String[] f4535transient = {"tbody", "tfoot", "thead"};

        /* renamed from: implements  reason: not valid java name */
        public static final String[] f4516implements = {"head", "noscript"};

        /* renamed from: instanceof  reason: not valid java name */
        public static final String[] f4518instanceof = {"body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};

        /* renamed from: synchronized  reason: not valid java name */
        public static final String[] f4531synchronized = {"base", "basefont", "bgsound", "link", TTDownloadField.TT_META, "noframes", "script", "style", "template", NotificationCompatJellybean.KEY_TITLE};

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f11102a = {"caption", "colgroup", "tbody", "tfoot", "thead"};
    }

    static {
        so0 so0Var = new so0("ForeignContent", 23) { // from class: com.apk.so0.throw
            @Override // com.apk.so0
            /* renamed from: for */
            public boolean mo2521for(yo0 yo0Var, ro0 ro0Var) {
                return true;
            }
        };
        f4497throws = so0Var;
        f4482extends = new so0[]{f4480do, f4486if, f4484for, f4489new, f4498try, f4475case, f4481else, f4485goto, f4495this, f4474break, f4476catch, f4477class, f4478const, f4483final, f4493super, f4496throw, f4499while, f4487import, f4488native, f4490public, f4491return, f4492static, f4494switch, so0Var};
        f4479default = String.valueOf((char) 0);
    }

    public so0(String str, int i, Ccatch ccatch) {
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m2519do(yo0 yo0Var) {
        if (yo0Var.m3088do()) {
            return bo0.m256try(((yo0.Cfor) yo0Var).f6018if);
        }
        return false;
    }

    /* renamed from: if  reason: not valid java name */
    public static void m2520if(yo0.Cgoto cgoto, ro0 ro0Var) {
        ro0Var.f735for.f139for = bp0.f440try;
        ro0Var.f4171const = ro0Var.f4170class;
        ro0Var.f4170class = f4485goto;
        ro0Var.insert(cgoto);
    }

    public static so0 valueOf(String str) {
        return (so0) Enum.valueOf(so0.class, str);
    }

    public static so0[] values() {
        return (so0[]) f4482extends.clone();
    }

    /* renamed from: for  reason: not valid java name */
    public abstract boolean mo2521for(yo0 yo0Var, ro0 ro0Var);
}
