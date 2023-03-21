package com.apk;

import androidx.core.app.NotificationCompat;
import com.apk.ch0;
import com.apk.sg0;
import com.apk.ug0;
import com.apk.vh0;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.IOException;
import java.net.ProtocolException;
import org.jetbrains.annotations.NotNull;
/* compiled from: CallServerInterceptor.kt */
/* loaded from: classes7.dex */
public final class hi0 implements ug0 {

    /* renamed from: do  reason: not valid java name */
    public final boolean f1866do;

    public hi0(boolean z) {
        this.f1866do = z;
    }

    @Override // com.apk.ug0
    @NotNull
    /* renamed from: do */
    public ch0 mo678do(@NotNull ug0.Cdo cdo) throws IOException {
        boolean z;
        ch0.Cdo cdo2;
        int i;
        ch0 ch0Var;
        nd0.m1875new(cdo, "chain");
        mi0 mi0Var = (mi0) cdo;
        vh0 vh0Var = mi0Var.f3061try;
        nd0.m1874if(vh0Var);
        zg0 zg0Var = mi0Var.f3053case;
        bh0 bh0Var = zg0Var.f6189try;
        long currentTimeMillis = System.currentTimeMillis();
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        try {
            og0 og0Var = vh0Var.f5087new;
            xh0 xh0Var = vh0Var.f5085for;
            if (og0Var != null) {
                nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
                vh0Var.f5083case.mo631if(zg0Var);
                og0 og0Var2 = vh0Var.f5087new;
                xh0 xh0Var2 = vh0Var.f5085for;
                if (og0Var2 != null) {
                    nd0.m1875new(xh0Var2, NotificationCompat.CATEGORY_CALL);
                    nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
                    if (li0.m1634do(zg0Var.f6186for) && bh0Var != null) {
                        if (ie0.m1203new("100-continue", zg0Var.m3198if("Expect"), true)) {
                            try {
                                vh0Var.f5083case.mo626case();
                                cdo2 = vh0Var.m2796for(true);
                                vh0Var.m2798new();
                                z = false;
                            } catch (IOException e) {
                                vh0Var.f5087new.m1946if(vh0Var.f5085for, e);
                                vh0Var.m2799try(e);
                                throw e;
                            }
                        } else {
                            z = true;
                            cdo2 = null;
                        }
                        if (cdo2 == null) {
                            sk0 m2403catch = sb0.m2403catch(vh0Var.m2797if(zg0Var, false));
                            bh0Var.mo49for(m2403catch);
                            ((el0) m2403catch).close();
                        } else {
                            vh0Var.f5085for.m3006this(vh0Var, true, false, null);
                            if (!vh0Var.f5086if.m181catch()) {
                                vh0Var.f5083case.mo633try().m183const();
                            }
                        }
                    } else {
                        vh0Var.f5085for.m3006this(vh0Var, true, false, null);
                        z = true;
                        cdo2 = null;
                    }
                    try {
                        vh0Var.f5083case.mo627do();
                        if (cdo2 == null) {
                            cdo2 = vh0Var.m2796for(false);
                            nd0.m1874if(cdo2);
                            if (z) {
                                vh0Var.m2798new();
                                z = false;
                            }
                        }
                        cdo2.m342else(zg0Var);
                        cdo2.f631try = vh0Var.f5086if.f333new;
                        cdo2.f621catch = currentTimeMillis;
                        cdo2.f622class = System.currentTimeMillis();
                        ch0 m341do = cdo2.m341do();
                        int i2 = m341do.f618try;
                        if (i2 == 100) {
                            ch0.Cdo m2796for = vh0Var.m2796for(false);
                            nd0.m1874if(m2796for);
                            if (z) {
                                vh0Var.m2798new();
                            }
                            m2796for.m342else(zg0Var);
                            m2796for.f631try = vh0Var.f5086if.f333new;
                            m2796for.f621catch = currentTimeMillis;
                            m2796for.f622class = System.currentTimeMillis();
                            m341do = m2796for.m341do();
                            i2 = m341do.f618try;
                        }
                        nd0.m1875new(m341do, "response");
                        og0 og0Var3 = vh0Var.f5087new;
                        xh0 xh0Var3 = vh0Var.f5085for;
                        if (og0Var3 != null) {
                            nd0.m1875new(xh0Var3, NotificationCompat.CATEGORY_CALL);
                            nd0.m1875new(m341do, "response");
                            if (this.f1866do && i2 == 101) {
                                nd0.m1875new(m341do, "response");
                                zg0 zg0Var2 = m341do.f615if;
                                yg0 yg0Var = m341do.f613for;
                                int i3 = m341do.f618try;
                                String str = m341do.f616new;
                                rg0 rg0Var = m341do.f606case;
                                sg0.Cdo m2454for = m341do.f611else.m2454for();
                                ch0 ch0Var2 = m341do.f617this;
                                ch0 ch0Var3 = m341do.f605break;
                                ch0 ch0Var4 = m341do.f607catch;
                                long j = m341do.f608class;
                                i = i2;
                                long j2 = m341do.f609const;
                                vh0 vh0Var2 = m341do.f612final;
                                dh0 dh0Var = jh0.f2332for;
                                if (!(i3 >= 0)) {
                                    throw new IllegalStateException(Cgoto.m1003implements("code < 0: ", i3).toString());
                                }
                                if (zg0Var2 == null) {
                                    throw new IllegalStateException("request == null".toString());
                                }
                                if (yg0Var == null) {
                                    throw new IllegalStateException("protocol == null".toString());
                                }
                                if (str != null) {
                                    ch0Var = new ch0(zg0Var2, yg0Var, str, i3, rg0Var, m2454for.m2462new(), dh0Var, ch0Var2, ch0Var3, ch0Var4, j, j2, vh0Var2);
                                } else {
                                    throw new IllegalStateException("message == null".toString());
                                }
                            } else {
                                i = i2;
                                nd0.m1875new(m341do, "response");
                                zg0 zg0Var3 = m341do.f615if;
                                yg0 yg0Var2 = m341do.f613for;
                                int i4 = m341do.f618try;
                                String str2 = m341do.f616new;
                                rg0 rg0Var2 = m341do.f606case;
                                sg0.Cdo m2454for2 = m341do.f611else.m2454for();
                                ch0 ch0Var5 = m341do.f617this;
                                ch0 ch0Var6 = m341do.f605break;
                                ch0 ch0Var7 = m341do.f607catch;
                                long j3 = m341do.f608class;
                                long j4 = m341do.f609const;
                                vh0 vh0Var3 = m341do.f612final;
                                nd0.m1875new(m341do, "response");
                                try {
                                    String m336break = ch0.m336break(m341do, AsyncHttpClient.HEADER_CONTENT_TYPE, null, 2);
                                    long mo628else = vh0Var.f5083case.mo628else(m341do);
                                    ni0 ni0Var = new ni0(m336break, mo628else, sb0.m2404class(new vh0.Cif(vh0Var, vh0Var.f5083case.mo629for(m341do), mo628else)));
                                    if (!(i4 >= 0)) {
                                        throw new IllegalStateException(Cgoto.m1003implements("code < 0: ", i4).toString());
                                    }
                                    if (zg0Var3 == null) {
                                        throw new IllegalStateException("request == null".toString());
                                    }
                                    if (yg0Var2 == null) {
                                        throw new IllegalStateException("protocol == null".toString());
                                    }
                                    if (str2 != null) {
                                        ch0Var = new ch0(zg0Var3, yg0Var2, str2, i4, rg0Var2, m2454for2.m2462new(), ni0Var, ch0Var5, ch0Var6, ch0Var7, j3, j4, vh0Var3);
                                    } else {
                                        throw new IllegalStateException("message == null".toString());
                                    }
                                } catch (IOException e2) {
                                    vh0Var.f5087new.m1945for(vh0Var.f5085for, e2);
                                    vh0Var.m2799try(e2);
                                    throw e2;
                                }
                            }
                            if (ie0.m1203new("close", ch0Var.f615if.m3198if("Connection"), true) || ie0.m1203new("close", ch0.m336break(ch0Var, "Connection", null, 2), true)) {
                                vh0Var.f5083case.mo633try().m183const();
                            }
                            int i5 = i;
                            if (i5 == 204 || i5 == 205) {
                                dh0 dh0Var2 = ch0Var.f614goto;
                                if ((dh0Var2 != null ? dh0Var2.mo457throw() : -1L) > 0) {
                                    StringBuilder m1020throw = Cgoto.m1020throw("HTTP ", i5, " had non-zero Content-Length: ");
                                    dh0 dh0Var3 = ch0Var.f614goto;
                                    m1020throw.append(dh0Var3 != null ? Long.valueOf(dh0Var3.mo457throw()) : null);
                                    throw new ProtocolException(m1020throw.toString());
                                }
                            }
                            return ch0Var;
                        }
                        throw null;
                    } catch (IOException e3) {
                        vh0Var.f5087new.m1946if(vh0Var.f5085for, e3);
                        vh0Var.m2799try(e3);
                        throw e3;
                    }
                }
                throw null;
            }
            throw null;
        } catch (IOException e4) {
            vh0Var.f5087new.m1946if(vh0Var.f5085for, e4);
            vh0Var.m2799try(e4);
            throw e4;
        }
    }
}
