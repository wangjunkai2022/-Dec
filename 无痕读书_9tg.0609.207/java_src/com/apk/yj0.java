package com.apk;

import android.util.Log;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidLog.kt */
/* loaded from: classes7.dex */
public final class yj0 extends Handler {

    /* renamed from: do  reason: not valid java name */
    public static final yj0 f5972do = new yj0();

    @Override // java.util.logging.Handler
    public void close() {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }

    @Override // java.util.logging.Handler
    public void publish(@NotNull LogRecord logRecord) {
        int i;
        int min;
        nd0.m1875new(logRecord, "record");
        xj0 xj0Var = xj0.f5693for;
        String loggerName = logRecord.getLoggerName();
        nd0.m1872for(loggerName, "record.loggerName");
        if (logRecord.getLevel().intValue() > Level.INFO.intValue()) {
            i = 5;
        } else {
            i = logRecord.getLevel().intValue() == Level.INFO.intValue() ? 4 : 3;
        }
        String message = logRecord.getMessage();
        nd0.m1872for(message, "record.message");
        Throwable thrown = logRecord.getThrown();
        nd0.m1875new(loggerName, "loggerName");
        nd0.m1875new(message, "message");
        String str = xj0.f5694if.get(loggerName);
        if (str == null) {
            nd0.m1875new(loggerName, "$this$take");
            int length = loggerName.length();
            str = loggerName.substring(0, 23 > length ? length : 23);
            nd0.m1872for(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        if (Log.isLoggable(str, i)) {
            if (thrown != null) {
                StringBuilder m1025while = Cgoto.m1025while(message, "\n");
                m1025while.append(Log.getStackTraceString(thrown));
                message = m1025while.toString();
            }
            int length2 = message.length();
            int i2 = 0;
            while (i2 < length2) {
                int m1209this = ie0.m1209this(message, '\n', i2, false, 4);
                if (m1209this == -1) {
                    m1209this = length2;
                }
                while (true) {
                    min = Math.min(m1209this, i2 + 4000);
                    String substring = message.substring(i2, min);
                    nd0.m1872for(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Log.println(i, str, substring);
                    if (min >= m1209this) {
                        break;
                    }
                    i2 = min;
                }
                i2 = min + 1;
            }
        }
    }
}
