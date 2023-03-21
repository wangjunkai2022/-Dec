package com.apk;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;

/* compiled from: JavaNetAuthenticator.kt */
/* loaded from: classes7.dex */
public final class lh0 implements wf0 {

    /* renamed from: if  reason: not valid java name */
    public final ng0 f2806if;

    public lh0(ng0 ng0Var, int i) {
        ng0 ng0Var2 = (i & 1) != 0 ? ng0.f3226do : null;
        nd0.m1875new(ng0Var2, "defaultDns");
        this.f2806if = ng0Var2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    @Override // com.apk.wf0
    @org.jetbrains.annotations.Nullable
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.apk.zg0 mo1632do(@org.jetbrains.annotations.Nullable com.apk.fh0 r21, @org.jetbrains.annotations.NotNull com.apk.ch0 r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 365
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.lh0.mo1632do(com.apk.fh0, com.apk.ch0):com.apk.zg0");
    }

    /* renamed from: if  reason: not valid java name */
    public final InetAddress m1633if(Proxy proxy, tg0 tg0Var, ng0 ng0Var) throws IOException {
        Proxy.Type type = proxy.type();
        if (type == null || kh0.f2571do[type.ordinal()] != 1) {
            SocketAddress address = proxy.address();
            if (address != null) {
                InetAddress address2 = ((InetSocketAddress) address).getAddress();
                nd0.m1872for(address2, "(address() as InetSocketAddress).address");
                return address2;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.net.InetSocketAddress");
        }
        return (InetAddress) uc0.m2701try(ng0Var.lookup(tg0Var.f4689try));
    }
}
