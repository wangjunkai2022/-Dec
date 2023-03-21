package com.apk;

import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.Toolbar;

/* compiled from: SkinCompatToolbar.java */
/* loaded from: classes7.dex */
public class ns0 extends Toolbar implements js0 {

    /* renamed from: do  reason: not valid java name */
    public int f3302do;

    /* renamed from: for  reason: not valid java name */
    public int f3303for;

    /* renamed from: if  reason: not valid java name */
    public int f3304if;

    /* renamed from: new  reason: not valid java name */
    public mr0 f3305new;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public ns0(android.content.Context r6, @androidx.annotation.Nullable android.util.AttributeSet r7) {
        /*
            r5 = this;
            int r0 = skin.support.appcompat.R$attr.toolbarStyle
            r5.<init>(r6, r7, r0)
            r1 = 0
            r5.f3302do = r1
            r5.f3304if = r1
            r5.f3303for = r1
            com.apk.mr0 r2 = new com.apk.mr0
            r2.<init>(r5)
            r5.f3305new = r2
            r2.m1752for(r7, r0)
            int[] r2 = skin.support.appcompat.R$styleable.Toolbar
            android.content.res.TypedArray r2 = r6.obtainStyledAttributes(r7, r2, r0, r1)
            int r3 = skin.support.appcompat.R$styleable.Toolbar_navigationIcon
            int r3 = r2.getResourceId(r3, r1)
            r5.f3303for = r3
            int r3 = skin.support.appcompat.R$styleable.Toolbar_titleTextAppearance
            int r3 = r2.getResourceId(r3, r1)
            int r4 = skin.support.appcompat.R$styleable.Toolbar_subtitleTextAppearance
            int r4 = r2.getResourceId(r4, r1)
            r2.recycle()
            if (r3 == 0) goto L46
            int[] r2 = skin.support.appcompat.R$styleable.SkinTextAppearance
            android.content.res.TypedArray r2 = r6.obtainStyledAttributes(r3, r2)
            int r3 = skin.support.appcompat.R$styleable.SkinTextAppearance_android_textColor
            int r3 = r2.getResourceId(r3, r1)
            r5.f3302do = r3
            r2.recycle()
        L46:
            if (r4 == 0) goto L59
            int[] r2 = skin.support.appcompat.R$styleable.SkinTextAppearance
            android.content.res.TypedArray r2 = r6.obtainStyledAttributes(r4, r2)
            int r3 = skin.support.appcompat.R$styleable.SkinTextAppearance_android_textColor
            int r3 = r2.getResourceId(r3, r1)
            r5.f3304if = r3
            r2.recycle()
        L59:
            int[] r2 = skin.support.appcompat.R$styleable.Toolbar
            android.content.res.TypedArray r6 = r6.obtainStyledAttributes(r7, r2, r0, r1)
            int r7 = skin.support.appcompat.R$styleable.Toolbar_titleTextColor
            boolean r7 = r6.hasValue(r7)
            if (r7 == 0) goto L6f
            int r7 = skin.support.appcompat.R$styleable.Toolbar_titleTextColor
            int r7 = r6.getResourceId(r7, r1)
            r5.f3302do = r7
        L6f:
            int r7 = skin.support.appcompat.R$styleable.Toolbar_subtitleTextColor
            boolean r7 = r6.hasValue(r7)
            if (r7 == 0) goto L7f
            int r7 = skin.support.appcompat.R$styleable.Toolbar_subtitleTextColor
            int r7 = r6.getResourceId(r7, r1)
            r5.f3304if = r7
        L7f:
            r6.recycle()
            r5.m1912new()
            r5.m1910for()
            r5.m1911if()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ns0.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        mr0 mr0Var = this.f3305new;
        if (mr0Var != null) {
            mr0Var.m1753if();
        }
        m1912new();
        m1910for();
        m1911if();
    }

    /* renamed from: for  reason: not valid java name */
    public final void m1910for() {
        int m2617do = tr0.m2617do(this.f3304if);
        this.f3304if = m2617do;
        if (m2617do != 0) {
            setSubtitleTextColor(lq0.m1660do(getContext(), this.f3304if));
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m1911if() {
        int m2617do = tr0.m2617do(this.f3303for);
        this.f3303for = m2617do;
        if (m2617do != 0) {
            setNavigationIcon(pq0.m2073do(getContext(), this.f3303for));
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m1912new() {
        int m2617do = tr0.m2617do(this.f3302do);
        this.f3302do = m2617do;
        if (m2617do != 0) {
            setTitleTextColor(lq0.m1660do(getContext(), this.f3302do));
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        mr0 mr0Var = this.f3305new;
        if (mr0Var != null) {
            mr0Var.f3096if = i;
            mr0Var.m1753if();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@DrawableRes int i) {
        super.setNavigationIcon(i);
        this.f3303for = i;
        m1911if();
    }
}
