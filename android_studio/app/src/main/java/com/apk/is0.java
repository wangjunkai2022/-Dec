package com.apk;

import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatSpinner;

/* compiled from: SkinCompatSpinner.java */
/* loaded from: classes7.dex */
public class is0 extends AppCompatSpinner implements js0 {

    /* renamed from: for  reason: not valid java name */
    public static final String f2227for = is0.class.getSimpleName();

    /* renamed from: new  reason: not valid java name */
    public static final int[] f2228new = {16843505};

    /* renamed from: do  reason: not valid java name */
    public mr0 f2229do;

    /* renamed from: if  reason: not valid java name */
    public int f2230if;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        if (r2 == null) goto L11;
     */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public is0(android.content.Context r8, android.util.AttributeSet r9) {
        /*
            r7 = this;
            int r6 = skin.support.appcompat.R$attr.spinnerStyle
            r5 = 0
            r4 = -1
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = 0
            r7.f2230if = r0
            int[] r1 = skin.support.appcompat.R$styleable.Spinner
            android.content.res.TypedArray r1 = r8.obtainStyledAttributes(r9, r1, r6, r0)
            android.content.Context r2 = r7.getPopupContext()
            if (r2 == 0) goto L54
            r2 = 0
            r3 = -1
            int[] r4 = com.apk.is0.f2228new     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L30
            android.content.res.TypedArray r2 = r8.obtainStyledAttributes(r9, r4, r6, r0)     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L30
            boolean r8 = r2.hasValue(r0)     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L30
            if (r8 == 0) goto L39
            int r8 = r2.getInt(r0, r0)     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L30
            r3 = r8
            goto L39
        L2e:
            goto L37
        L30:
            r8 = move-exception
            if (r2 == 0) goto L36
            r2.recycle()
        L36:
            throw r8
        L37:
            if (r2 == 0) goto L3c
        L39:
            r2.recycle()
        L3c:
            r8 = 1
            if (r3 != r8) goto L54
            android.content.Context r8 = r7.getPopupContext()
            int[] r2 = skin.support.appcompat.R$styleable.Spinner
            android.content.res.TypedArray r8 = r8.obtainStyledAttributes(r9, r2, r6, r0)
            int r2 = skin.support.appcompat.R$styleable.Spinner_android_popupBackground
            int r0 = r8.getResourceId(r2, r0)
            r7.f2230if = r0
            r8.recycle()
        L54:
            r1.recycle()
            com.apk.mr0 r8 = new com.apk.mr0
            r8.<init>(r7)
            r7.f2229do = r8
            r8.m1752for(r9, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.is0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f2229do;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        m1270if();
    }

    /* renamed from: if  reason: not valid java name */
    public final void m1270if() {
        int m2617do = tr0.m2617do(this.f2230if);
        this.f2230if = m2617do;
        if (m2617do != 0) {
            setPopupBackgroundDrawable(pq0.m2073do(getContext(), this.f2230if));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner, android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i) {
        super.setPopupBackgroundResource(i);
        this.f2230if = i;
        m1270if();
    }
}
