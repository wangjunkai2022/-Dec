package com.apk;

/* compiled from: StateVerifier.java */
/* loaded from: classes8.dex */
public abstract class ks {

    /* compiled from: StateVerifier.java */
    /* renamed from: com.apk.ks$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends ks {

        /* renamed from: do  reason: not valid java name */
        public volatile boolean f2660do;

        public Cif() {
            super(null);
        }

        @Override // com.apk.ks
        /* renamed from: do */
        public void mo1555do() {
            if (this.f2660do) {
                throw new IllegalStateException("Already released");
            }
        }
    }

    public ks(Cdo cdo) {
    }

    /* renamed from: do  reason: not valid java name */
    public abstract void mo1555do();
}
