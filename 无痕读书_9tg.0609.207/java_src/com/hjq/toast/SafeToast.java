package com.hjq.toast;

import android.annotation.TargetApi;
import android.app.Application;
import android.os.Handler;
import android.widget.Toast;
import java.lang.reflect.Field;
@TargetApi(19)
/* loaded from: classes8.dex */
public final class SafeToast extends NormalToast {
    public SafeToast(Application application) {
        super(application);
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
            declaredField2.setAccessible(true);
            declaredField2.set(obj, new SafeHandler((Handler) declaredField2.get(obj)));
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
    }
}
