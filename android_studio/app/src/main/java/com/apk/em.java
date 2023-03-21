package com.apk;

import android.content.Context;
import com.apk.cm;
import java.io.File;

/* compiled from: InternalCacheDiskCacheFactory.java */
/* loaded from: classes8.dex */
public class em implements cm.Cif {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Context f1092do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f1093if;

    public em(Context context, String str) {
        this.f1092do = context;
        this.f1093if = str;
    }

    @Override // com.apk.cm.Cif
    /* renamed from: do */
    public File mo364do() {
        File cacheDir = this.f1092do.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        return this.f1093if != null ? new File(cacheDir, this.f1093if) : cacheDir;
    }
}
