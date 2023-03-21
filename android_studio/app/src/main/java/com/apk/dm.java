package com.apk;

import android.util.Log;
import com.apk.bm;
import com.apk.si;
import com.apk.zl;
import java.io.File;
import java.io.IOException;

/* compiled from: DiskLruCacheWrapper.java */
/* loaded from: classes8.dex */
public class dm implements zl {

    /* renamed from: for  reason: not valid java name */
    public final long f924for;

    /* renamed from: if  reason: not valid java name */
    public final File f925if;

    /* renamed from: try  reason: not valid java name */
    public si f927try;

    /* renamed from: new  reason: not valid java name */
    public final bm f926new = new bm();

    /* renamed from: do  reason: not valid java name */
    public final jm f923do = new jm();

    @Deprecated
    public dm(File file, long j) {
        this.f925if = file;
        this.f924for = j;
    }

    @Override // com.apk.zl
    public synchronized void clear() {
        try {
            m479for().delete();
        } catch (IOException unused) {
            Log.isLoggable("DiskLruCacheWrapper", 5);
        }
        m480new();
    }

    public void delete(kj kjVar) {
        try {
            m479for().m2491volatile(this.f923do.m1357do(kjVar));
        } catch (IOException unused) {
            Log.isLoggable("DiskLruCacheWrapper", 5);
        }
    }

    @Override // com.apk.zl
    /* renamed from: do */
    public void mo73do(kj kjVar, zl.Cif cif) {
        bm.Cdo cdo;
        boolean z;
        String m1357do = this.f923do.m1357do(kjVar);
        bm bmVar = this.f926new;
        synchronized (bmVar) {
            cdo = bmVar.f358do.get(m1357do);
            if (cdo == null) {
                bm.Cif cif2 = bmVar.f359if;
                synchronized (cif2.f362do) {
                    cdo = cif2.f362do.poll();
                }
                if (cdo == null) {
                    cdo = new bm.Cdo();
                }
                bmVar.f358do.put(m1357do, cdo);
            }
            cdo.f361if++;
        }
        cdo.f360do.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                String str = "Put: Obtained: " + m1357do + " for for Key: " + kjVar;
            }
            try {
                si m479for = m479for();
                if (m479for.m2484extends(m1357do) == null) {
                    si.Cfor m2489throws = m479for.m2489throws(m1357do);
                    if (m2489throws != null) {
                        try {
                            pk pkVar = (pk) cif;
                            if (pkVar.f3677do.mo652do(pkVar.f3679if, m2489throws.m2493if(0), pkVar.f3678for)) {
                                si.m2478for(si.this, m2489throws, true);
                                m2489throws.f4382for = true;
                            }
                            if (!z) {
                                m2489throws.m2492do();
                            }
                        } finally {
                            if (!m2489throws.f4382for) {
                                try {
                                    m2489throws.m2492do();
                                } catch (IOException unused) {
                                }
                            }
                        }
                    } else {
                        throw new IllegalStateException("Had two simultaneous puts for: " + m1357do);
                    }
                }
            } catch (IOException unused2) {
            }
        } finally {
            this.f926new.m210do(m1357do);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final synchronized si m479for() throws IOException {
        if (this.f927try == null) {
            this.f927try = si.m2480package(this.f925if, 1, 1, this.f924for);
        }
        return this.f927try;
    }

    @Override // com.apk.zl
    /* renamed from: if */
    public File mo74if(kj kjVar) {
        String m1357do = this.f923do.m1357do(kjVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            String str = "Get: Obtained: " + m1357do + " for for Key: " + kjVar;
        }
        try {
            si.Ctry m2484extends = m479for().m2484extends(m1357do);
            if (m2484extends != null) {
                return m2484extends.f4393do[0];
            }
            return null;
        } catch (IOException unused) {
            Log.isLoggable("DiskLruCacheWrapper", 5);
            return null;
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final synchronized void m480new() {
        this.f927try = null;
    }
}
