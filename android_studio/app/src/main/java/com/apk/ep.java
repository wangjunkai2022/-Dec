package com.apk;

import java.io.File;

/* JADX WARN: Incorrect class signature, class is equals to this class: Lcom/apk/ep<Ljava/io/File;>; */
/* compiled from: FileResource.java */
/* loaded from: classes8.dex */
public class ep implements gl {

    /* renamed from: do  reason: not valid java name */
    public final T f1115do;

    /* JADX WARN: Multi-variable type inference failed */
    public ep(File file) {
        eg.m593else(file, "Argument must not be null");
        this.f1115do = file;
    }

    @Override // com.apk.gl
    /* renamed from: do */
    public void mo65do() {
    }

    @Override // com.apk.gl
    /* renamed from: for */
    public final int mo66for() {
        return 1;
    }

    @Override // com.apk.gl
    public final Object get() {
        return this.f1115do;
    }

    @Override // com.apk.gl
    /* renamed from: new */
    public Class mo68new() {
        return this.f1115do.getClass();
    }
}
