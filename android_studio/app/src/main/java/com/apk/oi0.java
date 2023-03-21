package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import com.apk.fi0;
import com.apk.sg0;
import com.apk.tg0;
import com.apk.ug0;
import com.apk.zg0;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.baidu.tts.loopj.HttpGet;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.qq.e.comm.adevent.AdEventType;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import org.jetbrains.annotations.NotNull;

/* compiled from: RetryAndFollowUpInterceptor.kt */
/* loaded from: classes7.dex */
public final class oi0 implements ug0 {

    /* renamed from: do  reason: not valid java name */
    public final xg0 f3440do;

    public oi0(@NotNull xg0 xg0Var) {
        nd0.m1875new(xg0Var, "client");
        this.f3440do = xg0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.apk.ug0
    @NotNull
    /* renamed from: do */
    public ch0 mo678do(@NotNull ug0.Cdo cdo) throws IOException {
        xc0 xc0Var;
        ch0 ch0Var;
        int i;
        xh0 xh0Var;
        mi0 mi0Var;
        oi0 oi0Var;
        ch0 mo1721do;
        xh0 xh0Var2;
        zg0 zg0Var;
        yg0 yg0Var;
        int i2;
        String str;
        rg0 rg0Var;
        sg0.Cdo m2454for;
        dh0 dh0Var;
        ch0 ch0Var2;
        ch0 ch0Var3;
        long j;
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        bg0 bg0Var;
        xh0 xh0Var3 = this;
        nd0.m1875new(cdo, "chain");
        mi0 mi0Var2 = (mi0) cdo;
        zg0 zg0Var2 = mi0Var2.f3053case;
        xh0 xh0Var4 = mi0Var2.f3058if;
        boolean z = true;
        xc0 xc0Var2 = xc0.f5512do;
        ch0 ch0Var4 = null;
        int i3 = 0;
        zg0 zg0Var3 = zg0Var2;
        boolean z2 = true;
        while (xh0Var4 != null) {
            nd0.m1875new(zg0Var3, TTLogUtil.TAG_EVENT_REQUEST);
            if (xh0Var4.f5616this == null) {
                synchronized (xh0Var4) {
                    try {
                    } catch (Throwable th) {
                        th = th;
                        xh0Var3 = xh0Var4;
                    }
                    try {
                        if (xh0Var4.f5604catch ^ z) {
                            if (!(xh0Var4.f5602break ^ z)) {
                                throw new IllegalStateException("Check failed.".toString());
                            }
                        } else {
                            throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()".toString());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                if (z2) {
                    ci0 ci0Var = xh0Var4.f5607do;
                    tg0 tg0Var = zg0Var3.f6187if;
                    if (tg0Var.f4682do) {
                        xg0 xg0Var = xh0Var4.f5617throw;
                        SSLSocketFactory sSLSocketFactory2 = xg0Var.f5572while;
                        if (sSLSocketFactory2 != null) {
                            HostnameVerifier hostnameVerifier2 = xg0Var.f5564return;
                            bg0Var = xg0Var.f5565static;
                            sSLSocketFactory = sSLSocketFactory2;
                            hostnameVerifier = hostnameVerifier2;
                        } else {
                            throw new IllegalStateException("CLEARTEXT-only client");
                        }
                    } else {
                        sSLSocketFactory = null;
                        hostnameVerifier = null;
                        bg0Var = null;
                    }
                    String str2 = tg0Var.f4689try;
                    int i4 = tg0Var.f4681case;
                    xg0 xg0Var2 = xh0Var4.f5617throw;
                    xc0Var = xc0Var2;
                    i = i3;
                    ch0Var = ch0Var4;
                    uf0 uf0Var = new uf0(str2, i4, xg0Var2.f5547class, xg0Var2.f5569throw, sSLSocketFactory, hostnameVerifier, bg0Var, xg0Var2.f5566super, xg0Var2.f5548const, xg0Var2.f5563public, xg0Var2.f5559native, xg0Var2.f5553final);
                    og0 og0Var = xh0Var4.f5612if;
                    xh0Var4.f5603case = new wh0(ci0Var, uf0Var, xh0Var4, og0Var);
                    xh0Var = og0Var;
                } else {
                    xc0Var = xc0Var2;
                    ch0Var = ch0Var4;
                    i = i3;
                    xh0Var = xh0Var3;
                }
                try {
                    if (!xh0Var4.f5606const) {
                        try {
                            mo1721do = mi0Var2.mo1721do(zg0Var3);
                            if (ch0Var != null) {
                                try {
                                    nd0.m1875new(mo1721do, "response");
                                    zg0Var = mo1721do.f615if;
                                    yg0Var = mo1721do.f613for;
                                    i2 = mo1721do.f618try;
                                    str = mo1721do.f616new;
                                    rg0Var = mo1721do.f606case;
                                    m2454for = mo1721do.f611else.m2454for();
                                    dh0Var = mo1721do.f614goto;
                                    ch0Var2 = mo1721do.f617this;
                                    ch0Var3 = mo1721do.f605break;
                                    j = mo1721do.f608class;
                                    mi0Var = mi0Var2;
                                    xh0Var2 = xh0Var4;
                                } catch (Throwable th3) {
                                    th = th3;
                                    xh0Var2 = xh0Var4;
                                }
                                try {
                                    long j2 = mo1721do.f609const;
                                    vh0 vh0Var = mo1721do.f612final;
                                    ch0 ch0Var5 = ch0Var;
                                    nd0.m1875new(ch0Var5, "response");
                                    zg0 zg0Var4 = ch0Var5.f615if;
                                    yg0 yg0Var2 = ch0Var5.f613for;
                                    int i5 = ch0Var5.f618try;
                                    String str3 = ch0Var5.f616new;
                                    rg0 rg0Var2 = ch0Var5.f606case;
                                    sg0.Cdo m2454for2 = ch0Var5.f611else.m2454for();
                                    ch0 ch0Var6 = ch0Var5.f617this;
                                    ch0 ch0Var7 = ch0Var5.f605break;
                                    ch0 ch0Var8 = ch0Var5.f607catch;
                                    long j3 = ch0Var5.f608class;
                                    long j4 = ch0Var5.f609const;
                                    vh0 vh0Var2 = ch0Var5.f612final;
                                    if (!(i5 >= 0)) {
                                        throw new IllegalStateException(("code < 0: " + i5).toString());
                                    } else if (zg0Var4 == null) {
                                        throw new IllegalStateException("request == null".toString());
                                    } else {
                                        if (yg0Var2 == null) {
                                            throw new IllegalStateException("protocol == null".toString());
                                        }
                                        if (str3 != null) {
                                            ch0 ch0Var9 = new ch0(zg0Var4, yg0Var2, str3, i5, rg0Var2, m2454for2.m2462new(), null, ch0Var6, ch0Var7, ch0Var8, j3, j4, vh0Var2);
                                            if (!(ch0Var9.f614goto == null)) {
                                                throw new IllegalArgumentException("priorResponse.body != null".toString());
                                            }
                                            if (!(i2 >= 0)) {
                                                throw new IllegalStateException(("code < 0: " + i2).toString());
                                            } else if (zg0Var == null) {
                                                throw new IllegalStateException("request == null".toString());
                                            } else {
                                                if (yg0Var == null) {
                                                    throw new IllegalStateException("protocol == null".toString());
                                                }
                                                if (str != null) {
                                                    mo1721do = new ch0(zg0Var, yg0Var, str, i2, rg0Var, m2454for.m2462new(), dh0Var, ch0Var2, ch0Var3, ch0Var9, j, j2, vh0Var);
                                                } else {
                                                    throw new IllegalStateException("message == null".toString());
                                                }
                                            }
                                        } else {
                                            throw new IllegalStateException("message == null".toString());
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    xh0Var = xh0Var2;
                                    xh0Var.m3001else(true);
                                    throw th;
                                }
                            } else {
                                mi0Var = mi0Var2;
                                xh0Var2 = xh0Var4;
                            }
                            xh0Var = xh0Var2;
                        } catch (ei0 e) {
                            mi0 mi0Var3 = mi0Var2;
                            xh0Var = xh0Var4;
                            xc0 xc0Var3 = xc0Var;
                            ch0 ch0Var10 = ch0Var;
                            oi0Var = this;
                            if (oi0Var.m1960for(e.f1070do, xh0Var, zg0Var3, false)) {
                                IOException iOException = e.f1071if;
                                nd0.m1875new(xc0Var3, "$this$plus");
                                ArrayList arrayList = new ArrayList(xc0Var3.size() + 1);
                                arrayList.addAll(xc0Var3);
                                arrayList.add(iOException);
                                xh0Var.m3001else(true);
                                xc0Var2 = arrayList;
                                ch0Var4 = ch0Var10;
                                mi0Var2 = mi0Var3;
                                i3 = i;
                                z2 = false;
                            } else {
                                IOException iOException2 = e.f1071if;
                                jh0.m1347transient(iOException2, xc0Var3);
                                throw iOException2;
                            }
                        } catch (IOException e2) {
                            mi0Var = mi0Var2;
                            xh0Var = xh0Var4;
                            ch0 ch0Var11 = ch0Var;
                            oi0Var = this;
                            if (oi0Var.m1960for(e2, xh0Var, zg0Var3, !(e2 instanceof si0))) {
                                xc0 xc0Var4 = xc0Var;
                                nd0.m1875new(xc0Var4, "$this$plus");
                                ArrayList arrayList2 = new ArrayList(xc0Var4.size() + 1);
                                arrayList2.addAll(xc0Var4);
                                arrayList2.add(e2);
                                xh0Var.m3001else(true);
                                xc0Var2 = arrayList2;
                                ch0Var4 = ch0Var11;
                                i3 = i;
                                z2 = false;
                            } else {
                                jh0.m1347transient(e2, xc0Var);
                                throw e2;
                            }
                        }
                        try {
                            vh0 vh0Var3 = xh0Var.f5616this;
                            oi0Var = this;
                            try {
                                zg0Var3 = oi0Var.m1961if(mo1721do, vh0Var3);
                                if (zg0Var3 == null) {
                                    if (vh0Var3 != null && vh0Var3.f5084do) {
                                        if (!xh0Var.f5611goto) {
                                            xh0Var.f5611goto = true;
                                            xh0Var.f5610for.m1968this();
                                        } else {
                                            throw new IllegalStateException("Check failed.".toString());
                                        }
                                    }
                                    xh0Var.m3001else(false);
                                    return mo1721do;
                                }
                                dh0 dh0Var2 = mo1721do.f614goto;
                                if (dh0Var2 != null) {
                                    jh0.m1316case(dh0Var2);
                                }
                                i3 = i + 1;
                                if (i3 <= 20) {
                                    xh0Var.m3001else(true);
                                    ch0Var4 = mo1721do;
                                    xc0Var2 = xc0Var;
                                    z2 = true;
                                    mi0Var2 = mi0Var;
                                    z = true;
                                    xh0 xh0Var5 = oi0Var;
                                    xh0Var4 = xh0Var;
                                    xh0Var3 = xh0Var5;
                                } else {
                                    throw new ProtocolException("Too many follow-up requests: " + i3);
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                xh0Var.m3001else(true);
                                throw th;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            xh0Var.m3001else(true);
                            throw th;
                        }
                    } else {
                        throw new IOException("Canceled");
                    }
                } catch (Throwable th7) {
                    th = th7;
                    xh0Var = xh0Var4;
                }
            } else {
                throw new IllegalStateException("Check failed.".toString());
            }
        }
        throw null;
    }

    /* renamed from: for  reason: not valid java name */
    public final boolean m1960for(IOException iOException, xh0 xh0Var, zg0 zg0Var, boolean z) {
        boolean z2;
        fi0 fi0Var;
        bi0 bi0Var;
        if (this.f3440do.f5545case) {
            if (z) {
                bh0 bh0Var = zg0Var.f6189try;
                if (iOException instanceof FileNotFoundException) {
                    return false;
                }
            }
            if (!(iOException instanceof ProtocolException) && (!(iOException instanceof InterruptedIOException) ? ((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException) : !((iOException instanceof SocketTimeoutException) && !z))) {
                wh0 wh0Var = xh0Var.f5603case;
                nd0.m1874if(wh0Var);
                if (wh0Var.f5287for == 0 && wh0Var.f5290new == 0 && wh0Var.f5292try == 0) {
                    z2 = false;
                } else {
                    if (wh0Var.f5284case == null) {
                        fh0 fh0Var = null;
                        if (wh0Var.f5287for <= 1 && wh0Var.f5290new <= 1 && wh0Var.f5292try <= 0 && (bi0Var = wh0Var.f5291this.f5608else) != null) {
                            synchronized (bi0Var) {
                                if (bi0Var.f325catch == 0) {
                                    if (jh0.m1327for(bi0Var.f338while.f1292do.f4880do, wh0Var.f5288goto.f4880do)) {
                                        fh0Var = bi0Var.f338while;
                                    }
                                }
                            }
                        }
                        if (fh0Var != null) {
                            wh0Var.f5284case = fh0Var;
                        } else {
                            fi0.Cdo cdo = wh0Var.f5285do;
                            if ((cdo == null || !cdo.m785do()) && (fi0Var = wh0Var.f5289if) != null) {
                                z2 = fi0Var.m783do();
                            }
                        }
                    }
                    z2 = true;
                }
                return z2;
            }
            return false;
        }
        return false;
    }

    /* renamed from: if  reason: not valid java name */
    public final zg0 m1961if(ch0 ch0Var, vh0 vh0Var) throws IOException {
        String m336break;
        tg0.Cdo cdo;
        bi0 bi0Var;
        fh0 fh0Var = (vh0Var == null || (bi0Var = vh0Var.f5086if) == null) ? null : bi0Var.f338while;
        int i = ch0Var.f618try;
        String str = ch0Var.f615if.f6186for;
        boolean z = false;
        if (i != 307 && i != 308) {
            if (i != 401) {
                if (i == 421) {
                    if (vh0Var == null || !(!nd0.m1870do(vh0Var.f5088try.f5288goto.f4880do.f4689try, vh0Var.f5086if.f338while.f1292do.f4880do.f4689try))) {
                        return null;
                    }
                    bi0 bi0Var2 = vh0Var.f5086if;
                    synchronized (bi0Var2) {
                        bi0Var2.f323break = true;
                    }
                    return ch0Var.f615if;
                } else if (i == 503) {
                    ch0 ch0Var2 = ch0Var.f607catch;
                    if ((ch0Var2 == null || ch0Var2.f618try != 503) && m1962new(ch0Var, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) == 0) {
                        return ch0Var.f615if;
                    }
                    return null;
                } else if (i == 407) {
                    nd0.m1874if(fh0Var);
                    if (fh0Var.f1294if.type() == Proxy.Type.HTTP) {
                        return this.f3440do.f5566super.mo1632do(fh0Var, ch0Var);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                } else if (i == 408) {
                    if (this.f3440do.f5545case) {
                        ch0 ch0Var3 = ch0Var.f607catch;
                        if ((ch0Var3 == null || ch0Var3.f618try != 408) && m1962new(ch0Var, 0) <= 0) {
                            return ch0Var.f615if;
                        }
                        return null;
                    }
                    return null;
                } else {
                    switch (i) {
                        case 300:
                        case 301:
                        case AdEventType.VIDEO_PAGE_CLOSE /* 302 */:
                        case AdEventType.LEFT_APPLICATION /* 303 */:
                            break;
                        default:
                            return null;
                    }
                }
            } else {
                return this.f3440do.f5551else.mo1632do(fh0Var, ch0Var);
            }
        }
        if (this.f3440do.f5556goto && (m336break = ch0.m336break(ch0Var, "Location", null, 2)) != null) {
            tg0 tg0Var = ch0Var.f615if.f6187if;
            if (tg0Var != null) {
                nd0.m1875new(m336break, "link");
                nd0.m1875new(m336break, "link");
                try {
                    cdo = new tg0.Cdo();
                    cdo.m2599new(tg0Var, m336break);
                } catch (IllegalArgumentException unused) {
                    cdo = null;
                }
                tg0 m2596do = cdo != null ? cdo.m2596do() : null;
                if (m2596do != null) {
                    if (nd0.m1870do(m2596do.f4686if, ch0Var.f615if.f6187if.f4686if) || this.f3440do.f5568this) {
                        zg0 zg0Var = ch0Var.f615if;
                        if (zg0Var != null) {
                            zg0.Cdo cdo2 = new zg0.Cdo(zg0Var);
                            if (li0.m1634do(str)) {
                                int i2 = ch0Var.f618try;
                                nd0.m1875new(str, "method");
                                z = (nd0.m1870do(str, "PROPFIND") || i2 == 308 || i2 == 307) ? true : true;
                                nd0.m1875new(str, "method");
                                if ((true ^ nd0.m1870do(str, "PROPFIND")) && i2 != 308 && i2 != 307) {
                                    cdo2.m3207try(HttpGet.METHOD_NAME, null);
                                } else {
                                    cdo2.m3207try(str, z ? ch0Var.f615if.f6189try : null);
                                }
                                if (!z) {
                                    cdo2.m3199case("Transfer-Encoding");
                                    cdo2.m3199case("Content-Length");
                                    cdo2.m3199case(AsyncHttpClient.HEADER_CONTENT_TYPE);
                                }
                            }
                            if (!jh0.m1327for(ch0Var.f615if.f6187if, m2596do)) {
                                cdo2.m3199case("Authorization");
                            }
                            cdo2.m3206this(m2596do);
                            return cdo2.m3204if();
                        }
                        throw null;
                    }
                    return null;
                }
                return null;
            }
            throw null;
        }
        return null;
    }

    /* renamed from: new  reason: not valid java name */
    public final int m1962new(ch0 ch0Var, int i) {
        String m336break = ch0.m336break(ch0Var, "Retry-After", null, 2);
        if (m336break != null) {
            nd0.m1875new("\\d+", "pattern");
            Pattern compile = Pattern.compile("\\d+");
            nd0.m1872for(compile, "Pattern.compile(pattern)");
            nd0.m1875new(compile, "nativePattern");
            nd0.m1875new(m336break, "input");
            if (compile.matcher(m336break).matches()) {
                Integer valueOf = Integer.valueOf(m336break);
                nd0.m1872for(valueOf, "Integer.valueOf(header)");
                return valueOf.intValue();
            }
            return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        return i;
    }
}
