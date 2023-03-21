package com.apk;

/* compiled from: SkinAppCompatViewInflater.java */
/* loaded from: classes7.dex */
public class aq0 implements dq0, eq0 {
    public aq0() {
        pq0.m2074if();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0033, code lost:
        if (r2 == false) goto L47;
     */
    @Override // com.apk.eq0
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.content.Context mo91do(android.content.Context r6, android.view.View r7, android.util.AttributeSet r8) {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            if (r1 == 0) goto L36
            r2 = r7
            android.view.ViewParent r2 = (android.view.ViewParent) r2
            if (r2 != 0) goto Lb
        L9:
            r2 = 0
            goto L33
        Lb:
            boolean r3 = r6 instanceof android.app.Activity
            if (r3 == 0) goto L9
            r3 = r6
            android.app.Activity r3 = (android.app.Activity) r3
            android.view.Window r3 = r3.getWindow()
            android.view.View r3 = r3.getDecorView()
        L1a:
            if (r2 != 0) goto L1e
            r2 = 1
            goto L33
        L1e:
            if (r2 == r3) goto L9
            boolean r4 = r2 instanceof android.view.View
            if (r4 == 0) goto L9
            r4 = r2
            android.view.View r4 = (android.view.View) r4
            boolean r4 = androidx.core.view.ViewCompat.isAttachedToWindow(r4)
            if (r4 == 0) goto L2e
            goto L9
        L2e:
            android.view.ViewParent r2 = r2.getParent()
            goto L1a
        L33:
            if (r2 == 0) goto L36
            goto L37
        L36:
            r0 = 0
        L37:
            if (r0 == 0) goto L3f
            if (r7 == 0) goto L3f
            android.content.Context r6 = r7.getContext()
        L3f:
            boolean r2 = androidx.appcompat.widget.VectorEnabledTintResources.shouldBeUsed()
            if (r0 == 0) goto L4b
            if (r7 == 0) goto L4b
            android.content.Context r6 = r7.getContext()
        L4b:
            int[] r7 = skin.support.appcompat.R$styleable.View
            android.content.res.TypedArray r7 = r6.obtainStyledAttributes(r8, r7, r1, r1)
            if (r1 == 0) goto L5a
            int r8 = skin.support.appcompat.R$styleable.View_android_theme
            int r8 = r7.getResourceId(r8, r1)
            goto L5b
        L5a:
            r8 = 0
        L5b:
            if (r8 != 0) goto L63
            int r8 = skin.support.appcompat.R$styleable.View_theme
            int r8 = r7.getResourceId(r8, r1)
        L63:
            r7.recycle()
            if (r8 == 0) goto L7b
            boolean r7 = r6 instanceof androidx.appcompat.view.ContextThemeWrapper
            if (r7 == 0) goto L75
            r7 = r6
            androidx.appcompat.view.ContextThemeWrapper r7 = (androidx.appcompat.view.ContextThemeWrapper) r7
            int r7 = r7.getThemeResId()
            if (r7 == r8) goto L7b
        L75:
            androidx.appcompat.view.ContextThemeWrapper r7 = new androidx.appcompat.view.ContextThemeWrapper
            r7.<init>(r6, r8)
            r6 = r7
        L7b:
            if (r2 == 0) goto L81
            android.content.Context r6 = androidx.appcompat.widget.TintContextWrapper.wrap(r6)
        L81:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.aq0.mo91do(android.content.Context, android.view.View, android.util.AttributeSet):android.content.Context");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0179  */
    @Override // com.apk.dq0
    /* renamed from: if  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View mo92if(android.content.Context r6, java.lang.String r7, android.util.AttributeSet r8) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.aq0.mo92if(android.content.Context, java.lang.String, android.util.AttributeSet):android.view.View");
    }
}
