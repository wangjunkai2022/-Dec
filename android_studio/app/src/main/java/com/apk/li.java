package com.apk;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.apk.ii;
import java.util.List;
import java.util.Map;

/* compiled from: GlideContext.java */
/* loaded from: classes8.dex */
public class li extends ContextWrapper {
    @VisibleForTesting

    /* renamed from: catch  reason: not valid java name */
    public static final ri<?, ?> f2807catch = new hi();
    @Nullable
    @GuardedBy("this")

    /* renamed from: break  reason: not valid java name */
    public dr f2808break;

    /* renamed from: case  reason: not valid java name */
    public final Map<Class<?>, ri<?, ?>> f2809case;

    /* renamed from: do  reason: not valid java name */
    public final nl f2810do;

    /* renamed from: else  reason: not valid java name */
    public final vk f2811else;

    /* renamed from: for  reason: not valid java name */
    public final lr f2812for;

    /* renamed from: goto  reason: not valid java name */
    public final boolean f2813goto;

    /* renamed from: if  reason: not valid java name */
    public final oi f2814if;

    /* renamed from: new  reason: not valid java name */
    public final ii.Cdo f2815new;

    /* renamed from: this  reason: not valid java name */
    public final int f2816this;

    /* renamed from: try  reason: not valid java name */
    public final List<cr<Object>> f2817try;

    public li(@NonNull Context context, @NonNull nl nlVar, @NonNull oi oiVar, @NonNull lr lrVar, @NonNull ii.Cdo cdo, @NonNull Map<Class<?>, ri<?, ?>> map, @NonNull List<cr<Object>> list, @NonNull vk vkVar, boolean z, int i) {
        super(context.getApplicationContext());
        this.f2810do = nlVar;
        this.f2814if = oiVar;
        this.f2812for = lrVar;
        this.f2815new = cdo;
        this.f2817try = list;
        this.f2809case = map;
        this.f2811else = vkVar;
        this.f2813goto = z;
        this.f2816this = i;
    }
}
