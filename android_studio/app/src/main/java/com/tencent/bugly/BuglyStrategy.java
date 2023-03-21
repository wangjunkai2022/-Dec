package com.tencent.bugly;

import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class BuglyStrategy {
    public String c;
    public String d;
    public String e;
    public long f;
    public String g;
    public String h;
    public String i;
    public a u;
    public boolean j = true;
    public boolean k = true;
    public boolean l = false;
    public boolean m = false;
    public boolean n = true;
    public Class<?> o = null;
    public boolean p = true;
    public boolean q = true;
    public boolean r = true;
    public boolean s = true;
    public boolean t = false;

    /* renamed from: a  reason: collision with root package name */
    public int f12015a = 31;
    public boolean b = false;
    public boolean v = false;

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public static class a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 100000;

        public synchronized Map<String, String> onCrashHandleStart(int i, String str, String str2, String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i, String str, String str2, String str3) {
            return null;
        }
    }

    public synchronized String getAppChannel() {
        if (this.d == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().k;
        }
        return this.d;
    }

    public synchronized String getAppPackageName() {
        if (this.e == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().c;
        }
        return this.e;
    }

    public synchronized long getAppReportDelay() {
        return this.f;
    }

    public synchronized String getAppVersion() {
        if (this.c == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().i;
        }
        return this.c;
    }

    public synchronized int getCallBackType() {
        return this.f12015a;
    }

    public synchronized boolean getCloseErrorCallback() {
        return this.b;
    }

    public synchronized a getCrashHandleCallback() {
        return this.u;
    }

    public synchronized String getDeviceID() {
        return this.h;
    }

    public synchronized String getDeviceModel() {
        return this.i;
    }

    public synchronized String getLibBuglySOFilePath() {
        return this.g;
    }

    public synchronized Class<?> getUserInfoActivity() {
        return this.o;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.p;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.k;
    }

    public synchronized boolean isEnableCatchAnrTrace() {
        return this.l;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.j;
    }

    public boolean isEnableRecordAnrMainStack() {
        return this.m;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.n;
    }

    public boolean isMerged() {
        return this.v;
    }

    public boolean isReplaceOldChannel() {
        return this.q;
    }

    public synchronized boolean isUploadProcess() {
        return this.r;
    }

    public synchronized boolean isUploadSpotCrash() {
        return this.s;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.t;
    }

    public synchronized BuglyStrategy setAppChannel(String str) {
        this.d = str;
        return this;
    }

    public synchronized BuglyStrategy setAppPackageName(String str) {
        this.e = str;
        return this;
    }

    public synchronized BuglyStrategy setAppReportDelay(long j) {
        this.f = j;
        return this;
    }

    public synchronized BuglyStrategy setAppVersion(String str) {
        this.c = str;
        return this;
    }

    public synchronized BuglyStrategy setBuglyLogUpload(boolean z) {
        this.p = z;
        return this;
    }

    public synchronized void setCallBackType(int i) {
        this.f12015a = i;
    }

    public synchronized void setCloseErrorCallback(boolean z) {
        this.b = z;
    }

    public synchronized BuglyStrategy setCrashHandleCallback(a aVar) {
        this.u = aVar;
        return this;
    }

    public synchronized BuglyStrategy setDeviceID(String str) {
        this.h = str;
        return this;
    }

    public synchronized BuglyStrategy setDeviceModel(String str) {
        this.i = str;
        return this;
    }

    public synchronized BuglyStrategy setEnableANRCrashMonitor(boolean z) {
        this.k = z;
        return this;
    }

    public void setEnableCatchAnrTrace(boolean z) {
        this.l = z;
    }

    public synchronized BuglyStrategy setEnableNativeCrashMonitor(boolean z) {
        this.j = z;
        return this;
    }

    public void setEnableRecordAnrMainStack(boolean z) {
        this.m = z;
    }

    public synchronized BuglyStrategy setEnableUserInfo(boolean z) {
        this.n = z;
        return this;
    }

    public synchronized BuglyStrategy setLibBuglySOFilePath(String str) {
        this.g = str;
        return this;
    }

    @Deprecated
    public void setMerged(boolean z) {
        this.v = z;
    }

    public synchronized BuglyStrategy setRecordUserInfoOnceADay(boolean z) {
        this.t = z;
        return this;
    }

    public void setReplaceOldChannel(boolean z) {
        this.q = z;
    }

    public synchronized BuglyStrategy setUploadProcess(boolean z) {
        this.r = z;
        return this;
    }

    public synchronized void setUploadSpotCrash(boolean z) {
        this.s = z;
    }

    public synchronized BuglyStrategy setUserInfoActivity(Class<?> cls) {
        this.o = cls;
        return this;
    }
}
