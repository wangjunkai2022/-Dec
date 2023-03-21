package com.apk;

/* compiled from: ProgressRequestBody.java */
/* loaded from: classes8.dex */
public class oy implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ hy f3528do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ py f3529if;

    public oy(py pyVar, hy hyVar) {
        this.f3529if = pyVar;
        this.f3528do = hyVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        mx<T> mxVar = this.f3529if.f3763for;
        if (mxVar != 0) {
            mxVar.uploadProgress(this.f3528do);
        }
    }
}
