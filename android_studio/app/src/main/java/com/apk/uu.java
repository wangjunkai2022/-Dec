package com.apk;

/* compiled from: ManifestException.java */
/* loaded from: classes8.dex */
public final class uu extends RuntimeException {
    public uu() {
        super("No permissions are registered in the manifest file");
    }

    public uu(String str) {
        super(Cgoto.m989case(str, ": Permissions are not registered in the manifest file"));
    }
}
