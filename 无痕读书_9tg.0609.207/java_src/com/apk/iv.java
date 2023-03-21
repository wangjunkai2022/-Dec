package com.apk;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.codelibrary.R$style;
import com.lxj.xpopup.core.BasePopupView;
import com.qq.e.comm.constants.ErrorCode;
/* compiled from: FullScreenDialog.java */
/* loaded from: classes8.dex */
public class iv extends Dialog {

    /* renamed from: do  reason: not valid java name */
    public BasePopupView f2257do;

    public iv(@NonNull Context context) {
        super(context, R$style._XPopup_TransparentDialog);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (m1286do()) {
            motionEvent.setLocation(motionEvent.getX(), motionEvent.getY() + pw.m2080class());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:8|(2:9|10)|(6:12|13|14|(1:16)|18|(3:20|(1:22)(1:24)|23)(2:25|(1:27)(2:28|(1:30)(2:31|(1:33)(2:34|(1:36)(2:37|(1:39)(2:40|(1:42)(2:43|(1:45)(2:46|(1:48)(3:49|(1:51)(2:53|(1:55)(2:56|(1:58)(2:59|(1:61)(2:62|(1:64)(2:65|(1:67)(2:68|(1:70)(2:71|(1:73)(2:74|(1:76)(2:77|(1:79)(2:80|(1:82)(1:83)))))))))))|52))))))))))|86|13|14|(0)|18|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0043 A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #0 {all -> 0x0048, blocks: (B:18:0x003b, B:20:0x0043), top: B:99:0x003b }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0077  */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1286do() {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.iv.m1286do():boolean");
    }

    /* renamed from: for  reason: not valid java name */
    public void m1287for(int i, boolean z) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (z) {
            attributes.flags = i | attributes.flags;
        } else {
            attributes.flags = (~i) & attributes.flags;
        }
        getWindow().setAttributes(attributes);
    }

    /* renamed from: if  reason: not valid java name */
    public void m1288if(MotionEvent motionEvent) {
        BasePopupView basePopupView = this.f2257do;
        if (basePopupView == null || !(basePopupView.getContext() instanceof Activity)) {
            return;
        }
        ((Activity) this.f2257do.getContext()).dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        if (getWindow() == null) {
            return;
        }
        BasePopupView basePopupView = this.f2257do;
        if (basePopupView != null && basePopupView.popupInfo.f2937strictfp) {
            if (Build.VERSION.SDK_INT >= 26) {
                getWindow().setType(2038);
            } else {
                getWindow().setType(ErrorCode.NOT_INIT);
            }
        }
        boolean z = false;
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().getDecorView().setPadding(0, 0, 0, 0);
        getWindow().setFlags(16777216, 16777216);
        getWindow().setSoftInputMode(16);
        if (m1286do()) {
            getWindow().getDecorView().setTranslationY(-pw.m2080class());
            Window window = getWindow();
            Window window2 = getWindow();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            window2.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
            window.setLayout(-1, Math.max(displayMetrics.heightPixels, pw.m2081const(getContext())));
        } else {
            Window window3 = getWindow();
            Window window4 = getWindow();
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            window4.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics2);
            window3.setLayout(-1, Math.max(displayMetrics2.heightPixels, pw.m2081const(getContext())));
        }
        getWindow().getDecorView().setSystemUiVisibility(1280);
        if (!this.f2257do.popupInfo.f2931package) {
            getWindow().setFlags(8, 8);
        }
        m1287for(201326592, false);
        getWindow().setStatusBarColor(0);
        if (this.f2257do.popupInfo.f2939switch != 0) {
            getWindow().setNavigationBarColor(this.f2257do.popupInfo.f2939switch);
        }
        getWindow().addFlags(Integer.MIN_VALUE);
        if (!this.f2257do.popupInfo.f2936static.booleanValue()) {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                int id = childAt.getId();
                if (id != -1) {
                    try {
                        str = getContext().getResources().getResourceEntryName(id);
                    } catch (Exception unused) {
                        str = "";
                    }
                    if ("navigationBarBackground".equals(str)) {
                        childAt.setVisibility(4);
                    }
                }
            }
            getWindow().setFlags(8, 8);
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() | 3846);
        }
        if (!this.f2257do.popupInfo.f2935return.booleanValue()) {
            getWindow().setFlags(1024, 1024);
        } else if (Build.VERSION.SDK_INT >= 23) {
            View decorView = getWindow().getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (Build.VERSION.SDK_INT >= 23 && (((Activity) this.f2257do.getContext()).getWindow().getDecorView().getSystemUiVisibility() & 8192) != 0) {
                z = true;
            }
            decorView.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
        setContentView(this.f2257do);
    }
}
