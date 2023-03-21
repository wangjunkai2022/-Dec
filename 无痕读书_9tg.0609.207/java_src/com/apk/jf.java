package com.apk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.WindowManager;
/* compiled from: DisplayCutoutHelper.java */
/* loaded from: classes8.dex */
public class jf {

    /* renamed from: do  reason: not valid java name */
    public final Activity f2314do;

    public jf(Activity activity) {
        this.f2314do = activity;
    }

    @TargetApi(28)
    /* renamed from: do  reason: not valid java name */
    public void m1310do() {
        View decorView;
        try {
            if (this.f2314do != null && Build.VERSION.SDK_INT >= 28 && (decorView = this.f2314do.getWindow().getDecorView()) != null) {
                try {
                    WindowManager.LayoutParams attributes = this.f2314do.getWindow().getAttributes();
                    attributes.layoutInDisplayCutoutMode = 1;
                    this.f2314do.getWindow().setAttributes(attributes);
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1028);
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (NoSuchFieldError e2) {
                    e2.printStackTrace();
                } catch (NoSuchMethodError e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
