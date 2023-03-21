package com.apk;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GifFrameLoader.java */
/* loaded from: classes8.dex */
public class lp {

    /* renamed from: break  reason: not valid java name */
    public Cdo f2849break;

    /* renamed from: case  reason: not valid java name */
    public boolean f2850case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f2851catch;

    /* renamed from: class  reason: not valid java name */
    public Cdo f2852class;

    /* renamed from: const  reason: not valid java name */
    public Bitmap f2853const;

    /* renamed from: do  reason: not valid java name */
    public final GifDecoder f2854do;

    /* renamed from: else  reason: not valid java name */
    public boolean f2855else;

    /* renamed from: final  reason: not valid java name */
    public Cdo f2856final;

    /* renamed from: for  reason: not valid java name */
    public final List<Cif> f2857for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f2858goto;

    /* renamed from: if  reason: not valid java name */
    public final Handler f2859if;

    /* renamed from: new  reason: not valid java name */
    public final qi f2860new;

    /* renamed from: super  reason: not valid java name */
    public int f2861super;

    /* renamed from: this  reason: not valid java name */
    public pi<Bitmap> f2862this;

    /* renamed from: throw  reason: not valid java name */
    public int f2863throw;

    /* renamed from: try  reason: not valid java name */
    public final pl f2864try;

    /* renamed from: while  reason: not valid java name */
    public int f2865while;

    /* compiled from: GifFrameLoader.java */
    @VisibleForTesting
    /* renamed from: com.apk.lp$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends ir<Bitmap> {

        /* renamed from: case  reason: not valid java name */
        public final long f2866case;

        /* renamed from: else  reason: not valid java name */
        public Bitmap f2867else;

        /* renamed from: new  reason: not valid java name */
        public final Handler f2868new;

        /* renamed from: try  reason: not valid java name */
        public final int f2869try;

        public Cdo(Handler handler, int i, long j) {
            super(Integer.MIN_VALUE, Integer.MIN_VALUE);
            this.f2868new = handler;
            this.f2869try = i;
            this.f2866case = j;
        }

        @Override // com.apk.pr
        /* renamed from: if */
        public void mo275if(@NonNull Object obj, @Nullable sr srVar) {
            this.f2867else = (Bitmap) obj;
            this.f2868new.sendMessageAtTime(this.f2868new.obtainMessage(1, this), this.f2866case);
        }

        @Override // com.apk.pr
        /* renamed from: this */
        public void mo277this(@Nullable Drawable drawable) {
            this.f2867else = null;
        }
    }

    /* compiled from: GifFrameLoader.java */
    /* renamed from: com.apk.lp$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Handler.Callback {
        public Cfor() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                lp.this.m1650if((Cdo) message.obj);
                return true;
            } else if (i == 2) {
                lp.this.f2860new.m2132const((Cdo) message.obj);
                return false;
            } else {
                return false;
            }
        }
    }

    /* compiled from: GifFrameLoader.java */
    /* renamed from: com.apk.lp$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do */
        void mo1150do();
    }

    public lp(ii iiVar, GifDecoder gifDecoder, int i, int i2, qj<Bitmap> qjVar, Bitmap bitmap) {
        pl plVar = iiVar.f2119if;
        qi m1218case = ii.m1218case(iiVar.getContext());
        pi<Bitmap> mo2037do = ii.m1218case(iiVar.getContext()).mo2129case().mo2037do(new dr().mo2213else(uk.f4909do).mo2208abstract(true).mo2216finally(true).mo2221return(i, i2));
        this.f2857for = new ArrayList();
        this.f2860new = m1218case;
        Handler handler = new Handler(Looper.getMainLooper(), new Cfor());
        this.f2864try = plVar;
        this.f2859if = handler;
        this.f2862this = mo2037do;
        this.f2854do = gifDecoder;
        m1649for(qjVar, bitmap);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1648do() {
        if (!this.f2850case || this.f2855else) {
            return;
        }
        if (this.f2858goto) {
            eg.m620try(this.f2856final == null, "Pending target must be null when starting from the first frame");
            this.f2854do.mo3077try();
            this.f2858goto = false;
        }
        Cdo cdo = this.f2856final;
        if (cdo != null) {
            this.f2856final = null;
            m1650if(cdo);
            return;
        }
        this.f2855else = true;
        long uptimeMillis = SystemClock.uptimeMillis() + this.f2854do.mo3075new();
        this.f2854do.mo3074if();
        this.f2852class = new Cdo(this.f2859if, this.f2854do.mo3069case(), uptimeMillis);
        this.f2862this.mo2037do(new dr().mo2214extends(new vr(Double.valueOf(Math.random())))).a(this.f2854do).m2042protected(this.f2852class);
    }

    /* renamed from: for  reason: not valid java name */
    public void m1649for(qj<Bitmap> qjVar, Bitmap bitmap) {
        eg.m593else(qjVar, "Argument must not be null");
        eg.m593else(bitmap, "Argument must not be null");
        this.f2853const = bitmap;
        this.f2862this = this.f2862this.mo2037do(new dr().m3041package(qjVar, true));
        this.f2861super = gs.m1031case(bitmap);
        this.f2863throw = bitmap.getWidth();
        this.f2865while = bitmap.getHeight();
    }

    @VisibleForTesting
    /* renamed from: if  reason: not valid java name */
    public void m1650if(Cdo cdo) {
        this.f2855else = false;
        if (this.f2851catch) {
            this.f2859if.obtainMessage(2, cdo).sendToTarget();
        } else if (!this.f2850case) {
            this.f2856final = cdo;
        } else {
            if (cdo.f2867else != null) {
                Bitmap bitmap = this.f2853const;
                if (bitmap != null) {
                    this.f2864try.mo868do(bitmap);
                    this.f2853const = null;
                }
                Cdo cdo2 = this.f2849break;
                this.f2849break = cdo;
                int size = this.f2857for.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    this.f2857for.get(size).mo1150do();
                }
                if (cdo2 != null) {
                    this.f2859if.obtainMessage(2, cdo2).sendToTarget();
                }
            }
            m1648do();
        }
    }
}
