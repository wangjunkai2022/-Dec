package com.apk;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

/* compiled from: StandardGifDecoder.java */
/* loaded from: classes8.dex */
public class yi implements GifDecoder {
    @ColorInt

    /* renamed from: break  reason: not valid java name */
    public int[] f5950break;

    /* renamed from: case  reason: not valid java name */
    public short[] f5951case;

    /* renamed from: catch  reason: not valid java name */
    public int f5952catch;

    /* renamed from: class  reason: not valid java name */
    public wi f5953class;

    /* renamed from: const  reason: not valid java name */
    public Bitmap f5954const;
    @ColorInt

    /* renamed from: do  reason: not valid java name */
    public int[] f5955do;

    /* renamed from: else  reason: not valid java name */
    public byte[] f5956else;

    /* renamed from: final  reason: not valid java name */
    public boolean f5957final;

    /* renamed from: for  reason: not valid java name */
    public final GifDecoder.Cdo f5958for;

    /* renamed from: goto  reason: not valid java name */
    public byte[] f5959goto;

    /* renamed from: import  reason: not valid java name */
    public int f5961import;
    @Nullable

    /* renamed from: native  reason: not valid java name */
    public Boolean f5962native;

    /* renamed from: new  reason: not valid java name */
    public ByteBuffer f5963new;

    /* renamed from: super  reason: not valid java name */
    public int f5965super;

    /* renamed from: this  reason: not valid java name */
    public byte[] f5966this;

    /* renamed from: throw  reason: not valid java name */
    public int f5967throw;

    /* renamed from: try  reason: not valid java name */
    public byte[] f5968try;

    /* renamed from: while  reason: not valid java name */
    public int f5969while;
    @ColorInt

    /* renamed from: if  reason: not valid java name */
    public final int[] f5960if = new int[256];
    @NonNull

    /* renamed from: public  reason: not valid java name */
    public Bitmap.Config f5964public = Bitmap.Config.ARGB_8888;

