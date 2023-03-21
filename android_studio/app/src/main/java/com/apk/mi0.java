package com.apk;

import androidx.core.app.NotificationCompat;
import com.apk.ug0;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.IOException;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: RealInterceptorChain.kt */
/* loaded from: classes7.dex */
public final class mi0 implements ug0.Cdo {
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public final zg0 f3053case;

    /* renamed from: do  reason: not valid java name */
    public int f3054do;

    /* renamed from: else  reason: not valid java name */
    public final int f3055else;

    /* renamed from: for  reason: not valid java name */
    public final List<ug0> f3056for;

    /* renamed from: goto  reason: not valid java name */
    public final int f3057goto;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final xh0 f3058if;

    /* renamed from: new  reason: not valid java name */
    public final int f3059new;

    /* renamed from: this  reason: not valid java name */
    public final int f3060this;
    @Nullable

    /* renamed from: try  reason: not valid java name */
    public final vh0 f3061try;

    /* JADX WARN: Multi-variable type inference failed */
    public mi0(@NotNull xh0 xh0Var, @NotNull List<? extends ug0> list, int i, @Nullable vh0 vh0Var, @NotNull zg0 zg0Var, int i2, int i3, int i4) {
        nd0.m1875new(xh0Var, NotificationCompat.CATEGORY_CALL);
        nd0.m1875new(list, "interceptors");
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        this.f3058if = xh0Var;
        this.f3056for = list;
        this.f3059new = i;
        this.f3061try = vh0Var;
        this.f3053case = zg0Var;
        this.f3055else = i2;
        this.f3057goto = i3;
        this.f3060this = i4;
    }

    /* renamed from: new  reason: not valid java name */
    public static mi0 m1720new(mi0 mi0Var, int i, vh0 vh0Var, zg0 zg0Var, int i2, int i3, int i4, int i5) {
        int i6 = (i5 & 1) != 0 ? mi0Var.f3059new : i;
        vh0 vh0Var2 = (i5 & 2) != 0 ? mi0Var.f3061try : vh0Var;
        zg0 zg0Var2 = (i5 & 4) != 0 ? mi0Var.f3053case : zg0Var;
        int i7 = (i5 & 8) != 0 ? mi0Var.f3055else : i2;
        int i8 = (i5 & 16) != 0 ? mi0Var.f3057goto : i3;
        int i9 = (i5 & 32) != 0 ? mi0Var.f3060this : i4;
        nd0.m1875new(zg0Var2, TTLogUtil.TAG_EVENT_REQUEST);
        return new mi0(mi0Var.f3058if, mi0Var.f3056for, i6, vh0Var2, zg0Var2, i7, i8, i9);
    }

    @Override // com.apk.ug0.Cdo
    @NotNull
    public zf0 call() {
        return this.f3058if;
    }

    @Override // com.apk.ug0.Cdo
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public ch0 mo1721do(@NotNull zg0 zg0Var) throws IOException {
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        if (this.f3059new < this.f3056for.size()) {
            this.f3054do++;
            vh0 vh0Var = this.f3061try;
            if (vh0Var != null) {
                if (vh0Var.f5088try.m2912if(zg0Var.f6187if)) {
                    if (!(this.f3054do == 1)) {
                        StringBuilder m1016super = Cgoto.m1016super("network interceptor ");
                        m1016super.append(this.f3056for.get(this.f3059new - 1));
                        m1016super.append(" must call proceed() exactly once");
                        throw new IllegalStateException(m1016super.toString().toString());
                    }
                } else {
                    StringBuilder m1016super2 = Cgoto.m1016super("network interceptor ");
                    m1016super2.append(this.f3056for.get(this.f3059new - 1));
                    m1016super2.append(" must retain the same host and port");
                    throw new IllegalStateException(m1016super2.toString().toString());
                }
            }
            mi0 m1720new = m1720new(this, this.f3059new + 1, null, zg0Var, 0, 0, 0, 58);
            ug0 ug0Var = this.f3056for.get(this.f3059new);
            ch0 mo678do = ug0Var.mo678do(m1720new);
            if (mo678do != null) {
                if (this.f3061try != null) {
                    if (!(this.f3059new + 1 >= this.f3056for.size() || m1720new.f3054do == 1)) {
                        throw new IllegalStateException(("network interceptor " + ug0Var + " must call proceed() exactly once").toString());
                    }
                }
                if (mo678do.f614goto != null) {
                    return mo678do;
                }
                throw new IllegalStateException(("interceptor " + ug0Var + " returned a response with no body").toString());
            }
            throw new NullPointerException("interceptor " + ug0Var + " returned null");
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // com.apk.ug0.Cdo
    @NotNull
    /* renamed from: for  reason: not valid java name */
    public zg0 mo1722for() {
        return this.f3053case;
    }

    @Override // com.apk.ug0.Cdo
    @Nullable
    /* renamed from: if  reason: not valid java name */
    public fg0 mo1723if() {
        vh0 vh0Var = this.f3061try;
        if (vh0Var != null) {
            return vh0Var.f5086if;
        }
        return null;
    }
}
