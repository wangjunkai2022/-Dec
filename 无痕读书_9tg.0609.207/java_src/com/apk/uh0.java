package com.apk;

import com.apk.eg0;
import com.apk.hg0;
import java.io.IOException;
import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import org.jetbrains.annotations.NotNull;
import org.litepal.parser.LitePalParser;
/* compiled from: ConnectionSpecSelector.kt */
/* loaded from: classes7.dex */
public final class uh0 {

    /* renamed from: do  reason: not valid java name */
    public int f4892do;

    /* renamed from: for  reason: not valid java name */
    public boolean f4893for;

    /* renamed from: if  reason: not valid java name */
    public boolean f4894if;

    /* renamed from: new  reason: not valid java name */
    public final List<hg0> f4895new;

    public uh0(@NotNull List<hg0> list) {
        nd0.m1875new(list, "connectionSpecs");
        this.f4895new = list;
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public final hg0 m2703do(@NotNull SSLSocket sSLSocket) throws IOException {
        hg0 hg0Var;
        boolean z;
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        nd0.m1875new(sSLSocket, "sslSocket");
        int i = this.f4892do;
        int size = this.f4895new.size();
        while (true) {
            if (i >= size) {
                hg0Var = null;
                break;
            }
            hg0Var = this.f4895new.get(i);
            if (hg0Var.m1119if(sSLSocket)) {
                this.f4892do = i + 1;
                break;
            }
            i++;
        }
        if (hg0Var != null) {
            int i2 = this.f4892do;
            int size2 = this.f4895new.size();
            while (true) {
                if (i2 >= size2) {
                    z = false;
                    break;
                } else if (this.f4895new.get(i2).m1119if(sSLSocket)) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            this.f4894if = z;
            boolean z2 = this.f4893for;
            nd0.m1875new(sSLSocket, "sslSocket");
            if (hg0Var.f1858for != null) {
                String[] enabledCipherSuites2 = sSLSocket.getEnabledCipherSuites();
                nd0.m1872for(enabledCipherSuites2, "sslSocket.enabledCipherSuites");
                String[] strArr = hg0Var.f1858for;
                eg0.Cif cif = eg0.f1057public;
                enabledCipherSuites = jh0.m1340static(enabledCipherSuites2, strArr, eg0.f1053if);
            } else {
                enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            }
            if (hg0Var.f1860new != null) {
                String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
                nd0.m1872for(enabledProtocols2, "sslSocket.enabledProtocols");
                enabledProtocols = jh0.m1340static(enabledProtocols2, hg0Var.f1860new, bd0.f297do);
            } else {
                enabledProtocols = sSLSocket.getEnabledProtocols();
            }
            String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
            nd0.m1872for(supportedCipherSuites, "supportedCipherSuites");
            eg0.Cif cif2 = eg0.f1057public;
            int m1345throw = jh0.m1345throw(supportedCipherSuites, "TLS_FALLBACK_SCSV", eg0.f1053if);
            if (z2 && m1345throw != -1) {
                nd0.m1872for(enabledCipherSuites, "cipherSuitesIntersection");
                String str = supportedCipherSuites[m1345throw];
                nd0.m1872for(str, "supportedCipherSuites[indexOfFallbackScsv]");
                nd0.m1875new(enabledCipherSuites, "$this$concat");
                nd0.m1875new(str, LitePalParser.ATTR_VALUE);
                Object[] copyOf = Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
                nd0.m1872for(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                enabledCipherSuites = (String[]) copyOf;
                nd0.m1875new(enabledCipherSuites, "$this$lastIndex");
                enabledCipherSuites[enabledCipherSuites.length - 1] = str;
            }
            hg0.Cdo cdo = new hg0.Cdo(hg0Var);
            nd0.m1872for(enabledCipherSuites, "cipherSuitesIntersection");
            cdo.m1123if((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length));
            nd0.m1872for(enabledProtocols, "tlsVersionsIntersection");
            cdo.m1125try((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length));
            hg0 m1121do = cdo.m1121do();
            if (m1121do.m1118for() != null) {
                sSLSocket.setEnabledProtocols(m1121do.f1860new);
            }
            if (m1121do.m1117do() != null) {
                sSLSocket.setEnabledCipherSuites(m1121do.f1858for);
            }
            return hg0Var;
        }
        StringBuilder m1016super = Cgoto.m1016super("Unable to find acceptable protocols. isFallback=");
        m1016super.append(this.f4893for);
        m1016super.append(',');
        m1016super.append(" modes=");
        m1016super.append(this.f4895new);
        m1016super.append(',');
        m1016super.append(" supported protocols=");
        String[] enabledProtocols3 = sSLSocket.getEnabledProtocols();
        nd0.m1874if(enabledProtocols3);
        String arrays = Arrays.toString(enabledProtocols3);
        nd0.m1872for(arrays, "java.util.Arrays.toString(this)");
        m1016super.append(arrays);
        throw new UnknownServiceException(m1016super.toString());
    }
}