    public yi(@NonNull GifDecoder.Cdo cdo, wi wiVar, ByteBuffer byteBuffer, int i) {
        int[] iArr;
        this.f5958for = cdo;
        this.f5953class = new wi();
        synchronized (this) {
            if (i > 0) {
                int highestOneBit = Integer.highestOneBit(i);
                this.f5965super = 0;
                this.f5953class = wiVar;
                this.f5952catch = -1;
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f5963new = asReadOnlyBuffer;
                asReadOnlyBuffer.position(0);
                this.f5963new.order(ByteOrder.LITTLE_ENDIAN);
                this.f5957final = false;
                Iterator<vi> it = wiVar.f5307try.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next().f5104else == 3) {
                        this.f5957final = true;
                        break;
                    }
                }
                this.f5967throw = highestOneBit;
                this.f5961import = wiVar.f5296case / highestOneBit;
                this.f5969while = wiVar.f5301else / highestOneBit;
                this.f5966this = ((gp) this.f5958for).m1026do(wiVar.f5296case * wiVar.f5301else);
                GifDecoder.Cdo cdo2 = this.f5958for;
                int i2 = this.f5961import * this.f5969while;
                nl nlVar = ((gp) cdo2).f1619if;
                if (nlVar == null) {
                    iArr = new int[i2];
                } else {
                    iArr = (int[]) nlVar.mo1887case(i2, int[].class);
                }
                this.f5950break = iArr;
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0045, code lost:
        if (r3.f5295break == r36.f5106goto) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /* renamed from: break  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Bitmap m3068break(com.apk.vi r36, com.apk.vi r37) {
        /*
            Method dump skipped, instructions count: 1087
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.yi.m3068break(com.apk.vi, com.apk.vi):android.graphics.Bitmap");
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    /* renamed from: case  reason: not valid java name */
    public int mo3069case() {
        return this.f5952catch;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void clear() {
        nl nlVar;
        nl nlVar2;
        nl nlVar3;
        this.f5953class = null;
        byte[] bArr = this.f5966this;
        if (bArr != null && (nlVar3 = ((gp) this.f5958for).f1619if) != null) {
            nlVar3.put(bArr);
        }
        int[] iArr = this.f5950break;
        if (iArr != null && (nlVar2 = ((gp) this.f5958for).f1619if) != null) {
            nlVar2.put(iArr);
        }
        Bitmap bitmap = this.f5954const;
        if (bitmap != null) {
            ((gp) this.f5958for).f1618do.mo868do(bitmap);
        }
        this.f5954const = null;
        this.f5963new = null;
        this.f5962native = null;
        byte[] bArr2 = this.f5968try;
        if (bArr2 == null || (nlVar = ((gp) this.f5958for).f1619if) == null) {
            return;
        }
        nlVar.put(bArr2);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @Nullable
    /* renamed from: do  reason: not valid java name */
    public synchronized Bitmap mo3070do() {
        if (this.f5953class.f5302for <= 0 || this.f5952catch < 0) {
            if (Log.isLoggable("yi", 3)) {
                int i = this.f5953class.f5302for;
            }
            this.f5965super = 1;
        }
        if (this.f5965super != 1 && this.f5965super != 2) {
            this.f5965super = 0;
            if (this.f5968try == null) {
                this.f5968try = ((gp) this.f5958for).m1026do(255);
            }
            vi viVar = this.f5953class.f5307try.get(this.f5952catch);
            int i2 = this.f5952catch - 1;
            vi viVar2 = i2 >= 0 ? this.f5953class.f5307try.get(i2) : null;
            int[] iArr = viVar.f5102catch != null ? viVar.f5102catch : this.f5953class.f5300do;
            this.f5955do = iArr;
            if (iArr == null) {
                Log.isLoggable("yi", 3);
                this.f5965super = 1;
                return null;
            }
            if (viVar.f5101case) {
                System.arraycopy(iArr, 0, this.f5960if, 0, iArr.length);
                int[] iArr2 = this.f5960if;
                this.f5955do = iArr2;
                iArr2[viVar.f5106goto] = 0;
                if (viVar.f5104else == 2 && this.f5952catch == 0) {
                    this.f5962native = Boolean.TRUE;
                }
            }
            return m3068break(viVar, viVar2);
        }
        Log.isLoggable("yi", 3);
        return null;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    /* renamed from: else  reason: not valid java name */
    public int mo3071else() {
        return (this.f5950break.length * 4) + this.f5963new.limit() + this.f5966this.length;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    /* renamed from: for  reason: not valid java name */
    public int mo3072for() {
        return this.f5953class.f5302for;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @NonNull
    public ByteBuffer getData() {
        return this.f5963new;
    }

    /* renamed from: goto  reason: not valid java name */
    public final Bitmap m3073goto() {
        Boolean bool = this.f5962native;
        Bitmap.Config config = (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f5964public;
        Bitmap mo2053try = ((gp) this.f5958for).f1618do.mo2053try(this.f5961import, this.f5969while, config);
        mo2053try.setHasAlpha(true);
        return mo2053try;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    /* renamed from: if  reason: not valid java name */
    public void mo3074if() {
        this.f5952catch = (this.f5952catch + 1) % this.f5953class.f5302for;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    /* renamed from: new  reason: not valid java name */
    public int mo3075new() {
        int i;
        wi wiVar = this.f5953class;
        int i2 = wiVar.f5302for;
        if (i2 <= 0 || (i = this.f5952catch) < 0) {
            return 0;
        }
        if (i < 0 || i >= i2) {
            return -1;
        }
        return wiVar.f5307try.get(i).f5109this;
    }

    /* renamed from: this  reason: not valid java name */
    public void m3076this(@NonNull Bitmap.Config config) {
        if (config != Bitmap.Config.ARGB_8888 && config != Bitmap.Config.RGB_565) {
            throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
        }
        this.f5964public = config;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    /* renamed from: try  reason: not valid java name */
    public void mo3077try() {
        this.f5952catch = -1;
    }
}
