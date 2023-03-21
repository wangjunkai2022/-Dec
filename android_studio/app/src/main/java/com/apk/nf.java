package com.apk;

import java.io.File;

/* compiled from: FileUtil.java */
/* loaded from: classes8.dex */
public final class nf implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f3208do;

    public nf(String str) {
        this.f3208do = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ze.m3176native(a6.m18else().m22if() + File.separator + this.f3208do);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
