package com.apk;

import com.apk.ch0;
import com.apk.sg0;
import com.apk.ug0;
import com.apk.zg0;
import com.baidu.tts.loopj.AsyncHttpClient;
import java.io.IOException;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* compiled from: BridgeInterceptor.kt */
/* loaded from: classes7.dex */
public final class gi0 implements ug0 {

    /* renamed from: do  reason: not valid java name */
    public final kg0 f1575do;

    public gi0(@NotNull kg0 kg0Var) {
        nd0.m1875new(kg0Var, "cookieJar");
        this.f1575do = kg0Var;
    }

    @Override // com.apk.ug0
    @NotNull
    /* renamed from: do */
    public ch0 mo678do(@NotNull ug0.Cdo cdo) throws IOException {
        boolean z;
        dh0 dh0Var;
        nd0.m1875new(cdo, "chain");
        zg0 mo1722for = cdo.mo1722for();
        if (mo1722for != null) {
            zg0.Cdo cdo2 = new zg0.Cdo(mo1722for);
            bh0 bh0Var = mo1722for.f6189try;
            if (bh0Var != null) {
                vg0 mo50if = bh0Var.mo50if();
                if (mo50if != null) {
                    cdo2.m3202for(AsyncHttpClient.HEADER_CONTENT_TYPE, mo50if.f5077do);
                }
                long mo48do = bh0Var.mo48do();
                if (mo48do != -1) {
                    cdo2.m3202for("Content-Length", String.valueOf(mo48do));
                    cdo2.m3199case("Transfer-Encoding");
                } else {
                    cdo2.m3202for("Transfer-Encoding", "chunked");
                    cdo2.m3199case("Content-Length");
                }
            }
            int i = 0;
            if (mo1722for.m3198if("Host") == null) {
                cdo2.m3202for("Host", jh0.m1314abstract(mo1722for.f6187if, false));
            }
            if (mo1722for.m3198if("Connection") == null) {
                cdo2.m3202for("Connection", "Keep-Alive");
            }
            if (mo1722for.m3198if(AsyncHttpClient.HEADER_ACCEPT_ENCODING) == null && mo1722for.m3198if("Range") == null) {
                cdo2.m3202for(AsyncHttpClient.HEADER_ACCEPT_ENCODING, AsyncHttpClient.ENCODING_GZIP);
                z = true;
            } else {
                z = false;
            }
            List<ig0> mo1313if = this.f1575do.mo1313if(mo1722for.f6187if);
            if (!mo1313if.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                for (Object obj : mo1313if) {
                    int i2 = i + 1;
                    if (i >= 0) {
                        ig0 ig0Var = (ig0) obj;
                        if (i > 0) {
                            sb.append("; ");
                        }
                        sb.append(ig0Var.f2101do);
                        sb.append('=');
                        sb.append(ig0Var.f2105if);
                        i = i2;
                    } else {
                        sb0.n();
                        throw null;
                    }
                }
                String sb2 = sb.toString();
                nd0.m1872for(sb2, "StringBuilder().apply(builderAction).toString()");
                cdo2.m3202for("Cookie", sb2);
            }
            if (mo1722for.m3198if("User-Agent") == null) {
                cdo2.m3202for("User-Agent", "okhttp/4.9.3");
            }
            ch0 mo1721do = cdo.mo1721do(cdo2.m3204if());
            ki0.m1505case(this.f1575do, mo1722for.f6187if, mo1721do.f611else);
            ch0.Cdo cdo3 = new ch0.Cdo(mo1721do);
            cdo3.m342else(mo1722for);
            if (z && ie0.m1203new(AsyncHttpClient.ENCODING_GZIP, ch0.m336break(mo1721do, AsyncHttpClient.HEADER_CONTENT_ENCODING, null, 2), true) && ki0.m1508for(mo1721do) && (dh0Var = mo1721do.f614goto) != null) {
                yk0 yk0Var = new yk0(dh0Var.mo454extends());
                sg0.Cdo m2454for = mo1721do.f611else.m2454for();
                m2454for.m2463try(AsyncHttpClient.HEADER_CONTENT_ENCODING);
                m2454for.m2463try("Content-Length");
                cdo3.m345new(m2454for.m2462new());
                cdo3.f625else = new ni0(ch0.m336break(mo1721do, AsyncHttpClient.HEADER_CONTENT_TYPE, null, 2), -1L, sb0.m2404class(yk0Var));
            }
            return cdo3.m341do();
        }
        throw null;
    }
}
