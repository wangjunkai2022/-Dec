package com.bytedance.pangle.flipped;

import android.util.Log;
import androidx.annotation.Keep;
import com.bytedance.pangle.ZeusConstants;
import java.lang.reflect.Method;
@Keep
/* loaded from: classes8.dex */
public class FlippedV2Impl implements c {
    public static final String TAG = "FlippedV2Impl";

    static {
        System.loadLibrary(ZeusConstants.BASE_LIB_NAME + "flipped");
    }

    private native Method getDeclaredMethod(Object obj, String str, Class<?>[] clsArr);

    @Override // com.bytedance.pangle.flipped.c
    public void invokeHiddenApiRestrictions() {
        try {
            Class<?> cls = Class.forName("dalvik.system.VMRuntime");
            Method declaredMethod = getDeclaredMethod(cls, "getRuntime", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            Method declaredMethod2 = getDeclaredMethod(cls, "setHiddenApiExemptions", new Class[]{String[].class});
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(invoke, new String[]{"L"});
        } catch (Exception e) {
            Log.getStackTraceString(e);
        }
    }
}
