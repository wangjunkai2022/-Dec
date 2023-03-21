package com.apk;

import android.content.Context;
import android.graphics.Color;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.impl.BottomListPopupView;
import com.lxj.xpopup.impl.CenterListPopupView;
import com.lxj.xpopup.impl.ConfirmPopupView;
import com.lxj.xpopup.impl.LoadingPopupView;
/* compiled from: XPopup.java */
/* loaded from: classes8.dex */
public class zu {

    /* renamed from: try  reason: not valid java name */
    public static boolean f6266try;

    /* renamed from: do  reason: not valid java name */
    public static int f6262do = Color.parseColor("#C0392B");

    /* renamed from: if  reason: not valid java name */
    public static int f6264if = 350;

    /* renamed from: for  reason: not valid java name */
    public static int f6263for = Color.parseColor("#55000000");

    /* renamed from: new  reason: not valid java name */
    public static int f6265new = Color.parseColor("#5F000000");

    /* compiled from: XPopup.java */
    /* renamed from: com.apk.zu$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public final lv f6267do = new lv();

        /* renamed from: if  reason: not valid java name */
        public Context f6268if;

        public Cdo(Context context) {
            this.f6268if = context;
        }

        /* renamed from: break  reason: not valid java name */
        public LoadingPopupView m3248break(CharSequence charSequence) {
            return m3250catch(charSequence, 0);
        }

        /* renamed from: case  reason: not valid java name */
        public ConfirmPopupView m3249case(CharSequence charSequence, CharSequence charSequence2, uv uvVar, sv svVar) {
            return m3256goto(charSequence, charSequence2, null, null, uvVar, null, false, 0);
        }

        /* renamed from: catch  reason: not valid java name */
        public LoadingPopupView m3250catch(CharSequence charSequence, int i) {
            rv rvVar = rv.Center;
            lv lvVar = this.f6267do;
            lvVar.f2919do = rvVar;
            lvVar.f2917continue = zu.f6266try;
            LoadingPopupView loadingPopupView = new LoadingPopupView(this.f6268if, i);
            loadingPopupView.m3605if(charSequence);
            loadingPopupView.popupInfo = this.f6267do;
            return loadingPopupView;
        }

        /* renamed from: class  reason: not valid java name */
        public Cdo m3251class(Boolean bool) {
            this.f6267do.f2924for = bool;
            return this;
        }

        /* renamed from: const  reason: not valid java name */
        public Cdo m3252const(yv yvVar) {
            this.f6267do.f2941throw = yvVar;
            return this;
        }

        /* renamed from: do  reason: not valid java name */
        public BottomListPopupView m3253do(CharSequence charSequence, String[] strArr, xv xvVar) {
            return m3257if(null, strArr, null, -1, xvVar, 0, 0);
        }

        /* renamed from: else  reason: not valid java name */
        public ConfirmPopupView m3254else(CharSequence charSequence, CharSequence charSequence2, uv uvVar, sv svVar, int i) {
            return m3256goto(charSequence, charSequence2, null, null, uvVar, svVar, false, i);
        }

        /* renamed from: for  reason: not valid java name */
        public BottomListPopupView m3255for(CharSequence charSequence, String[] strArr, int[] iArr, xv xvVar) {
            return m3257if(null, strArr, iArr, -1, xvVar, 0, 0);
        }

        /* renamed from: goto  reason: not valid java name */
        public ConfirmPopupView m3256goto(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, uv uvVar, sv svVar, boolean z, int i) {
            rv rvVar = rv.Center;
            lv lvVar = this.f6267do;
            lvVar.f2919do = rvVar;
            lvVar.f2917continue = zu.f6266try;
            ConfirmPopupView confirmPopupView = new ConfirmPopupView(this.f6268if, i);
            confirmPopupView.f9575else = charSequence;
            confirmPopupView.f9577goto = charSequence2;
            confirmPopupView.f9580this = null;
            confirmPopupView.f9569break = null;
            confirmPopupView.f9571catch = null;
            confirmPopupView.f9574do = svVar;
            confirmPopupView.f9578if = uvVar;
            confirmPopupView.f9573const = z;
            confirmPopupView.popupInfo = this.f6267do;
            return confirmPopupView;
        }

        /* renamed from: if  reason: not valid java name */
        public BottomListPopupView m3257if(CharSequence charSequence, String[] strArr, int[] iArr, int i, xv xvVar, int i2, int i3) {
            rv rvVar = rv.Bottom;
            lv lvVar = this.f6267do;
            lvVar.f2919do = rvVar;
            lvVar.f2917continue = zu.f6266try;
            BottomListPopupView bottomListPopupView = new BottomListPopupView(this.f6268if, i2, i3);
            bottomListPopupView.f9545case = charSequence;
            bottomListPopupView.f9547else = strArr;
            bottomListPopupView.f9549goto = iArr;
            bottomListPopupView.f9544break = i;
            bottomListPopupView.f9552this = xvVar;
            bottomListPopupView.popupInfo = this.f6267do;
            return bottomListPopupView;
        }

        /* renamed from: new  reason: not valid java name */
        public CenterListPopupView m3258new(CharSequence charSequence, String[] strArr, int[] iArr, int i, xv xvVar) {
            return m3260try(charSequence, strArr, null, i, xvVar, 0, 0);
        }

        /* renamed from: this  reason: not valid java name */
        public BasePopupView m3259this(BasePopupView basePopupView) {
            rv rvVar = rv.Center;
            lv lvVar = this.f6267do;
            lvVar.f2919do = rvVar;
            lvVar.f2917continue = zu.f6266try;
            basePopupView.popupInfo = lvVar;
            return basePopupView;
        }

        /* renamed from: try  reason: not valid java name */
        public CenterListPopupView m3260try(CharSequence charSequence, String[] strArr, int[] iArr, int i, xv xvVar, int i2, int i3) {
            rv rvVar = rv.Center;
            lv lvVar = this.f6267do;
            lvVar.f2919do = rvVar;
            lvVar.f2917continue = zu.f6266try;
            CenterListPopupView centerListPopupView = new CenterListPopupView(this.f6268if, i2, i3);
            centerListPopupView.f9562for = charSequence;
            centerListPopupView.f9564new = strArr;
            centerListPopupView.f9565try = iArr;
            centerListPopupView.f9561else = i;
            centerListPopupView.f9559case = xvVar;
            centerListPopupView.popupInfo = this.f6267do;
            return centerListPopupView;
        }
    }
}
