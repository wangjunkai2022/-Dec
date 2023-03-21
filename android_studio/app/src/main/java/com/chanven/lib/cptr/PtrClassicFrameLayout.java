package com.chanven.lib.cptr;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewConfiguration;
import com.apk.rs;
import com.apk.ss;
import com.apk.us;
import com.apk.vs;

/* loaded from: classes8.dex */
public class PtrClassicFrameLayout extends ss {

    /* renamed from: abstract  reason: not valid java name */
    public float f9386abstract;

    /* renamed from: continue  reason: not valid java name */
    public boolean f9387continue;

    /* renamed from: package  reason: not valid java name */
    public rs f9388package;

    /* renamed from: private  reason: not valid java name */
    public float f9389private;

    /* renamed from: strictfp  reason: not valid java name */
    public int f9390strictfp;

    public PtrClassicFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        m3588super();
        m3588super();
    }

    public rs getHeader() {
        return this.f9388package;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x000e, code lost:
        if (r0 != 3) goto L9;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getAction()
            r1 = 0
            if (r0 == 0) goto L3d
            r2 = 1
            if (r0 == r2) goto L3a
            r3 = 2
            if (r0 == r3) goto L11
            r2 = 3
            if (r0 == r2) goto L3a
            goto L4b
        L11:
            boolean r0 = r5.f9387continue
            if (r0 == 0) goto L16
            return r1
        L16:
            float r0 = r6.getY()
            float r3 = r6.getX()
            float r4 = r5.f9386abstract
            float r3 = r3 - r4
            float r3 = java.lang.Math.abs(r3)
            float r4 = r5.f9389private
            float r0 = r0 - r4
            float r0 = java.lang.Math.abs(r0)
            int r4 = r5.f9390strictfp
            float r4 = (float) r4
            int r4 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r4 <= 0) goto L4b
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 <= 0) goto L4b
            r5.f9387continue = r2
            return r1
        L3a:
            r5.f9387continue = r1
            goto L4b
        L3d:
            float r0 = r6.getY()
            r5.f9389private = r0
            float r0 = r6.getX()
            r5.f9386abstract = r0
            r5.f9387continue = r1
        L4b:
            boolean r6 = super.onInterceptTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chanven.lib.cptr.PtrClassicFrameLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: super  reason: not valid java name */
    public final void m3588super() {
        this.f9390strictfp = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        rs rsVar = new rs(getContext());
        this.f9388package = rsVar;
        setHeaderView(rsVar);
        rs rsVar2 = this.f9388package;
        vs vsVar = this.f4546catch;
        if (rsVar2 == null || vsVar == null) {
            return;
        }
        if (vsVar.f5200do == null) {
            vsVar.f5200do = rsVar2;
            return;
        }
        while (true) {
            us usVar = vsVar.f5200do;
            if (usVar != null && usVar == rsVar2) {
                return;
            }
            vs vsVar2 = vsVar.f5201if;
            if (vsVar2 == null) {
                vs vsVar3 = new vs();
                vsVar3.f5200do = rsVar2;
                vsVar.f5201if = vsVar3;
                return;
            }
            vsVar = vsVar2;
        }
    }
}
