package com.apk;

import androidx.annotation.NonNull;
import com.apk.xg0;
import com.apk.ym;
import com.apk.zf0;
import java.io.InputStream;

/* compiled from: OkHttpUrlLoader.java */
/* loaded from: classes8.dex */
public class aj implements ym<rm, InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final zf0.Cdo f93do;

    /* compiled from: OkHttpUrlLoader.java */
    /* renamed from: com.apk.aj$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<rm, InputStream> {

        /* renamed from: if  reason: not valid java name */
        public static volatile zf0.Cdo f94if;

        /* renamed from: do  reason: not valid java name */
        public final zf0.Cdo f95do;

        public Cdo() {
            if (f94if == null) {
                synchronized (Cdo.class) {
                    if (f94if == null) {
                        f94if = new xg0(new xg0.Cdo());
                    }
                }
            }
            this.f95do = f94if;
        }

        @Override // com.apk.zm
        /* renamed from: do  reason: not valid java name */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for  reason: not valid java name */
        public ym<rm, InputStream> mo55for(cn cnVar) {
            return new aj(this.f95do);
        }
    }

    public aj(@NonNull zf0.Cdo cdo) {
        this.f93do = cdo;
    }

    @Override // com.apk.ym
    /* renamed from: do  reason: not valid java name */
    public boolean mo52do(@NonNull rm rmVar) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if  reason: not valid java name */
    public ym.Cdo<InputStream> mo53if(@NonNull rm rmVar, int i, int i2, @NonNull mj mjVar) {
        rm rmVar2 = rmVar;
        return new ym.Cdo<>(rmVar2, new zi(this.f93do, rmVar2));
    }
}
