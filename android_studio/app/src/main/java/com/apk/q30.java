package com.apk;

import androidx.annotation.NonNull;
import com.apk.xg0;
import com.apk.ym;
import com.apk.zf0;
import java.io.InputStream;

/* compiled from: DesOkHttpUrlLoader.java */
/* loaded from: classes8.dex */
public class q30 implements ym<rm, InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final zf0.Cdo f3793do;

    /* compiled from: DesOkHttpUrlLoader.java */
    /* renamed from: com.apk.q30$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<rm, InputStream> {

        /* renamed from: if  reason: not valid java name */
        public static volatile zf0.Cdo f3794if;

        /* renamed from: do  reason: not valid java name */
        public final zf0.Cdo f3795do;

        public Cdo() {
            if (f3794if == null) {
                synchronized (Cdo.class) {
                    if (f3794if == null) {
                        f3794if = new xg0(new xg0.Cdo());
                    }
                }
            }
            this.f3795do = f3794if;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<rm, InputStream> mo55for(cn cnVar) {
            return new q30(this.f3795do);
        }
    }

    public q30(@NonNull zf0.Cdo cdo) {
        this.f3793do = cdo;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull rm rmVar) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<InputStream> mo53if(@NonNull rm rmVar, int i, int i2, @NonNull mj mjVar) {
        rm rmVar2 = rmVar;
        return new ym.Cdo<>(new vr(rmVar2), new p30(this.f3793do, rmVar2));
    }
}
