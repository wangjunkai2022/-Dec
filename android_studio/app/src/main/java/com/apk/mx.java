package com.apk;

/* JADX WARN: Incorrect class signature, class is equals to this class: <T:Ljava/lang/Object;>Ljava/lang/Object;Lcom/apk/mx<TT;>; */
/* compiled from: AbsCallback.java */
/* loaded from: classes8.dex */
public abstract class mx<T> implements nx {
    public void downloadProgress(hy hyVar) {
    }

    public void onCacheSuccess(iy<T> iyVar) {
    }

    public void onError(iy<T> iyVar) {
        Throwable th = iyVar.f2264if;
        if (th != null) {
            th.printStackTrace();
        }
    }

    public void onFinish(iy<T> iyVar) {
    }

    public void onStart(qy<T, ? extends qy> qyVar) {
    }

    public abstract void onSuccess(iy<T> iyVar);

    public void uploadProgress(hy hyVar) {
    }
}
