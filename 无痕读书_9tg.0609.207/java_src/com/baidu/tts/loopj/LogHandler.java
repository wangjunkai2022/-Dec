package com.baidu.tts.loopj;

import android.annotation.TargetApi;
import android.os.Build;
import android.util.Log;
/* loaded from: classes8.dex */
public class LogHandler implements LogInterface {
    public boolean mLoggingEnabled = true;
    public int mLoggingLevel = 2;

    @TargetApi(8)
    private void checkedWtf(String str, String str2, Throwable th) {
        Log.wtf(str, str2, th);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void d(String str, String str2) {
        log(2, str, str2);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void e(String str, String str2) {
        log(6, str, str2);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public int getLoggingLevel() {
        return this.mLoggingLevel;
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void i(String str, String str2) {
        log(4, str, str2);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public boolean isLoggingEnabled() {
        return this.mLoggingEnabled;
    }

    public void log(int i, String str, String str2) {
        logWithThrowable(i, str, str2, null);
    }

    public void logWithThrowable(int i, String str, String str2, Throwable th) {
        if (isLoggingEnabled() && shouldLog(i) && i == 8 && Integer.valueOf(Build.VERSION.SDK).intValue() > 8) {
            checkedWtf(str, str2, th);
        }
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void setLoggingEnabled(boolean z) {
        this.mLoggingEnabled = z;
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void setLoggingLevel(int i) {
        this.mLoggingLevel = i;
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public boolean shouldLog(int i) {
        return i >= this.mLoggingLevel;
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void v(String str, String str2) {
        log(2, str, str2);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void w(String str, String str2) {
        log(5, str, str2);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void wtf(String str, String str2) {
        log(8, str, str2);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void d(String str, String str2, Throwable th) {
        logWithThrowable(3, str, str2, th);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void e(String str, String str2, Throwable th) {
        logWithThrowable(6, str, str2, th);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void i(String str, String str2, Throwable th) {
        logWithThrowable(4, str, str2, th);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void v(String str, String str2, Throwable th) {
        logWithThrowable(2, str, str2, th);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void w(String str, String str2, Throwable th) {
        logWithThrowable(5, str, str2, th);
    }

    @Override // com.baidu.tts.loopj.LogInterface
    public void wtf(String str, String str2, Throwable th) {
        logWithThrowable(8, str, str2, th);
    }
}
