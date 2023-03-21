package com.apk;

import androidx.core.app.NotificationCompat;
import com.apk.ch0;
import com.apk.oh0;
import com.apk.sg0;
import com.apk.ug0;
import com.apk.xf0;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.baidu.tts.loopj.HttpDelete;
import com.baidu.tts.loopj.HttpGet;
import com.baidu.tts.loopj.HttpPatch;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.IOException;
import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.crud.LitePalSupport;
import org.litepal.parser.LitePalParser;
/* compiled from: CacheInterceptor.kt */
/* loaded from: classes7.dex */
public final class mh0 implements ug0 {

    /* renamed from: if  reason: not valid java name */
    public static final Cdo f3037if = new Cdo(null);
    @Nullable

    /* renamed from: do  reason: not valid java name */
    public final xf0 f3038do;

    /* compiled from: CacheInterceptor.kt */
    /* renamed from: com.apk.mh0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        /* renamed from: do  reason: not valid java name */
        public static final ch0 m1714do(Cdo cdo, ch0 ch0Var) {
            if ((ch0Var != null ? ch0Var.f614goto : null) != null) {
                if (ch0Var != null) {
                    nd0.m1875new(ch0Var, "response");
                    zg0 zg0Var = ch0Var.f615if;
                    yg0 yg0Var = ch0Var.f613for;
                    int i = ch0Var.f618try;
                    String str = ch0Var.f616new;
                    rg0 rg0Var = ch0Var.f606case;
                    sg0.Cdo m2454for = ch0Var.f611else.m2454for();
                    ch0 ch0Var2 = ch0Var.f617this;
                    ch0 ch0Var3 = ch0Var.f605break;
                    ch0 ch0Var4 = ch0Var.f607catch;
                    long j = ch0Var.f608class;
                    long j2 = ch0Var.f609const;
                    vh0 vh0Var = ch0Var.f612final;
                    if (i >= 0) {
                        if (zg0Var != null) {
                            if (yg0Var != null) {
                                if (str != null) {
                                    return new ch0(zg0Var, yg0Var, str, i, rg0Var, m2454for.m2462new(), null, ch0Var2, ch0Var3, ch0Var4, j, j2, vh0Var);
                                }
                                throw new IllegalStateException("message == null".toString());
                            }
                            throw new IllegalStateException("protocol == null".toString());
                        }
                        throw new IllegalStateException("request == null".toString());
                    }
                    throw new IllegalStateException(Cgoto.m1003implements("code < 0: ", i).toString());
                }
                throw null;
            }
            return ch0Var;
        }

        /* renamed from: for  reason: not valid java name */
        public final boolean m1715for(String str) {
            return (ie0.m1203new("Connection", str, true) || ie0.m1203new("Keep-Alive", str, true) || ie0.m1203new("Proxy-Authenticate", str, true) || ie0.m1203new("Proxy-Authorization", str, true) || ie0.m1203new("TE", str, true) || ie0.m1203new("Trailers", str, true) || ie0.m1203new("Transfer-Encoding", str, true) || ie0.m1203new("Upgrade", str, true)) ? false : true;
        }

