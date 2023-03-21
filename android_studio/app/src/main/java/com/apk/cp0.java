package com.apk;

import com.apk.yo0;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: TreeBuilder.java */
/* loaded from: classes7.dex */
public abstract class cp0 {

    /* renamed from: case  reason: not valid java name */
    public String f731case;

    /* renamed from: do  reason: not valid java name */
    public wo0 f733do;

    /* renamed from: else  reason: not valid java name */
    public yo0 f734else;

    /* renamed from: for  reason: not valid java name */
    public ap0 f735for;

    /* renamed from: goto  reason: not valid java name */
    public vo0 f736goto;

    /* renamed from: if  reason: not valid java name */
    public qo0 f737if;

    /* renamed from: new  reason: not valid java name */
    public ho0 f738new;

    /* renamed from: this  reason: not valid java name */
    public Map<String, xo0> f739this;

    /* renamed from: try  reason: not valid java name */
    public ArrayList<jo0> f740try;

    /* renamed from: break  reason: not valid java name */
    public yo0.Cgoto f730break = new yo0.Cgoto();

    /* renamed from: catch  reason: not valid java name */
    public yo0.Celse f732catch = new yo0.Celse();

    /* renamed from: case  reason: not valid java name */
    public boolean m386case(String str) {
        yo0.Cgoto cgoto = this.f730break;
        if (this.f734else == cgoto) {
            yo0.Cgoto cgoto2 = new yo0.Cgoto();
            cgoto2.f6029if = str;
            cgoto2.f6027for = sb0.m2437volatile(str.trim());
            ro0 ro0Var = (ro0) this;
            ro0Var.f734else = cgoto2;
            return ro0Var.f4170class.mo2521for(cgoto2, ro0Var);
        }
        cgoto.mo3094return();
        cgoto.f6029if = str;
        cgoto.f6027for = sb0.m2437volatile(str.trim());
        ro0 ro0Var2 = (ro0) this;
        ro0Var2.f734else = cgoto;
        return ro0Var2.f4170class.mo2521for(cgoto, ro0Var2);
    }

    /* renamed from: do  reason: not valid java name */
    public jo0 m387do() {
        int size = this.f740try.size();
        return size > 0 ? this.f740try.get(size - 1) : this.f738new;
    }

    /* renamed from: else  reason: not valid java name */
    public xo0 m388else(String str, vo0 vo0Var) {
        xo0 xo0Var = this.f739this.get(str);
        if (xo0Var == null) {
            xo0 m3028do = xo0.m3028do(str, vo0Var);
            this.f739this.put(str, m3028do);
            return m3028do;
        }
        return xo0Var;
    }

    @ParametersAreNonnullByDefault
    /* renamed from: for  reason: not valid java name */
    public void mo389for(Reader reader, String str, wo0 wo0Var) {
        sb0.m2431synchronized(reader, "String input must not be null");
        sb0.m2431synchronized(str, "BaseURI must not be null");
        sb0.m2418instanceof(wo0Var);
        ho0 ho0Var = new ho0(str);
        this.f738new = ho0Var;
        ho0Var.f1909catch = wo0Var;
        this.f733do = wo0Var;
        this.f736goto = wo0Var.f5360if;
        qo0 qo0Var = new qo0(reader, 32768);
        this.f737if = qo0Var;
        boolean z = wo0Var.f5359do.f4949do > 0;
        if (z && qo0Var.f3910this == null) {
            qo0Var.f3910this = new ArrayList<>((int) TTAdConstant.IMAGE_LIST_CODE);
            qo0Var.m2166package();
        } else if (!z) {
            qo0Var.f3910this = null;
        }
        this.f734else = null;
        this.f735for = new ap0(this.f737if, wo0Var.f5359do);
        this.f740try = new ArrayList<>(32);
        this.f739this = new HashMap();
        this.f731case = str;
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m390if(String str) {
        jo0 m387do;
        return (this.f740try.size() == 0 || (m387do = m387do()) == null || !m387do.f2398new.f5716if.equals(str)) ? false : true;
    }

    /* renamed from: new  reason: not valid java name */
    public abstract boolean mo391new(yo0 yo0Var);

    /* renamed from: try  reason: not valid java name */
    public boolean m392try(String str) {
        yo0 yo0Var = this.f734else;
        yo0.Celse celse = this.f732catch;
        if (yo0Var == celse) {
            yo0.Celse celse2 = new yo0.Celse();
            celse2.f6029if = str;
            celse2.f6027for = vo0.m2828do(str);
            return mo391new(celse2);
        }
        celse.mo3089else();
        celse.f6029if = str;
        celse.f6027for = vo0.m2828do(str);
        return mo391new(celse);
    }
}
