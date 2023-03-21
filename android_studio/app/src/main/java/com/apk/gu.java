package com.apk;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;

/* compiled from: FitsKeyboard.java */
/* loaded from: classes8.dex */
public class gu implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: break  reason: not valid java name */
    public int f1634break;

    /* renamed from: case  reason: not valid java name */
    public int f1635case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f1636catch;

    /* renamed from: do  reason: not valid java name */
    public iu f1637do;

    /* renamed from: else  reason: not valid java name */
    public int f1638else;

    /* renamed from: for  reason: not valid java name */
    public View f1639for;

    /* renamed from: goto  reason: not valid java name */
    public int f1640goto;

    /* renamed from: if  reason: not valid java name */
    public Window f1641if;

    /* renamed from: new  reason: not valid java name */
    public View f1642new;

    /* renamed from: this  reason: not valid java name */
    public int f1643this;

    /* renamed from: try  reason: not valid java name */
    public View f1644try;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View] */
    public gu(iu iuVar) {
        this.f1635case = 0;
        this.f1638else = 0;
        this.f1640goto = 0;
        this.f1643this = 0;
        this.f1637do = iuVar;
        Window window = iuVar.f2255try;
        this.f1641if = window;
        View decorView = window.getDecorView();
        this.f1639for = decorView;
        FrameLayout frameLayout = (FrameLayout) decorView.findViewById(16908290);
        if (iuVar.f2232break) {
            Fragment fragment = iuVar.f2243if;
            if (fragment != null) {
                this.f1644try = fragment.getView();
            } else {
                android.app.Fragment fragment2 = iuVar.f2241for;
                if (fragment2 != null) {
                    this.f1644try = fragment2.getView();
                }
            }
        } else {
            View childAt = frameLayout.getChildAt(0);
            this.f1644try = childAt;
            if (childAt != null && (childAt instanceof DrawerLayout)) {
                this.f1644try = ((DrawerLayout) childAt).getChildAt(0);
            }
        }
        View view = this.f1644try;
        if (view != null) {
            this.f1635case = view.getPaddingLeft();
            this.f1638else = this.f1644try.getPaddingTop();
            this.f1640goto = this.f1644try.getPaddingRight();
            this.f1643this = this.f1644try.getPaddingBottom();
        }
        ?? r4 = this.f1644try;
        this.f1642new = r4 != 0 ? r4 : frameLayout;
    }

    /* renamed from: do  reason: not valid java name */
    public void m1045do() {
        if (this.f1636catch) {
            if (this.f1644try != null) {
                this.f1642new.setPadding(this.f1635case, this.f1638else, this.f1640goto, this.f1643this);
                return;
            }
            View view = this.f1642new;
            iu iuVar = this.f1637do;
            view.setPadding(iuVar.f2249static, iuVar.f2251switch, iuVar.f2254throws, iuVar.f2237default);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m1046if(int i) {
        this.f1641if.setSoftInputMode(i);
        if (this.f1636catch) {
            return;
        }
        this.f1639for.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.f1636catch = true;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        cu cuVar;
        int i;
        int i2;
        iu iuVar = this.f1637do;
        if (iuVar == null || (cuVar = iuVar.f2235class) == null || !cuVar.f775private) {
            return;
        }
        if (iuVar.f2236const == null) {
            iuVar.f2236const = new au(iuVar.f2238do);
        }
        au auVar = iuVar.f2236const;
        if (auVar.m112for()) {
            i = auVar.f176new;
        } else {
            i = auVar.f177try;
        }
        Rect rect = new Rect();
        this.f1639for.getWindowVisibleDisplayFrame(rect);
        int height = this.f1642new.getHeight() - rect.bottom;
        if (height != this.f1634break) {
            this.f1634break = height;
            boolean z = true;
            if (iu.m1272if(this.f1641if.getDecorView().findViewById(16908290))) {
                height -= i;
                if (height <= i) {
                    z = false;
                }
            } else if (this.f1644try != null) {
                iu iuVar2 = this.f1637do;
                if (iuVar2.f2235class.f774package) {
                    height += iuVar2.f2253throw + auVar.f172do;
                }
                if (this.f1637do.f2235class.f779static) {
                    height += auVar.f172do;
                }
                if (height > i) {
                    i2 = this.f1643this + height;
                } else {
                    i2 = 0;
                    z = false;
                }
                this.f1642new.setPadding(this.f1635case, this.f1638else, this.f1640goto, i2);
            } else {
                int i3 = this.f1637do.f2237default;
                height -= i;
                if (height > i) {
                    i3 = height + i;
                } else {
                    z = false;
                }
                View view = this.f1642new;
                iu iuVar3 = this.f1637do;
                view.setPadding(iuVar3.f2249static, iuVar3.f2251switch, iuVar3.f2254throws, i3);
            }
            int i4 = height >= 0 ? height : 0;
            ou ouVar = this.f1637do.f2235class.f776protected;
            if (ouVar != null) {
                ouVar.m1981do(z, i4);
            }
            if (z) {
                return;
            }
            iu iuVar4 = this.f1637do;
            if (iuVar4.f2235class.f754break != bu.FLAG_SHOW_BAR) {
                iuVar4.m1277catch();
            }
        }
    }
}
