package com.apk;

/* compiled from: DiskCacheStrategy.java */
/* loaded from: classes8.dex */
public abstract class uk {

    /* renamed from: do  reason: not valid java name */
    public static final uk f4909do = new Cdo();

    /* renamed from: if  reason: not valid java name */
    public static final uk f4911if = new Cif();

    /* renamed from: for  reason: not valid java name */
    public static final uk f4910for = new Cfor();

    /* compiled from: DiskCacheStrategy.java */
    /* renamed from: com.apk.uk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends uk {
        @Override // com.apk.uk
        /* renamed from: do */
        public boolean mo2710do() {
            return false;
        }

        @Override // com.apk.uk
        /* renamed from: for */
        public boolean mo2711for(dj djVar) {
            return false;
        }

        @Override // com.apk.uk
        /* renamed from: if */
        public boolean mo2712if() {
            return false;
        }

        @Override // com.apk.uk
        /* renamed from: new */
        public boolean mo2713new(boolean z, dj djVar, fj fjVar) {
            return false;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* renamed from: com.apk.uk$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends uk {
        @Override // com.apk.uk
        /* renamed from: do */
        public boolean mo2710do() {
            return true;
        }

        @Override // com.apk.uk
        /* renamed from: for */
        public boolean mo2711for(dj djVar) {
            return djVar == dj.REMOTE;
        }

        @Override // com.apk.uk
        /* renamed from: if */
        public boolean mo2712if() {
            return true;
        }

        @Override // com.apk.uk
        /* renamed from: new */
        public boolean mo2713new(boolean z, dj djVar, fj fjVar) {
            return ((z && djVar == dj.DATA_DISK_CACHE) || djVar == dj.LOCAL) && fjVar == fj.TRANSFORMED;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* renamed from: com.apk.uk$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends uk {
        @Override // com.apk.uk
        /* renamed from: do */
        public boolean mo2710do() {
            return true;
        }

        @Override // com.apk.uk
        /* renamed from: for */
        public boolean mo2711for(dj djVar) {
            return (djVar == dj.DATA_DISK_CACHE || djVar == dj.MEMORY_CACHE) ? false : true;
        }

        @Override // com.apk.uk
        /* renamed from: if */
        public boolean mo2712if() {
            return false;
        }

        @Override // com.apk.uk
        /* renamed from: new */
        public boolean mo2713new(boolean z, dj djVar, fj fjVar) {
            return false;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public abstract boolean mo2710do();

    /* renamed from: for  reason: not valid java name */
    public abstract boolean mo2711for(dj djVar);

    /* renamed from: if  reason: not valid java name */
    public abstract boolean mo2712if();

    /* renamed from: new  reason: not valid java name */
    public abstract boolean mo2713new(boolean z, dj djVar, fj fjVar);
}
