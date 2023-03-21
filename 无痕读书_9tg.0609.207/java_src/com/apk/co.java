package com.apk;
/* compiled from: DownsampleStrategy.java */
/* loaded from: classes8.dex */
public abstract class co {

    /* renamed from: case  reason: not valid java name */
    public static final lj<co> f684case;

    /* renamed from: else  reason: not valid java name */
    public static final boolean f686else;

    /* renamed from: try  reason: not valid java name */
    public static final co f690try;

    /* renamed from: do  reason: not valid java name */
    public static final co f685do = new Cfor();

    /* renamed from: if  reason: not valid java name */
    public static final co f688if = new Cdo();

    /* renamed from: for  reason: not valid java name */
    public static final co f687for = new Cif();

    /* renamed from: new  reason: not valid java name */
    public static final co f689new = new Cnew();

    /* compiled from: DownsampleStrategy.java */
    /* renamed from: com.apk.co$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends co {
        @Override // com.apk.co
        /* renamed from: do */
        public Ctry mo374do(int i, int i2, int i3, int i4) {
            if (mo375if(i, i2, i3, i4) == 1.0f) {
                return Ctry.QUALITY;
            }
            return co.f685do.mo374do(i, i2, i3, i4);
        }

        @Override // com.apk.co
        /* renamed from: if */
        public float mo375if(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, co.f685do.mo375if(i, i2, i3, i4));
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* renamed from: com.apk.co$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends co {
        @Override // com.apk.co
        /* renamed from: do */
        public Ctry mo374do(int i, int i2, int i3, int i4) {
            if (co.f686else) {
                return Ctry.QUALITY;
            }
            return Ctry.MEMORY;
        }

        @Override // com.apk.co
        /* renamed from: if */
        public float mo375if(int i, int i2, int i3, int i4) {
            if (co.f686else) {
                return Math.min(i3 / i, i4 / i2);
            }
            int max = Math.max(i2 / i4, i / i3);
            if (max == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(max);
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* renamed from: com.apk.co$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends co {
        @Override // com.apk.co
        /* renamed from: do */
        public Ctry mo374do(int i, int i2, int i3, int i4) {
            return Ctry.QUALITY;
        }

        @Override // com.apk.co
        /* renamed from: if */
        public float mo375if(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* renamed from: com.apk.co$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew extends co {
        @Override // com.apk.co
        /* renamed from: do */
        public Ctry mo374do(int i, int i2, int i3, int i4) {
            return Ctry.QUALITY;
        }

        @Override // com.apk.co
        /* renamed from: if */
        public float mo375if(int i, int i2, int i3, int i4) {
            return 1.0f;
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* renamed from: com.apk.co$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Ctry {
        MEMORY,
        QUALITY
    }

    static {
        co coVar = f687for;
        f690try = coVar;
        f684case = lj.m1635do("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", coVar);
        f686else = true;
    }

    /* renamed from: do  reason: not valid java name */
    public abstract Ctry mo374do(int i, int i2, int i3, int i4);

    /* renamed from: if  reason: not valid java name */
    public abstract float mo375if(int i, int i2, int i3, int i4);
}
