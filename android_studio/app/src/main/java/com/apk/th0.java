package com.apk;

import com.apk.ug0;
import com.baidu.tts.loopj.HttpGet;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* compiled from: ConnectInterceptor.kt */
/* loaded from: classes7.dex */
public final class th0 implements ug0 {

    /* renamed from: do  reason: not valid java name */
    public static final th0 f4703do = new th0();

    @Override // com.apk.ug0
    @NotNull
    /* renamed from: do */
    public ch0 mo678do(@NotNull ug0.Cdo cdo) throws IOException {
        nd0.m1875new(cdo, "chain");
        mi0 mi0Var = (mi0) cdo;
        xh0 xh0Var = mi0Var.f3058if;
        if (xh0Var != null) {
            nd0.m1875new(mi0Var, "chain");
            synchronized (xh0Var) {
                if (xh0Var.f5605class) {
                    if (!xh0Var.f5604catch) {
                        if (!(!xh0Var.f5602break)) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                    } else {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                } else {
                    throw new IllegalStateException("released".toString());
                }
            }
            wh0 wh0Var = xh0Var.f5603case;
            nd0.m1874if(wh0Var);
            xg0 xg0Var = xh0Var.f5617throw;
            nd0.m1875new(xg0Var, "client");
            nd0.m1875new(mi0Var, "chain");
            try {
                vh0 vh0Var = new vh0(xh0Var, xh0Var.f5612if, wh0Var, wh0Var.m2910do(mi0Var.f3055else, mi0Var.f3057goto, mi0Var.f3060this, xg0Var.f5561package, xg0Var.f5545case, !nd0.m1870do(mi0Var.f3053case.f6186for, HttpGet.METHOD_NAME)).m182class(xg0Var, mi0Var));
                xh0Var.f5616this = vh0Var;
                xh0Var.f5609final = vh0Var;
                synchronized (xh0Var) {
                    xh0Var.f5602break = true;
                    xh0Var.f5604catch = true;
                }
                if (!xh0Var.f5606const) {
                    return mi0.m1720new(mi0Var, 0, vh0Var, null, 0, 0, 0, 61).mo1721do(mi0Var.f3053case);
                }
                throw new IOException("Canceled");
            } catch (ei0 e) {
                wh0Var.m2911for(e.f1070do);
                throw e;
            } catch (IOException e2) {
                wh0Var.m2911for(e2);
                throw new ei0(e2);
            }
        }
        throw null;
    }
}