        /* renamed from: if  reason: not valid java name */
        public final boolean m1716if(String str) {
            return ie0.m1203new("Content-Length", str, true) || ie0.m1203new(AsyncHttpClient.HEADER_CONTENT_ENCODING, str, true) || ie0.m1203new(AsyncHttpClient.HEADER_CONTENT_TYPE, str, true);
        }
    }

    public mh0(@Nullable xf0 xf0Var) {
        this.f3038do = xf0Var;
    }

    @Override // com.apk.ug0
    @NotNull
    /* renamed from: do */
    public ch0 mo678do(@NotNull ug0.Cdo cdo) throws IOException {
        boolean z;
        int i;
        nd0.m1875new(cdo, "chain");
        zf0 call = cdo.call();
        if (this.f3038do == null) {
            System.currentTimeMillis();
            zg0 mo1722for = cdo.mo1722for();
            nd0.m1875new(mo1722for, TTLogUtil.TAG_EVENT_REQUEST);
            nh0 nh0Var = new nh0(mo1722for, null);
            if (nh0Var.f3230do != null && mo1722for.m3197do().f5921break) {
                nh0Var = new nh0(null, null);
            }
            zg0 zg0Var = nh0Var.f3230do;
            ch0 ch0Var = nh0Var.f3231if;
            xf0 xf0Var = this.f3038do;
            boolean z2 = true;
            if (xf0Var != null) {
                synchronized (xf0Var) {
                    nd0.m1875new(nh0Var, "cacheStrategy");
                    xf0Var.f5522for++;
                    if (nh0Var.f3230do != null) {
                        xf0Var.f5521do++;
                    } else if (nh0Var.f3231if != null) {
                        xf0Var.f5523if++;
                    }
                }
            }
            xh0 xh0Var = call instanceof xh0 ? call : null;
            if (zg0Var == null && ch0Var == null) {
                ch0.Cdo cdo2 = new ch0.Cdo();
                cdo2.m342else(cdo.mo1722for());
                cdo2.m340case(yg0.HTTP_1_1);
                cdo2.f626for = 504;
                cdo2.m346try("Unsatisfiable Request (only-if-cached)");
                cdo2.f625else = jh0.f2332for;
                cdo2.f621catch = -1L;
                cdo2.f622class = System.currentTimeMillis();
                ch0 m341do = cdo2.m341do();
                nd0.m1875new(call, NotificationCompat.CATEGORY_CALL);
                nd0.m1875new(m341do, "response");
                return m341do;
            } else if (zg0Var == null) {
                nd0.m1874if(ch0Var);
                ch0.Cdo cdo3 = new ch0.Cdo(ch0Var);
                cdo3.m344if(Cdo.m1714do(f3037if, ch0Var));
                ch0 m341do2 = cdo3.m341do();
                nd0.m1875new(call, NotificationCompat.CATEGORY_CALL);
                nd0.m1875new(m341do2, "response");
                return m341do2;
            } else {
                if (ch0Var != null) {
                    nd0.m1875new(call, NotificationCompat.CATEGORY_CALL);
                    nd0.m1875new(ch0Var, "cachedResponse");
                } else if (this.f3038do != null) {
                    nd0.m1875new(call, NotificationCompat.CATEGORY_CALL);
                }
                ch0 mo1721do = cdo.mo1721do(zg0Var);
                if (ch0Var == null) {
                    z = false;
                } else if (mo1721do != null && mo1721do.f618try == 304) {
                    ch0.Cdo cdo4 = new ch0.Cdo(ch0Var);
                    Cdo cdo5 = f3037if;
                    sg0 sg0Var = ch0Var.f611else;
                    sg0 sg0Var2 = mo1721do.f611else;
                    ArrayList arrayList = new ArrayList(20);
                    int i2 = 0;
                    for (int size = sg0Var.size(); i2 < size; size = i) {
                        String m2455if = sg0Var.m2455if(i2);
                        String m2456new = sg0Var.m2456new(i2);
                        sg0 sg0Var3 = sg0Var;
                        if (ie0.m1203new("Warning", m2455if, z2)) {
                            i = size;
                            if (ie0.m1206static(m2456new, "1", false, 2)) {
                                i2++;
                                z2 = true;
                                sg0Var = sg0Var3;
                            }
                        } else {
                            i = size;
                        }
                        if (cdo5.m1716if(m2455if) || !cdo5.m1715for(m2455if) || sg0Var2.m2453do(m2455if) == null) {
                            nd0.m1875new(m2455if, "name");
                            nd0.m1875new(m2456new, LitePalParser.ATTR_VALUE);
                            arrayList.add(m2455if);
                            arrayList.add(ie0.m1211throws(m2456new).toString());
                        }
                        i2++;
                        z2 = true;
                        sg0Var = sg0Var3;
                    }
                    int size2 = sg0Var2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        String m2455if2 = sg0Var2.m2455if(i3);
                        if (!cdo5.m1716if(m2455if2) && cdo5.m1715for(m2455if2)) {
                            String m2456new2 = sg0Var2.m2456new(i3);
                            nd0.m1875new(m2455if2, "name");
                            nd0.m1875new(m2456new2, LitePalParser.ATTR_VALUE);
                            arrayList.add(m2455if2);
                            arrayList.add(ie0.m1211throws(m2456new2).toString());
                        }
                    }
                    Object[] array = arrayList.toArray(new String[0]);
                    if (array != null) {
                        cdo4.m345new(new sg0((String[]) array, null));
                        cdo4.f621catch = mo1721do.f608class;
                        cdo4.f622class = mo1721do.f609const;
                        cdo4.m344if(Cdo.m1714do(f3037if, ch0Var));
                        ch0 m1714do = Cdo.m1714do(f3037if, mo1721do);
                        cdo4.m343for("networkResponse", m1714do);
                        cdo4.f627goto = m1714do;
                        ch0 m341do3 = cdo4.m341do();
                        dh0 dh0Var = mo1721do.f614goto;
                        nd0.m1874if(dh0Var);
                        dh0Var.close();
                        xf0 xf0Var2 = this.f3038do;
                        nd0.m1874if(xf0Var2);
                        synchronized (xf0Var2) {
                            xf0Var2.f5523if++;
                        }
                        if (this.f3038do != null) {
                            nd0.m1875new(ch0Var, "cached");
                            nd0.m1875new(m341do3, "network");
                            new xf0.Cif(m341do3);
                            dh0 dh0Var2 = ch0Var.f614goto;
                            if (dh0Var2 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
                            }
                            oh0.Cif cif = ((xf0.Cdo) dh0Var2).f5526new;
                            try {
                                cif.f3428for.m1950try(cif.f3427do, cif.f3429if);
                                throw null;
                            } catch (IOException unused) {
                                nd0.m1875new(call, NotificationCompat.CATEGORY_CALL);
                                nd0.m1875new(m341do3, "response");
                                return m341do3;
                            }
                        }
                        throw null;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                } else {
                    z = false;
                    dh0 dh0Var3 = ch0Var.f614goto;
                    if (dh0Var3 != null) {
                        jh0.m1316case(dh0Var3);
                    }
                }
                nd0.m1874if(mo1721do);
                ch0.Cdo cdo6 = new ch0.Cdo(mo1721do);
                cdo6.m344if(Cdo.m1714do(f3037if, ch0Var));
                ch0 m1714do2 = Cdo.m1714do(f3037if, mo1721do);
                cdo6.m343for("networkResponse", m1714do2);
                cdo6.f627goto = m1714do2;
                ch0 m341do4 = cdo6.m341do();
                if (this.f3038do != null) {
                    if (ki0.m1508for(m341do4) && nh0.m1881do(m341do4, zg0Var)) {
                        xf0 xf0Var3 = this.f3038do;
                        if (xf0Var3 != null) {
                            nd0.m1875new(m341do4, "response");
                            String str = m341do4.f615if.f6186for;
                            nd0.m1875new(str, "method");
                            if (!((nd0.m1870do(str, "POST") || nd0.m1870do(str, HttpPatch.METHOD_NAME) || nd0.m1870do(str, "PUT") || nd0.m1870do(str, HttpDelete.METHOD_NAME) || nd0.m1870do(str, "MOVE")) ? true : true)) {
                                if (!(!nd0.m1870do(str, HttpGet.METHOD_NAME))) {
                                    nd0.m1875new(m341do4, "$this$hasVaryAll");
                                    if (!xf0.m2989try(m341do4.f611else).contains("*")) {
                                        new xf0.Cif(m341do4);
                                        tg0 tg0Var = m341do4.f615if.f6187if;
                                        nd0.m1875new(tg0Var, "url");
                                        uk0.f4913try.m2717if(tg0Var.f4688this).mo1241if(LitePalSupport.MD5).mo1242new();
                                        throw null;
                                    }
                                }
                                if (ch0Var != null) {
                                    nd0.m1875new(call, NotificationCompat.CATEGORY_CALL);
                                }
                                return m341do4;
                            }
                            xf0Var3.m2990for(m341do4.f615if);
                            throw null;
                        }
                        throw null;
                    }
                    String str2 = zg0Var.f6186for;
                    nd0.m1875new(str2, "method");
                    if (nd0.m1870do(str2, "POST") || nd0.m1870do(str2, HttpPatch.METHOD_NAME) || nd0.m1870do(str2, "PUT") || nd0.m1870do(str2, HttpDelete.METHOD_NAME) || nd0.m1870do(str2, "MOVE")) {
                        try {
                            this.f3038do.m2990for(zg0Var);
                            throw null;
                        } catch (IOException unused2) {
                        }
                    }
                }
                return m341do4;
            }
        }
        zg0 mo1722for2 = cdo.mo1722for();
        nd0.m1875new(mo1722for2, TTLogUtil.TAG_EVENT_REQUEST);
        tg0 tg0Var2 = mo1722for2.f6187if;
        nd0.m1875new(tg0Var2, "url");
        uk0.f4913try.m2717if(tg0Var2.f4688this).mo1241if(LitePalSupport.MD5).mo1242new();
        throw null;
    }
}
