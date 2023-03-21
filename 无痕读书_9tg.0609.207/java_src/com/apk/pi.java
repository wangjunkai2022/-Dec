package com.apk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: RequestBuilder.java */
/* loaded from: classes8.dex */
public class pi<TranscodeType> extends xq<pi<TranscodeType>> implements Cloneable {

    /* renamed from: abstract  reason: not valid java name */
    public final li f3660abstract;
    @NonNull

    /* renamed from: continue  reason: not valid java name */
    public ri<?, ? super TranscodeType> f3661continue;

    /* renamed from: finally  reason: not valid java name */
    public final Context f3662finally;

    /* renamed from: interface  reason: not valid java name */
    public boolean f3663interface = true;

    /* renamed from: package  reason: not valid java name */
    public final qi f3664package;

    /* renamed from: private  reason: not valid java name */
    public final Class<TranscodeType> f3665private;

    /* renamed from: protected  reason: not valid java name */
    public boolean f3666protected;
    @Nullable

    /* renamed from: strictfp  reason: not valid java name */
    public Object f3667strictfp;
    @Nullable

    /* renamed from: volatile  reason: not valid java name */
    public List<cr<TranscodeType>> f3668volatile;

    /* compiled from: RequestBuilder.java */
    /* renamed from: com.apk.pi$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class Cdo {

        /* renamed from: do  reason: not valid java name */
        public static final /* synthetic */ int[] f3669do;

        /* renamed from: if  reason: not valid java name */
        public static final /* synthetic */ int[] f3670if;

