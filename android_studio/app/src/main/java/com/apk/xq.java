package com.apk;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.xq;
import java.util.Map;

/* compiled from: BaseRequestOptions.java */
/* loaded from: classes8.dex */
public abstract class xq<T extends xq<T>> implements Cloneable {

    /* renamed from: case  reason: not valid java name */
    public int f5754case;

    /* renamed from: const  reason: not valid java name */
    public boolean f5757const;

    /* renamed from: do  reason: not valid java name */
    public int f5759do;
    @Nullable

    /* renamed from: else  reason: not valid java name */
    public Drawable f5760else;

    /* renamed from: extends  reason: not valid java name */
    public boolean f5761extends;

    /* renamed from: goto  reason: not valid java name */
    public int f5764goto;

    /* renamed from: public  reason: not valid java name */
    public boolean f5769public;
    @Nullable

    /* renamed from: return  reason: not valid java name */
    public Resources.Theme f5770return;

    /* renamed from: static  reason: not valid java name */
    public boolean f5771static;
    @Nullable

    /* renamed from: super  reason: not valid java name */
    public Drawable f5772super;

    /* renamed from: switch  reason: not valid java name */
    public boolean f5773switch;

    /* renamed from: throw  reason: not valid java name */
    public int f5775throw;

    /* renamed from: throws  reason: not valid java name */
    public boolean f5776throws;
    @Nullable

    /* renamed from: try  reason: not valid java name */
    public Drawable f5777try;

    /* renamed from: if  reason: not valid java name */
    public float f5765if = 1.0f;
    @NonNull

    /* renamed from: for  reason: not valid java name */
    public uk f5763for = uk.f4910for;
    @NonNull

    /* renamed from: new  reason: not valid java name */
    public ni f5768new = ni.NORMAL;

    /* renamed from: this  reason: not valid java name */
    public boolean f5774this = true;

    /* renamed from: break  reason: not valid java name */
    public int f5753break = -1;

    /* renamed from: catch  reason: not valid java name */
    public int f5755catch = -1;
    @NonNull

    /* renamed from: class  reason: not valid java name */
    public kj f5756class = ur.f4962if;

    /* renamed from: final  reason: not valid java name */
    public boolean f5762final = true;
    @NonNull

    /* renamed from: while  reason: not valid java name */
    public mj f5778while = new mj();
    @NonNull

    /* renamed from: import  reason: not valid java name */
    public Map<Class<?>, qj<?>> f5766import = new xr();
    @NonNull

    /* renamed from: native  reason: not valid java name */
    public Class<?> f5767native = Object.class;

    /* renamed from: default  reason: not valid java name */
    public boolean f5758default = true;

    /* renamed from: const  reason: not valid java name */
    public static boolean m3039const(int i, int i2) {
        return (i & i2) != 0;
    }

