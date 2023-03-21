package com.apk;

import com.apk.zl;
import java.io.File;
/* compiled from: DiskLruCacheFactory.java */
/* loaded from: classes8.dex */
public class cm implements zl.Cdo {

    /* renamed from: do  reason: not valid java name */
    public final long f666do;

    /* renamed from: if  reason: not valid java name */
    public final Cif f667if;

    /* compiled from: DiskLruCacheFactory.java */
    /* renamed from: com.apk.cm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Cif {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f668do;

        public Cdo(String str) {
            this.f668do = str;
        }

        @Override // com.apk.cm.Cif
        /* renamed from: do  reason: not valid java name */
        public File mo364do() {
            return new File(this.f668do);
        }
    }

    /* compiled from: DiskLruCacheFactory.java */
    /* renamed from: com.apk.cm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do */
        File mo364do();
    }

    public cm(String str, long j) {
        Cdo cdo = new Cdo(str);
        this.f666do = j;
        this.f667if = cdo;
    }

    public cm(Cif cif, long j) {
        this.f666do = j;
        this.f667if = cif;
    }
}
