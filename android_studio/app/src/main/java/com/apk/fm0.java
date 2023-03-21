package com.apk;

import android.util.Log;
import java.util.logging.Level;

/* compiled from: AndroidLogger.java */
/* loaded from: classes7.dex */
public class fm0 implements vl0 {

    /* renamed from: if  reason: not valid java name */
    public static final boolean f1403if;

    /* renamed from: do  reason: not valid java name */
    public final String f1404do;

    static {
        boolean z;
        try {
            Class.forName("android.util.Log");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        f1403if = z;
    }

    public fm0(String str) {
        this.f1404do = str;
    }

    @Override // com.apk.vl0
    /* renamed from: do  reason: not valid java name */
    public void mo864do(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(m865for(level), this.f1404do, str);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final int m865for(Level level) {
        int intValue = level.intValue();
        if (intValue < 800) {
            return intValue < 500 ? 2 : 3;
        } else if (intValue < 900) {
            return 4;
        } else {
            return intValue < 1000 ? 5 : 6;
        }
    }

    @Override // com.apk.vl0
    /* renamed from: if  reason: not valid java name */
    public void mo866if(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            int m865for = m865for(level);
            String str2 = this.f1404do;
            StringBuilder m1025while = Cgoto.m1025while(str, "\n");
            m1025while.append(Log.getStackTraceString(th));
            Log.println(m865for, str2, m1025while.toString());
        }
    }
}