    @NonNull
    @CheckResult
    /* renamed from: abstract */
    public T mo2208abstract(boolean z) {
        if (this.f5771static) {
            return (T) clone().mo2208abstract(z);
        }
        this.f5761extends = z;
        this.f5759do |= 1048576;
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: case */
    public T mo2209case(@NonNull Class<?> cls) {
        if (this.f5771static) {
            return (T) clone().mo2209case(cls);
        }
        eg.m593else(cls, "Argument must not be null");
        this.f5767native = cls;
        this.f5759do |= 4096;
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: catch */
    public T mo2210catch(@DrawableRes int i) {
        if (this.f5771static) {
            return (T) clone().mo2210catch(i);
        }
        this.f5754case = i;
        int i2 = this.f5759do | 32;
        this.f5759do = i2;
        this.f5777try = null;
        this.f5759do = i2 & (-17);
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: class */
    public T mo2211class(@NonNull ej ejVar) {
        eg.m593else(ejVar, "Argument must not be null");
        return (T) mo2212default(eo.f1103case, ejVar).mo2212default(np.f3285do, ejVar);
    }

    @NonNull
    @CheckResult
    /* renamed from: default */
    public <Y> T mo2212default(@NonNull lj<Y> ljVar, @NonNull Y y) {
        if (this.f5771static) {
            return (T) clone().mo2212default(ljVar, y);
        }
        eg.m593else(ljVar, "Argument must not be null");
        eg.m593else(y, "Argument must not be null");
        this.f5778while.f3062if.put(ljVar, y);
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: do */
    public T mo2037do(@NonNull xq<?> xqVar) {
        if (this.f5771static) {
            return (T) clone().mo2037do(xqVar);
        }
        if (m3039const(xqVar.f5759do, 2)) {
            this.f5765if = xqVar.f5765if;
        }
        if (m3039const(xqVar.f5759do, 262144)) {
            this.f5773switch = xqVar.f5773switch;
        }
        if (m3039const(xqVar.f5759do, 1048576)) {
            this.f5761extends = xqVar.f5761extends;
        }
        if (m3039const(xqVar.f5759do, 4)) {
            this.f5763for = xqVar.f5763for;
        }
        if (m3039const(xqVar.f5759do, 8)) {
            this.f5768new = xqVar.f5768new;
        }
        if (m3039const(xqVar.f5759do, 16)) {
            this.f5777try = xqVar.f5777try;
            this.f5754case = 0;
            this.f5759do &= -33;
        }
        if (m3039const(xqVar.f5759do, 32)) {
            this.f5754case = xqVar.f5754case;
            this.f5777try = null;
            this.f5759do &= -17;
        }
        if (m3039const(xqVar.f5759do, 64)) {
            this.f5760else = xqVar.f5760else;
            this.f5764goto = 0;
            this.f5759do &= -129;
        }
        if (m3039const(xqVar.f5759do, 128)) {
            this.f5764goto = xqVar.f5764goto;
            this.f5760else = null;
            this.f5759do &= -65;
        }
        if (m3039const(xqVar.f5759do, 256)) {
            this.f5774this = xqVar.f5774this;
        }
        if (m3039const(xqVar.f5759do, 512)) {
            this.f5755catch = xqVar.f5755catch;
            this.f5753break = xqVar.f5753break;
        }
        if (m3039const(xqVar.f5759do, 1024)) {
            this.f5756class = xqVar.f5756class;
        }
        if (m3039const(xqVar.f5759do, 4096)) {
            this.f5767native = xqVar.f5767native;
        }
        if (m3039const(xqVar.f5759do, 8192)) {
            this.f5772super = xqVar.f5772super;
            this.f5775throw = 0;
            this.f5759do &= -16385;
        }
        if (m3039const(xqVar.f5759do, 16384)) {
            this.f5775throw = xqVar.f5775throw;
            this.f5772super = null;
            this.f5759do &= -8193;
        }
        if (m3039const(xqVar.f5759do, 32768)) {
            this.f5770return = xqVar.f5770return;
        }
        if (m3039const(xqVar.f5759do, 65536)) {
            this.f5762final = xqVar.f5762final;
        }
        if (m3039const(xqVar.f5759do, 131072)) {
            this.f5757const = xqVar.f5757const;
        }
        if (m3039const(xqVar.f5759do, 2048)) {
            this.f5766import.putAll(xqVar.f5766import);
            this.f5758default = xqVar.f5758default;
        }
        if (m3039const(xqVar.f5759do, 524288)) {
            this.f5776throws = xqVar.f5776throws;
        }
        if (!this.f5762final) {
            this.f5766import.clear();
            int i = this.f5759do & (-2049);
            this.f5759do = i;
            this.f5757const = false;
            this.f5759do = i & (-131073);
            this.f5758default = true;
        }
        this.f5759do |= xqVar.f5759do;
        this.f5778while.m1725new(xqVar.f5778while);
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: else */
    public T mo2213else(@NonNull uk ukVar) {
        if (this.f5771static) {
            return (T) clone().mo2213else(ukVar);
        }
        eg.m593else(ukVar, "Argument must not be null");
        this.f5763for = ukVar;
        this.f5759do |= 4;
        m3043throws();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof xq) {
            xq xqVar = (xq) obj;
            return Float.compare(xqVar.f5765if, this.f5765if) == 0 && this.f5754case == xqVar.f5754case && gs.m1038for(this.f5777try, xqVar.f5777try) && this.f5764goto == xqVar.f5764goto && gs.m1038for(this.f5760else, xqVar.f5760else) && this.f5775throw == xqVar.f5775throw && gs.m1038for(this.f5772super, xqVar.f5772super) && this.f5774this == xqVar.f5774this && this.f5753break == xqVar.f5753break && this.f5755catch == xqVar.f5755catch && this.f5757const == xqVar.f5757const && this.f5762final == xqVar.f5762final && this.f5773switch == xqVar.f5773switch && this.f5776throws == xqVar.f5776throws && this.f5763for.equals(xqVar.f5763for) && this.f5768new == xqVar.f5768new && this.f5778while.equals(xqVar.f5778while) && this.f5766import.equals(xqVar.f5766import) && this.f5767native.equals(xqVar.f5767native) && gs.m1038for(this.f5756class, xqVar.f5756class) && gs.m1038for(this.f5770return, xqVar.f5770return);
        }
        return false;
    }

    @NonNull
    @CheckResult
    /* renamed from: extends */
    public T mo2214extends(@NonNull kj kjVar) {
        if (this.f5771static) {
            return (T) clone().mo2214extends(kjVar);
        }
        eg.m593else(kjVar, "Argument must not be null");
        this.f5756class = kjVar;
        this.f5759do |= 1024;
        m3043throws();
        return this;
    }

    @NonNull
    /* renamed from: final */
    public T mo2215final() {
        this.f5769public = true;
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: finally */
    public T mo2216finally(boolean z) {
        if (this.f5771static) {
            return (T) clone().mo2216finally(true);
        }
        this.f5774this = !z;
        this.f5759do |= 256;
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: goto */
    public T mo2217goto() {
        return mo2212default(np.f3286if, Boolean.TRUE);
    }

    public int hashCode() {
        return gs.m1030break(this.f5770return, gs.m1030break(this.f5756class, gs.m1030break(this.f5767native, gs.m1030break(this.f5766import, gs.m1030break(this.f5778while, gs.m1030break(this.f5768new, gs.m1030break(this.f5763for, (((((((((((((gs.m1030break(this.f5772super, (gs.m1030break(this.f5760else, (gs.m1030break(this.f5777try, (gs.m1039goto(this.f5765if) * 31) + this.f5754case) * 31) + this.f5764goto) * 31) + this.f5775throw) * 31) + (this.f5774this ? 1 : 0)) * 31) + this.f5753break) * 31) + this.f5755catch) * 31) + (this.f5757const ? 1 : 0)) * 31) + (this.f5762final ? 1 : 0)) * 31) + (this.f5773switch ? 1 : 0)) * 31) + (this.f5776throws ? 1 : 0))))))));
    }

    @NonNull
    /* renamed from: if */
    public T mo2218if() {
        if (this.f5769public && !this.f5771static) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f5771static = true;
        return mo2215final();
    }

    @NonNull
    @CheckResult
    /* renamed from: import */
    public T mo2219import() {
        T m3040native = m3040native(co.f685do, new io());
        m3040native.f5758default = true;
        return m3040native;
    }

    @NonNull
    /* renamed from: native  reason: not valid java name */
    public final T m3040native(@NonNull co coVar, @NonNull qj<Bitmap> qjVar) {
        if (this.f5771static) {
            return (T) clone().m3040native(coVar, qjVar);
        }
        mo2226this(coVar);
        return m3041package(qjVar, false);
    }

    @Override // 
    @CheckResult
    /* renamed from: new */
    public T clone() {
        try {
            T t = (T) super.clone();
            mj mjVar = new mj();
            t.f5778while = mjVar;
            mjVar.m1725new(this.f5778while);
            xr xrVar = new xr();
            t.f5766import = xrVar;
            xrVar.putAll(this.f5766import);
            t.f5769public = false;
            t.f5771static = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: package  reason: not valid java name */
    public T m3041package(@NonNull qj<Bitmap> qjVar, boolean z) {
        if (this.f5771static) {
            return (T) clone().m3041package(qjVar, z);
        }
        go goVar = new go(qjVar, z);
        m3042private(Bitmap.class, qjVar, z);
        m3042private(Drawable.class, goVar, z);
        m3042private(BitmapDrawable.class, goVar, z);
        m3042private(hp.class, new kp(qjVar), z);
        m3043throws();
        return this;
    }

    @NonNull
    /* renamed from: private  reason: not valid java name */
    public <Y> T m3042private(@NonNull Class<Y> cls, @NonNull qj<Y> qjVar, boolean z) {
        if (this.f5771static) {
            return (T) clone().m3042private(cls, qjVar, z);
        }
        eg.m593else(cls, "Argument must not be null");
        eg.m593else(qjVar, "Argument must not be null");
        this.f5766import.put(cls, qjVar);
        int i = this.f5759do | 2048;
        this.f5759do = i;
        this.f5762final = true;
        int i2 = i | 65536;
        this.f5759do = i2;
        this.f5758default = false;
        if (z) {
            this.f5759do = i2 | 131072;
            this.f5757const = true;
        }
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: public */
    public T mo2220public(int i) {
        return mo2221return(i, i);
    }

    @NonNull
    @CheckResult
    /* renamed from: return */
    public T mo2221return(int i, int i2) {
        if (this.f5771static) {
            return (T) clone().mo2221return(i, i2);
        }
        this.f5755catch = i;
        this.f5753break = i2;
        this.f5759do |= 512;
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: static */
    public T mo2222static(@DrawableRes int i) {
        if (this.f5771static) {
            return (T) clone().mo2222static(i);
        }
        this.f5764goto = i;
        int i2 = this.f5759do | 128;
        this.f5759do = i2;
        this.f5760else = null;
        this.f5759do = i2 & (-65);
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: super */
    public T mo2224super() {
        return m3040native(co.f687for, new zn());
    }

    @NonNull
    @CheckResult
    /* renamed from: switch */
    public T mo2225switch(@NonNull ni niVar) {
        if (this.f5771static) {
            return (T) clone().mo2225switch(niVar);
        }
        eg.m593else(niVar, "Argument must not be null");
        this.f5768new = niVar;
        this.f5759do |= 8;
        m3043throws();
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: this */
    public T mo2226this(@NonNull co coVar) {
        lj ljVar = co.f684case;
        eg.m593else(coVar, "Argument must not be null");
        return mo2212default(ljVar, coVar);
    }

    @NonNull
    /* renamed from: throws  reason: not valid java name */
    public final T m3043throws() {
        if (this.f5769public) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return this;
    }

    @NonNull
    @CheckResult
    /* renamed from: while */
    public T mo2227while() {
        T m3040native = m3040native(co.f688if, new ao());
        m3040native.f5758default = true;
        return m3040native;
    }
}
