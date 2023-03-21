package com.bytedance.msdk.adapter.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b0;
import com.apk.Cgoto;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes8.dex */
public class UIUtils {
    public static final int VIVO_FILLET = 8;
    public static final int VIVO_NOTCH = 32;

    /* renamed from: do  reason: not valid java name */
    public static float f8770do = -1.0f;

    /* renamed from: for  reason: not valid java name */
    public static float f8771for = -1.0f;

    /* renamed from: if  reason: not valid java name */
    public static int f8772if = -1;

    /* renamed from: new  reason: not valid java name */
    public static int f8773new = -1;

    /* renamed from: try  reason: not valid java name */
    public static int f8774try = -1;

    static {
        init(a.d());
    }

    @SuppressLint({"ObsoleteSdkInt"})
    public static boolean canShow(Context context, View view, int i) {
        if (view == null) {
            Logger.d("adView is null.");
            return false;
        } else if (view.getParent() == null) {
            Logger.d("adView has no parent.");
            return false;
        } else if (view.getWindowVisibility() != 0) {
            Logger.d("adView window is not set to VISIBLE.");
            return false;
        } else if (view.getVisibility() != 0) {
            Logger.d("adView is not set to VISIBLE.");
            return false;
        } else {
            if (view.getMeasuredWidth() > 0 && view.getMeasuredHeight() > 0) {
                if (view.getAlpha() < 0.9f) {
                    Logger.d("adView is transparent.");
                    return false;
                }
                int width = view.getWidth();
                int height = view.getHeight();
                int[] iArr = new int[2];
                try {
                    view.getLocationOnScreen(iArr);
                    int screenWidth = getScreenWidth(context);
                    int screenHeight = getScreenHeight(context);
                    if (iArr[0] >= 0 && screenWidth - iArr[0] >= width) {
                        int i2 = (int) (((100.0d - i) * height) / 100.0d);
                        if (iArr[1] < 0 && Math.abs(iArr[1]) > i2) {
                            Logger.d("adView is not visible from the top.");
                            return false;
                        } else if ((height + iArr[1]) - screenHeight > i2) {
                            Logger.d("adView is not visible from the bottom.");
                            return false;
                        } else {
                            Logger.d("adView is visible.");
                            return isScreenOnAndNotInKeygaurdInputMode(context);
                        }
                    }
                    Logger.d("adView is not fully on screen horizontally.");
                } catch (Exception unused) {
                    Logger.d("Cannot get location on screen.");
                    return false;
                }
            } else {
                StringBuilder m1016super = Cgoto.m1016super("adView has invisible dimensions (w=");
                m1016super.append(view.getMeasuredWidth());
                m1016super.append(", h=");
                m1016super.append(view.getMeasuredHeight());
                Logger.d(m1016super.toString());
            }
            return false;
        }
    }

