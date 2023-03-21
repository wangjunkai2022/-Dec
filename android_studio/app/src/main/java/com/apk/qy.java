package com.apk;

import android.text.TextUtils;
import android.webkit.WebSettings;
import com.apk.qy;
import com.apk.tw;
import java.io.IOException;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: Request.java */
/* loaded from: classes8.dex */
public abstract class qy<T, R extends qy> implements Serializable {

    /* renamed from: case  reason: not valid java name */
    public xw f3957case;

    /* renamed from: catch  reason: not valid java name */
    public transient zg0 f3958catch;

    /* renamed from: class  reason: not valid java name */
    public transient vw<T> f3959class;

    /* renamed from: const  reason: not valid java name */
    public transient mx<T> f3960const;

    /* renamed from: do  reason: not valid java name */
    public String f3961do;

    /* renamed from: else  reason: not valid java name */
    public String f3962else;

    /* renamed from: final  reason: not valid java name */
    public transient nx<T> f3963final;

    /* renamed from: for  reason: not valid java name */
    public transient xg0 f3964for;

    /* renamed from: goto  reason: not valid java name */
    public long f3965goto;

    /* renamed from: if  reason: not valid java name */
    public String f3966if;

    /* renamed from: new  reason: not valid java name */
    public transient Object f3967new;

    /* renamed from: try  reason: not valid java name */
    public int f3969try;

    /* renamed from: this  reason: not valid java name */
    public gy f3968this = new gy();

    /* renamed from: break  reason: not valid java name */
    public fy f3956break = new fy();

    public qy(String str) {
        String str2;
        this.f3961do = str;
        this.f3966if = str;
        tw twVar = tw.Cif.f4772do;
        if (TextUtils.isEmpty(fy.f1476for)) {
            Locale locale = Locale.getDefault();
            String language = locale.getLanguage();
            String country = locale.getCountry();
            StringBuilder sb = new StringBuilder(language);
            if (!TextUtils.isEmpty(country)) {
                sb.append('-');
                sb.append(country);
                sb.append(',');
                sb.append(language);
                sb.append(";q=0.8");
            }
            str2 = sb.toString();
            fy.f1476for = str2;
        } else {
            str2 = fy.f1476for;
        }
        if (!TextUtils.isEmpty(str2)) {
            this.f3956break.m897for("Accept-Language", str2);
        }
        if (TextUtils.isEmpty(fy.f1478new)) {
            try {
                fy.f1478new = WebSettings.getDefaultUserAgent(tw.Cif.f4772do.getContext());
            } catch (Exception unused) {
                fy.f1478new = System.getProperty("http.agent");
            }
            StringBuffer stringBuffer = new StringBuffer();
            int length = fy.f1478new.length();
            for (int i = 0; i < length; i++) {
                char charAt = fy.f1478new.charAt(i);
                if (charAt <= 31 || charAt >= 127) {
                    stringBuffer.append(String.format("\\u%04x", Integer.valueOf(charAt)));
                } else {
                    stringBuffer.append(charAt);
                }
            }
            fy.f1478new = stringBuffer.toString();
        }
        String str3 = fy.f1478new;
        if (!TextUtils.isEmpty(str3)) {
            this.f3956break.m897for("User-Agent", str3);
        }
        if (twVar != null) {
            fy fyVar = twVar.f4770new;
            if (fyVar != null) {
                m2190catch(fyVar);
            }
            this.f3969try = twVar.f4771try;
            this.f3957case = twVar.f4765case;
            this.f3965goto = twVar.f4767else;
            return;
        }
        throw null;
    }

    /* renamed from: break  reason: not valid java name */
    public zf0 m2188break() {
        bh0 mo1797goto = mo1797goto();
        if (mo1797goto != null) {
            py pyVar = new py(mo1797goto, this.f3960const);
            pyVar.f3765new = null;
            this.f3958catch = mo1399else(pyVar);
        } else {
            this.f3958catch = mo1399else(null);
        }
        if (this.f3964for == null) {
            this.f3964for = tw.Cif.f4772do.f4768for;
        }
        return this.f3964for.m2991do(this.f3958catch);
    }

    public R call(vw<T> vwVar) {
        this.f3959class = vwVar;
        return this;
    }

    /* renamed from: case  reason: not valid java name */
    public void m2189case(mx<T> mxVar) {
        this.f3960const = mxVar;
        uw uwVar = (uw) m2192do();
        uwVar.f4968do.mo284try(((ax) uwVar.f4968do).m126else(), mxVar);
    }

    /* renamed from: catch  reason: not valid java name */
    public R m2190catch(fy fyVar) {
        LinkedHashMap<String, String> linkedHashMap;
        fy fyVar2 = this.f3956break;
        if (fyVar2 != null) {
            if (fyVar != null && (linkedHashMap = fyVar.f1479do) != null && !linkedHashMap.isEmpty()) {
                fyVar2.f1479do.putAll(fyVar.f1479do);
            }
            return this;
        }
        throw null;
    }

    /* renamed from: class  reason: not valid java name */
    public R m2191class(Map<String, String> map, boolean... zArr) {
        gy gyVar = this.f3968this;
        if (gyVar != null) {
            if (map != null && !map.isEmpty()) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (zArr.length > 0) {
                        gyVar.m1047do(key, value, zArr[0]);
                    } else {
                        gyVar.m1047do(key, value, true);
                    }
                }
            }
            return this;
        }
        throw null;
    }

    /* renamed from: do  reason: not valid java name */
    public vw<T> m2192do() {
        vw<T> vwVar = this.f3959class;
        return vwVar == null ? new uw(this) : vwVar;
    }

    /* renamed from: else */
    public abstract zg0 mo1399else(bh0 bh0Var);

    /* renamed from: for  reason: not valid java name */
    public ch0 m2193for() throws IOException {
        return ((xh0) m2188break()).mo3007throw();
    }

    /* renamed from: goto */
    public abstract bh0 mo1797goto();

    /* renamed from: if  reason: not valid java name */
    public R m2194if(long j) {
        if (j <= -1) {
            j = -1;
        }
        this.f3965goto = j;
        return this;
    }

    /* renamed from: new  reason: not valid java name */
    public void m2195new(mx<T> mxVar) {
        this.f3960const = mxVar;
        uw uwVar = (uw) m2192do();
        uwVar.f4968do.mo283new(((ax) uwVar.f4968do).m126else(), mxVar);
    }

    /* renamed from: this  reason: not valid java name */
    public nx<T> m2196this() {
        if (this.f3963final == null) {
            this.f3963final = this.f3960const;
        }
        return this.f3963final;
    }

    /* renamed from: try  reason: not valid java name */
    public iy<T> m2197try() {
        uw uwVar = (uw) m2192do();
        return uwVar.f4968do.mo281for(((ax) uwVar.f4968do).m126else());
    }
}
