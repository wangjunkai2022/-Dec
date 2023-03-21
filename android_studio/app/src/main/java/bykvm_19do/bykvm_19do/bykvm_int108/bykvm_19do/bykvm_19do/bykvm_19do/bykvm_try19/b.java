package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_try19;

import com.apk.Cgoto;

/* compiled from: TrackRetryRepertoryImpl.java */
/* loaded from: classes8.dex */
public class b implements a {
    public static String a() {
        StringBuilder m1004import = Cgoto.m1004import("CREATE TABLE IF NOT EXISTS ", "trackurl", " (_id INTEGER PRIMARY KEY AUTOINCREMENT,", "id", " TEXT UNIQUE,");
        Cgoto.m993continue(m1004import, "url", " TEXT ,", "replaceholder", " INTEGER default 0, ");
        return Cgoto.m998final(m1004import, "retry", " INTEGER default 0", ")");
    }
}
