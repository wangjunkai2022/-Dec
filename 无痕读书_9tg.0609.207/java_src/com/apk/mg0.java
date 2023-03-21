package com.apk;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dns.kt */
/* loaded from: classes7.dex */
public final class mg0 implements ng0 {
    @Override // com.apk.ng0
    @NotNull
    public List<InetAddress> lookup(@NotNull String str) {
        nd0.m1875new(str, "hostname");
        try {
            InetAddress[] allByName = InetAddress.getAllByName(str);
            nd0.m1872for(allByName, "InetAddress.getAllByName(hostname)");
            nd0.m1875new(allByName, "$this$toList");
            int length = allByName.length;
            if (length != 0) {
                if (length != 1) {
                    nd0.m1875new(allByName, "$this$toMutableList");
                    nd0.m1875new(allByName, "$this$asCollection");
                    return new ArrayList(new sc0(allByName, false));
                }
                return sb0.m2406continue(allByName[0]);
            }
            return xc0.f5512do;
        } catch (NullPointerException e) {
            UnknownHostException unknownHostException = new UnknownHostException(Cgoto.m989case("Broken system behaviour for dns lookup of ", str));
            unknownHostException.initCause(e);
            throw unknownHostException;
        }
    }
}