        static {
            int[] iArr = new int[ni.values().length];
            f3670if = iArr;
            try {
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3670if[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3670if[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3670if[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f3669do = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3669do[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3669do[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3669do[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3669do[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3669do[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f3669do[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f3669do[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
        new dr().mo2213else(uk.f4911if).mo2225switch(ni.LOW).mo2216finally(true);
    }

    @SuppressLint({"CheckResult"})
    public pi(@NonNull ii iiVar, qi qiVar, Class<TranscodeType> cls, Context context) {
        dr drVar;
        this.f3664package = qiVar;
        this.f3665private = cls;
        this.f3662finally = context;
        li liVar = qiVar.f3867do.f2120new;
        ri<?, ?> riVar = liVar.f2809case.get(cls);
        if (riVar == null) {
            for (Map.Entry<Class<?>, ri<?, ?>> entry : liVar.f2809case.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    riVar = (ri<?, ? super TranscodeType>) entry.getValue();
                }
            }
        }
        this.f3661continue = (ri<?, ? super TranscodeType>) (riVar == null ? (ri<?, ? super TranscodeType>) li.f2807catch : riVar);
        this.f3660abstract = iiVar.f2120new;
        for (cr<Object> crVar : qiVar.f3864break) {
            mo2036continue(crVar);
        }
        synchronized (qiVar) {
            drVar = qiVar.f3866catch;
        }
        mo2037do(drVar);
    }

    @NonNull
    @CheckResult
    public pi<TranscodeType> a(@Nullable Object obj) {
        this.f3667strictfp = obj;
        this.f3666protected = true;
        return this;
    }

    @NonNull
    @CheckResult
    public pi<TranscodeType> b(@Nullable String str) {
        this.f3667strictfp = str;
        this.f3666protected = true;
        return this;
    }

    public final zq c(Object obj, pr<TranscodeType> prVar, cr<TranscodeType> crVar, xq<?> xqVar, ar arVar, ri<?, ? super TranscodeType> riVar, ni niVar, int i, int i2, Executor executor) {
        Context context = this.f3662finally;
        li liVar = this.f3660abstract;
        return new fr(context, liVar, obj, this.f3667strictfp, this.f3665private, xqVar, i, i2, niVar, prVar, crVar, this.f3668volatile, arVar, liVar.f2811else, riVar.f4057do, executor);
    }

    @NonNull
    @CheckResult
    /* renamed from: continue  reason: not valid java name */
    public pi<TranscodeType> mo2036continue(@Nullable cr<TranscodeType> crVar) {
        if (crVar != null) {
            if (this.f3668volatile == null) {
                this.f3668volatile = new ArrayList();
            }
            this.f3668volatile.add(crVar);
        }
        return this;
    }

    @NonNull
    public yq<TranscodeType> d() {
        br brVar = new br(Integer.MIN_VALUE, Integer.MIN_VALUE);
        m2045transient(brVar, brVar, this, as.f160if);
        return brVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0097  */
    @androidx.annotation.NonNull
    /* renamed from: implements  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.apk.qr<android.widget.ImageView, TranscodeType> m2038implements(@androidx.annotation.NonNull android.widget.ImageView r5) {
        /*
            r4 = this;
            com.apk.gs.m1035do()
            java.lang.String r0 = "Argument must not be null"
            com.apk.eg.m593else(r5, r0)
            int r0 = r4.f5759do
            r1 = 2048(0x800, float:2.87E-42)
            boolean r0 = com.apk.xq.m3039const(r0, r1)
            if (r0 != 0) goto L50
            boolean r0 = r4.f5762final
            if (r0 == 0) goto L50
            android.widget.ImageView$ScaleType r0 = r5.getScaleType()
            if (r0 == 0) goto L50
            int[] r0 = com.apk.pi.Cdo.f3669do
            android.widget.ImageView$ScaleType r1 = r5.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L47;
                case 2: goto L3e;
                case 3: goto L35;
                case 4: goto L35;
                case 5: goto L35;
                case 6: goto L2c;
                default: goto L2b;
            }
        L2b:
            goto L50
        L2c:
            com.apk.xq r0 = r4.mo2041new()
            com.apk.xq r0 = r0.mo2227while()
            goto L51
        L35:
            com.apk.xq r0 = r4.mo2041new()
            com.apk.xq r0 = r0.mo2219import()
            goto L51
        L3e:
            com.apk.xq r0 = r4.mo2041new()
            com.apk.xq r0 = r0.mo2227while()
            goto L51
        L47:
            com.apk.xq r0 = r4.mo2041new()
            com.apk.xq r0 = r0.mo2224super()
            goto L51
        L50:
            r0 = r4
        L51:
            com.apk.li r1 = r4.f3660abstract
            java.lang.Class<TranscodeType> r2 = r4.f3665private
            com.apk.lr r1 = r1.f2812for
            r3 = 0
            if (r1 == 0) goto L97
            java.lang.Class<android.graphics.Bitmap> r1 = android.graphics.Bitmap.class
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L68
            com.apk.hr r1 = new com.apk.hr
            r1.<init>(r5)
            goto L75
        L68:
            java.lang.Class<android.graphics.drawable.Drawable> r1 = android.graphics.drawable.Drawable.class
            boolean r1 = r1.isAssignableFrom(r2)
            if (r1 == 0) goto L7b
            com.apk.jr r1 = new com.apk.jr
            r1.<init>(r5)
        L75:
            java.util.concurrent.Executor r5 = com.apk.as.f159do
            r4.m2045transient(r1, r3, r0, r5)
            return r1
        L7b:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unhandled class: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r1 = ", try .as*(Class).transcode(ResourceTranscoder)"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        L97:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.pi.m2038implements(android.widget.ImageView):com.apk.qr");
    }

    @NonNull
    @CheckResult
    /* renamed from: instanceof  reason: not valid java name */
    public pi<TranscodeType> mo2039instanceof(@Nullable cr<TranscodeType> crVar) {
        this.f3668volatile = null;
        return mo2036continue(crVar);
    }

    @Override // com.apk.xq
    @CheckResult
    /* renamed from: interface  reason: not valid java name */
    public pi<TranscodeType> mo2041new() {
        pi<TranscodeType> piVar = (pi) super.clone();
        piVar.f3661continue = (ri<?, ? super TranscodeType>) piVar.f3661continue.m2274do();
        return piVar;
    }

    @NonNull
    /* renamed from: protected  reason: not valid java name */
    public <Y extends pr<TranscodeType>> Y m2042protected(@NonNull Y y) {
        m2045transient(y, null, this, as.f159do);
        return y;
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: strictfp  reason: not valid java name */
    public pi<TranscodeType> mo2037do(@NonNull xq<?> xqVar) {
        eg.m593else(xqVar, "Argument must not be null");
        return (pi) super.mo2037do(xqVar);
    }

    @NonNull
    @CheckResult
    /* renamed from: synchronized  reason: not valid java name */
    public pi<TranscodeType> mo2044synchronized(@Nullable File file) {
        this.f3667strictfp = file;
        this.f3666protected = true;
        return this;
    }

    /* renamed from: transient  reason: not valid java name */
    public final <Y extends pr<TranscodeType>> Y m2045transient(@NonNull Y y, @Nullable cr<TranscodeType> crVar, xq<?> xqVar, Executor executor) {
        eg.m593else(y, "Argument must not be null");
        if (this.f3666protected) {
            zq m2046volatile = m2046volatile(new Object(), y, crVar, null, this.f3661continue, xqVar.f5768new, xqVar.f5755catch, xqVar.f5753break, xqVar, executor);
            zq mo274goto = y.mo274goto();
            fr frVar = (fr) m2046volatile;
            if (frVar.m876break(mo274goto)) {
                if (!(!xqVar.f5774this && mo274goto.mo891try())) {
                    eg.m593else(mo274goto, "Argument must not be null");
                    if (!mo274goto.isRunning()) {
                        mo274goto.mo887new();
                    }
                    return y;
                }
            }
            this.f3664package.m2132const(y);
            y.mo273for(m2046volatile);
            qi qiVar = this.f3664package;
            synchronized (qiVar) {
                qiVar.f3865case.f2878do.add(y);
                jq jqVar = qiVar.f3872new;
                jqVar.f2402do.add(m2046volatile);
                if (!jqVar.f2403for) {
                    frVar.mo887new();
                } else {
                    frVar.clear();
                    jqVar.f2404if.add(m2046volatile);
                }
            }
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    /* renamed from: volatile  reason: not valid java name */
    public final zq m2046volatile(Object obj, pr<TranscodeType> prVar, @Nullable cr<TranscodeType> crVar, @Nullable ar arVar, ri<?, ? super TranscodeType> riVar, ni niVar, int i, int i2, xq<?> xqVar, Executor executor) {
        return c(obj, prVar, crVar, xqVar, null, riVar, niVar, i, i2, executor);
    }
}
