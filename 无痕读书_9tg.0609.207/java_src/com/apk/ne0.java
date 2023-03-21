package com.apk;

import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
import me.imid.swipebacklayout.lib.SwipeBackLayout;
/* compiled from: SwipeBackActivity.java */
/* loaded from: classes7.dex */
public class ne0 extends i6 {
    public oe0 mHelper;

    public SwipeBackLayout getSwipeBackLayout() {
        oe0 oe0Var = this.mHelper;
        if (oe0Var != null) {
            return oe0Var.f3403if;
        }
        return null;
    }

    public boolean isSwipeBackEnable() {
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isSwipeBackEnable()) {
            oe0 oe0Var = new oe0(this);
            this.mHelper = oe0Var;
            oe0Var.f3402do.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            oe0Var.f3402do.getWindow().getDecorView().setBackgroundDrawable(null);
            oe0Var.f3403if = (SwipeBackLayout) LayoutInflater.from(oe0Var.f3402do).inflate(R.layout.swipeback_layout, (ViewGroup) null);
        }
        if (!isSwipeBackEnable() || getSwipeBackLayout() == null) {
            return;
        }
        setSwipeBackEnable(true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        oe0 oe0Var = this.mHelper;
        if (oe0Var != null) {
            SwipeBackLayout swipeBackLayout = oe0Var.f3403if;
            Activity activity = oe0Var.f3402do;
            if (swipeBackLayout != null) {
                TypedArray obtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{16842836});
                int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                obtainStyledAttributes.recycle();
                ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
                ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
                viewGroup2.setBackgroundResource(resourceId);
                viewGroup.removeView(viewGroup2);
                swipeBackLayout.addView(viewGroup2);
                swipeBackLayout.setContentView(viewGroup2);
                pe0 pe0Var = new pe0(activity);
                if (swipeBackLayout.f10559this == null) {
                    swipeBackLayout.f10559this = new ArrayList();
                }
                swipeBackLayout.f10559this.add(pe0Var);
                viewGroup.addView(swipeBackLayout);
                return;
            }
            throw null;
        }
    }

    public void scrollToFinishActivity() {
        int i;
        int i2;
        int i3;
        sb0.m2425public(this);
        SwipeBackLayout swipeBackLayout = getSwipeBackLayout();
        int width = swipeBackLayout.f10557new.getWidth();
        int height = swipeBackLayout.f10557new.getHeight();
        int i4 = swipeBackLayout.f10551do;
        if ((i4 & 1) != 0) {
            i3 = swipeBackLayout.f10546break.getIntrinsicWidth() + width + 10;
            swipeBackLayout.f10562while = 1;
        } else if ((i4 & 2) != 0) {
            i3 = ((-width) - swipeBackLayout.f10548catch.getIntrinsicWidth()) - 10;
            swipeBackLayout.f10562while = 2;
        } else {
            if ((i4 & 8) != 0) {
                i = ((-height) - swipeBackLayout.f10549class.getIntrinsicHeight()) - 10;
                swipeBackLayout.f10562while = 8;
            } else {
                i = 0;
            }
            i2 = i;
            i3 = 0;
            me0 me0Var = swipeBackLayout.f10561try;
            me0Var.f3017native = swipeBackLayout.f10557new;
            me0Var.f3013for = -1;
            me0Var.m1694catch(i3, i2, 0, 0);
            swipeBackLayout.invalidate();
        }
        i2 = 0;
        me0 me0Var2 = swipeBackLayout.f10561try;
        me0Var2.f3017native = swipeBackLayout.f10557new;
        me0Var2.f3013for = -1;
        me0Var2.m1694catch(i3, i2, 0, 0);
        swipeBackLayout.invalidate();
    }

    public void setSwipeBackEnable(boolean z) {
        getSwipeBackLayout().setEnableGesture(z);
    }
}