    public static float dip2Px(Context context, float f) {
        init(context);
        return (getDensity(context) * f) + 0.5f;
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Nullable
    public static int[] getCoordinate(View view) {
        if (view == null || view.getVisibility() != 0) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    public static float getDensity(Context context) {
        init(context);
        return f8770do;
    }

    public static int getDensityDpi(Context context) {
        init(context);
        return f8772if;
    }

    public static int getInt(String str, Activity activity) {
        if (b0.t()) {
            try {
                Class<?> loadClass = activity.getClassLoader().loadClass("android.os.SystemProperties");
                return ((Integer) loadClass.getMethod("getInt", String.class, Integer.TYPE).invoke(loadClass, new String(str), new Integer(0))).intValue();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                return 0;
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
                return 0;
            } catch (IllegalArgumentException e3) {
                e3.printStackTrace();
                return 0;
            } catch (NoSuchMethodException e4) {
                e4.printStackTrace();
                return 0;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public static int getRealHeight(Context context) {
        if (context == null) {
            context = a.d();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int getRealWidth(Context context) {
        if (context == null) {
            context = a.d();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static float getScaledDensity(Context context) {
        init(context);
        return f8771for;
    }

    public static int getScreenHeight(Context context) {
        init(context);
        return f8774try;
    }

    public static Bitmap getScreenShot(View view) {
        if (view == null) {
            return null;
        }
        view.destroyDrawingCache();
        view.setDrawingCacheEnabled(true);
        view.buildDrawingCache();
        return view.getDrawingCache();
    }

    public static int getScreenWidth(Context context) {
        init(context);
        return f8773new;
    }

    public static float getStatusBarHeight(Context context) {
        if (context == null) {
            context = a.d();
        }
        int identifier = context.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getApplicationContext().getResources().getDimensionPixelSize(identifier);
        }
        return 0.0f;
    }

    @Nullable
    public static int[] getViewSize(View view) {
        if (view != null) {
            return new int[]{view.getWidth(), view.getHeight()};
        }
        return null;
    }

    public static boolean hasNotchAtHuawei(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean hasNotchAtOPPO(Context context) {
        return context.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
    }

    public static boolean hasNotchAtVivo(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean hasNotchScreen(Activity activity) {
        return getInt("ro.miui.notch", activity) == 1 || hasNotchAtHuawei(activity) || hasNotchAtOPPO(activity) || hasNotchAtVivo(activity) || isAndroidPHasNotch(activity);
    }

    public static void hideBottomUIMenu(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(3842);
            activity.getWindow().addFlags(134217728);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void init(Context context) {
        Context d = context == null ? a.d() : context;
        if (d == null) {
            return;
        }
        DisplayMetrics displayMetrics = d.getResources().getDisplayMetrics();
        f8770do = displayMetrics.density;
        f8772if = displayMetrics.densityDpi;
        f8771for = displayMetrics.scaledDensity;
        f8773new = displayMetrics.widthPixels;
        f8774try = displayMetrics.heightPixels;
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        if (context.getResources().getConfiguration().orientation == 1) {
            int i = f8773new;
            int i2 = f8774try;
            if (i > i2) {
                f8773new = i2;
                f8774try = i;
                return;
            }
            return;
        }
        int i3 = f8773new;
        int i4 = f8774try;
        if (i3 < i4) {
            f8773new = i4;
            f8774try = i3;
        }
    }

    public static boolean isAndroidPHasNotch(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            try {
                Class<?> cls = Class.forName("android.view.WindowInsets");
                return cls.getMethod("getDisplayCutout", new Class[0]).invoke(cls, new Object[0]) != null;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public static boolean isScreenOnAndNotInKeygaurdInputMode(Context context) {
        KeyguardManager keyguardManager;
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager == null || !powerManager.isScreenOn() || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null) {
                return false;
            }
            return !keyguardManager.inKeyguardRestrictedInputMode();
        } catch (Exception e) {
            StringBuilder m1016super = Cgoto.m1016super("adView exception:");
            m1016super.append(e.getMessage());
            Logger.d(m1016super.toString());
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isViewVisible(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public static int px2dip(Context context, float f) {
        init(context);
        float density = getDensity(context);
        if (density <= 0.0f) {
            density = 1.0f;
        }
        return (int) ((f / density) + 0.5f);
    }

    public static int px2sp(Context context, float f) {
        init(context);
        float scaledDensity = getScaledDensity(context);
        if (scaledDensity <= 0.0f) {
            scaledDensity = 1.0f;
        }
        return (int) ((f / scaledDensity) + 0.5f);
    }

    public static void setClickListener(boolean z, View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        if (z) {
            view.setOnClickListener(onClickListener);
            view.setClickable(true);
            return;
        }
        view.setOnClickListener(null);
        view.setClickable(false);
    }

    public static void setOnClickListener(View view, View.OnClickListener onClickListener, String str) {
        if (view == null) {
            Logger.e("OnclickListener ", str + " is null , can not set OnClickListener !!!");
            return;
        }
        view.setOnClickListener(onClickListener);
    }

    public static void setOnTouchListener(View view, View.OnTouchListener onTouchListener, String str) {
        if (view == null) {
            Logger.e("OnTouchListener ", str + " is null , can not set OnTouchListener !!!");
            return;
        }
        view.setOnTouchListener(onTouchListener);
    }

    public static void setText(TextView textView, CharSequence charSequence) {
        if (textView == null || TextUtils.isEmpty(charSequence)) {
            return;
        }
        textView.setText(charSequence);
    }

    public static void setViewVisibility(View view, int i) {
        if (view == null || view.getVisibility() == i) {
            return;
        }
        if (i == 0 || i == 8 || i == 4) {
            view.setVisibility(i);
        }
    }

    public static float sp2px(Context context, float f) {
        init(context);
        return TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }

    public static void updateLayoutMargin(View view, int i, int i2, int i3, int i4) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (marginLayoutParams.leftMargin == i && marginLayoutParams.topMargin == i2 && marginLayoutParams.rightMargin == i3 && marginLayoutParams.bottomMargin == i4) {
            return;
        }
        if (i != -3) {
            marginLayoutParams.leftMargin = i;
        }
        if (i2 != -3) {
            marginLayoutParams.topMargin = i2;
        }
        if (i3 != -3) {
            marginLayoutParams.rightMargin = i3;
        }
        if (i4 != -3) {
            marginLayoutParams.bottomMargin = i4;
        }
        view.setLayoutParams(marginLayoutParams);
    }

    public int getVirtualBarHeight(Context context) {
        if (context == null) {
            context = a.d();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            return displayMetrics.heightPixels - defaultDisplay.getHeight();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
