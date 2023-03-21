package com.apk;

import com.apk.tg0;
import com.baidu.tts.client.SpeechSynthesizer;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Address.kt */
/* loaded from: classes7.dex */
public final class uf0 {
    @Nullable

    /* renamed from: break  reason: not valid java name */
    public final Proxy f4877break;
    @Nullable

    /* renamed from: case  reason: not valid java name */
    public final SSLSocketFactory f4878case;
    @NotNull

    /* renamed from: catch  reason: not valid java name */
    public final ProxySelector f4879catch;
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final tg0 f4880do;
    @Nullable

    /* renamed from: else  reason: not valid java name */
    public final HostnameVerifier f4881else;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final List<hg0> f4882for;
    @Nullable

    /* renamed from: goto  reason: not valid java name */
    public final bg0 f4883goto;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final List<yg0> f4884if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final ng0 f4885new;
    @NotNull

    /* renamed from: this  reason: not valid java name */
    public final wf0 f4886this;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public final SocketFactory f4887try;

    public uf0(@NotNull String str, int i, @NotNull ng0 ng0Var, @NotNull SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable bg0 bg0Var, @NotNull wf0 wf0Var, @Nullable Proxy proxy, @NotNull List<? extends yg0> list, @NotNull List<hg0> list2, @NotNull ProxySelector proxySelector) {
        nd0.m1875new(str, "uriHost");
        nd0.m1875new(ng0Var, "dns");
        nd0.m1875new(socketFactory, "socketFactory");
        nd0.m1875new(wf0Var, "proxyAuthenticator");
        nd0.m1875new(list, "protocols");
        nd0.m1875new(list2, "connectionSpecs");
        nd0.m1875new(proxySelector, "proxySelector");
        this.f4885new = ng0Var;
        this.f4887try = socketFactory;
        this.f4878case = sSLSocketFactory;
        this.f4881else = hostnameVerifier;
        this.f4883goto = bg0Var;
        this.f4886this = wf0Var;
        this.f4877break = proxy;
        this.f4879catch = proxySelector;
        tg0.Cdo cdo = new tg0.Cdo();
        String str2 = this.f4878case != null ? SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS : SpeechSynthesizer.REQUEST_PROTOCOL_HTTP;
        nd0.m1875new(str2, "scheme");
        boolean z = true;
        if (ie0.m1203new(str2, SpeechSynthesizer.REQUEST_PROTOCOL_HTTP, true)) {
            cdo.f4692do = SpeechSynthesizer.REQUEST_PROTOCOL_HTTP;
        } else if (!ie0.m1203new(str2, SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS, true)) {
            throw new IllegalArgumentException(Cgoto.m989case("unexpected scheme: ", str2));
        } else {
            cdo.f4692do = SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS;
        }
        nd0.m1875new(str, "host");
        String o = sb0.o(tg0.Cif.m2601for(tg0.f4680catch, str, 0, 0, false, 7));
        if (o != null) {
            cdo.f4697new = o;
            if ((1 > i || 65535 < i) ? false : false) {
                cdo.f4698try = i;
                this.f4880do = cdo.m2596do();
                this.f4884if = jh0.m1320continue(list);
                this.f4882for = jh0.m1320continue(list2);
                return;
            }
            throw new IllegalArgumentException(Cgoto.m1003implements("unexpected port: ", i).toString());
        }
        throw new IllegalArgumentException(Cgoto.m989case("unexpected host: ", str));
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m2702do(@NotNull uf0 uf0Var) {
        nd0.m1875new(uf0Var, "that");
        return nd0.m1870do(this.f4885new, uf0Var.f4885new) && nd0.m1870do(this.f4886this, uf0Var.f4886this) && nd0.m1870do(this.f4884if, uf0Var.f4884if) && nd0.m1870do(this.f4882for, uf0Var.f4882for) && nd0.m1870do(this.f4879catch, uf0Var.f4879catch) && nd0.m1870do(this.f4877break, uf0Var.f4877break) && nd0.m1870do(this.f4878case, uf0Var.f4878case) && nd0.m1870do(this.f4881else, uf0Var.f4881else) && nd0.m1870do(this.f4883goto, uf0Var.f4883goto) && this.f4880do.f4681case == uf0Var.f4880do.f4681case;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof uf0) {
            uf0 uf0Var = (uf0) obj;
            if (nd0.m1870do(this.f4880do, uf0Var.f4880do) && m2702do(uf0Var)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f4885new.hashCode();
        int hashCode2 = this.f4886this.hashCode();
        int hashCode3 = this.f4884if.hashCode();
        int hashCode4 = this.f4882for.hashCode();
        int hashCode5 = this.f4879catch.hashCode();
        int hashCode6 = Objects.hashCode(this.f4877break);
        int hashCode7 = Objects.hashCode(this.f4878case);
        int hashCode8 = Objects.hashCode(this.f4881else);
        return Objects.hashCode(this.f4883goto) + ((hashCode8 + ((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + ((this.f4880do.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super;
        Object obj;
        StringBuilder m1016super2 = Cgoto.m1016super("Address{");
        m1016super2.append(this.f4880do.f4689try);
        m1016super2.append(':');
        m1016super2.append(this.f4880do.f4681case);
        m1016super2.append(", ");
        if (this.f4877break != null) {
            m1016super = Cgoto.m1016super("proxy=");
            obj = this.f4877break;
        } else {
            m1016super = Cgoto.m1016super("proxySelector=");
            obj = this.f4879catch;
        }
        m1016super.append(obj);
        m1016super2.append(m1016super.toString());
        m1016super2.append("}");
        return m1016super2.toString();
    }
}
