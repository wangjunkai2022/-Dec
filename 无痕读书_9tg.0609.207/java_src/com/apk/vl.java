package com.apk;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: LruBitmapPool.java */
/* loaded from: classes8.dex */
public class vl implements pl {

    /* renamed from: break  reason: not valid java name */
    public static final Bitmap.Config f5159break = Bitmap.Config.ARGB_8888;

    /* renamed from: case  reason: not valid java name */
    public int f5160case;

    /* renamed from: do  reason: not valid java name */
    public final wl f5161do;

    /* renamed from: else  reason: not valid java name */
    public int f5162else;

    /* renamed from: for  reason: not valid java name */
    public final Cdo f5163for;

    /* renamed from: goto  reason: not valid java name */
    public int f5164goto;

    /* renamed from: if  reason: not valid java name */
    public final Set<Bitmap.Config> f5165if;

    /* renamed from: new  reason: not valid java name */
    public long f5166new;

    /* renamed from: this  reason: not valid java name */
    public int f5167this;

    /* renamed from: try  reason: not valid java name */
    public long f5168try;

    /* compiled from: LruBitmapPool.java */
    /* renamed from: com.apk.vl$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    /* compiled from: LruBitmapPool.java */
    /* renamed from: com.apk.vl$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif implements Cdo {
    }

    public vl(long j) {
        yl ylVar = new yl();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        hashSet.add(null);
        if (Build.VERSION.SDK_INT >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set<Bitmap.Config> unmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f5166new = j;
        this.f5161do = ylVar;
        this.f5165if = unmodifiableSet;
        this.f5163for = new Cif();
    }

    /* renamed from: case  reason: not valid java name */
    public final void m2823case() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            m2824else();
        }
    }

    @Override // com.apk.pl
    /* renamed from: do */
    public synchronized void mo868do(Bitmap bitmap) {
        try {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable() && this.f5161do.mo2928try(bitmap) <= this.f5166new && this.f5165if.contains(bitmap.getConfig())) {
                        int mo2928try = this.f5161do.mo2928try(bitmap);
                        this.f5161do.mo2924do(bitmap);
                        if (((Cif) this.f5163for) != null) {
                            this.f5164goto++;
                            this.f5168try += mo2928try;
                            if (Log.isLoggable("LruBitmapPool", 2)) {
                                this.f5161do.mo2923case(bitmap);
                            }
                            m2823case();
                            m2826this(this.f5166new);
                            return;
                        }
                        throw null;
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        this.f5161do.mo2923case(bitmap);
                        bitmap.isMutable();
                        this.f5165if.contains(bitmap.getConfig());
                    }
                    bitmap.recycle();
                    return;
                }
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            throw new NullPointerException("Bitmap must not be null");
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final void m2824else() {
        StringBuilder m1016super = Cgoto.m1016super("Hits=");
        m1016super.append(this.f5160case);
        m1016super.append(", misses=");
        m1016super.append(this.f5162else);
        m1016super.append(", puts=");
        m1016super.append(this.f5164goto);
        m1016super.append(", evictions=");
        m1016super.append(this.f5167this);
        m1016super.append(", currentSize=");
        m1016super.append(this.f5168try);
        m1016super.append(", maxSize=");
        m1016super.append(this.f5166new);
        m1016super.append("\nStrategy=");
        m1016super.append(this.f5161do);
        m1016super.toString();
    }

    @Override // com.apk.pl
    @SuppressLint({"InlinedApi"})
    /* renamed from: for */
    public void mo2050for(int i) {
        Log.isLoggable("LruBitmapPool", 3);
        if (i >= 40 || (Build.VERSION.SDK_INT >= 23 && i >= 20)) {
            m2826this(0L);
        } else if (i >= 20 || i == 15) {
            m2826this(this.f5166new / 2);
        }
    }

    @Nullable
    /* renamed from: goto  reason: not valid java name */
    public final synchronized Bitmap m2825goto(int i, int i2, @Nullable Bitmap.Config config) {
        Bitmap mo2926if;
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
        mo2926if = this.f5161do.mo2926if(i, i2, config != null ? config : f5159break);
        if (mo2926if == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                this.f5161do.mo2927new(i, i2, config);
            }
            this.f5162else++;
        } else {
            this.f5160case++;
            this.f5168try -= this.f5161do.mo2928try(mo2926if);
            if (((Cif) this.f5163for) != null) {
                mo2926if.setHasAlpha(true);
                mo2926if.setPremultiplied(true);
            } else {
                throw null;
            }
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            this.f5161do.mo2927new(i, i2, config);
        }
        m2823case();
        return mo2926if;
    }

    @Override // com.apk.pl
    @NonNull
    /* renamed from: if */
    public Bitmap mo2051if(int i, int i2, Bitmap.Config config) {
        Bitmap m2825goto = m2825goto(i, i2, config);
        if (m2825goto != null) {
            m2825goto.eraseColor(0);
            return m2825goto;
        }
        if (config == null) {
            config = f5159break;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // com.apk.pl
    /* renamed from: new */
    public void mo2052new() {
        Log.isLoggable("LruBitmapPool", 3);
        m2826this(0L);
    }

    /* renamed from: this  reason: not valid java name */
    public final synchronized void m2826this(long j) {
        while (this.f5168try > j) {
            Bitmap mo2925for = this.f5161do.mo2925for();
            if (mo2925for == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    m2824else();
                }
                this.f5168try = 0L;
                return;
            } else if (((Cif) this.f5163for) != null) {
                this.f5168try -= this.f5161do.mo2928try(mo2925for);
                this.f5167this++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    this.f5161do.mo2923case(mo2925for);
                }
                m2823case();
                mo2925for.recycle();
            } else {
                throw null;
            }
        }
    }

    @Override // com.apk.pl
    @NonNull
    /* renamed from: try */
    public Bitmap mo2053try(int i, int i2, Bitmap.Config config) {
        Bitmap m2825goto = m2825goto(i, i2, config);
        if (m2825goto == null) {
            if (config == null) {
                config = f5159break;
            }
            return Bitmap.createBitmap(i, i2, config);
        }
        return m2825goto;
    }
}
