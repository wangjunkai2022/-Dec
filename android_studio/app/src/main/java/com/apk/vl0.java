package com.apk;

import java.io.PrintStream;
import java.util.logging.Level;

/* compiled from: Logger.java */
/* loaded from: classes7.dex */
public interface vl0 {

    /* compiled from: Logger.java */
    /* renamed from: com.apk.vl0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo implements vl0 {
        @Override // com.apk.vl0
        /* renamed from: do */
        public void mo864do(Level level, String str) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
        }

        @Override // com.apk.vl0
        /* renamed from: if */
        public void mo866if(Level level, String str, Throwable th) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
            th.printStackTrace(System.out);
        }
    }

    /* renamed from: do */
    void mo864do(Level level, String str);

    /* renamed from: if */
    void mo866if(Level level, String str, Throwable th);
}
