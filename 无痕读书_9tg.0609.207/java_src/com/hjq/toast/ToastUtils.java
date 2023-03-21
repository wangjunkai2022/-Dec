package com.hjq.toast;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.hjq.toast.style.ToastBlackStyle;
/* loaded from: classes8.dex */
public final class ToastUtils {
    public static IToastInterceptor sInterceptor;
    public static IToastStrategy sStrategy;
    public static Toast sToast;

    public static synchronized void cancel() {
        synchronized (ToastUtils.class) {
            checkToastState();
            sStrategy.cancel();
        }
    }

    public static void checkNullPointer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("are you ok?");
        }
    }

    public static void checkToastState() {
        if (sToast == null) {
            throw new IllegalStateException("ToastUtils has not been initialized");
        }
    }

    public static TextView createTextView(Context context, IToastStyle iToastStyle) {
        TextView textView = new TextView(context);
        textView.setId(16908299);
        textView.setTextColor(iToastStyle.getTextColor());
        textView.setTextSize(0, iToastStyle.getTextSize());
        textView.setPaddingRelative(iToastStyle.getPaddingStart(), iToastStyle.getPaddingTop(), iToastStyle.getPaddingEnd(), iToastStyle.getPaddingBottom());
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(iToastStyle.getBackgroundColor());
        gradientDrawable.setCornerRadius(iToastStyle.getCornerRadius());
        textView.setBackground(gradientDrawable);
        textView.setZ(iToastStyle.getZ());
        if (iToastStyle.getMaxLines() > 0) {
            textView.setMaxLines(iToastStyle.getMaxLines());
        }
        return textView;
    }

    public static Context getContext() {
        checkToastState();
        return sToast.getView().getContext();
    }

    public static Toast getToast() {
        return sToast;
    }

    public static <V extends View> V getView() {
        checkToastState();
        return (V) sToast.getView();
    }

    public static void init(Application application) {
        init(application, new ToastBlackStyle(application));
    }

    public static void initStyle(IToastStyle iToastStyle) {
        checkNullPointer(iToastStyle);
        Toast toast = sToast;
        if (toast != null) {
            toast.cancel();
            sToast.setView(createTextView(getContext(), iToastStyle));
            sToast.setGravity(iToastStyle.getGravity(), iToastStyle.getXOffset(), iToastStyle.getYOffset());
        }
    }

    public static void setGravity(int i, int i2, int i3) {
        checkToastState();
        sToast.setGravity(Gravity.getAbsoluteGravity(i, getContext().getResources().getConfiguration().getLayoutDirection()), i2, i3);
    }

    public static void setToast(Toast toast) {
        checkNullPointer(toast);
        if (sToast != null && toast.getView() == null) {
            toast.setView(sToast.getView());
            toast.setGravity(sToast.getGravity(), sToast.getXOffset(), sToast.getYOffset());
            toast.setMargin(sToast.getHorizontalMargin(), sToast.getVerticalMargin());
        }
        sToast = toast;
        IToastStrategy iToastStrategy = sStrategy;
        if (iToastStrategy != null) {
            iToastStrategy.bind(toast);
        }
    }

    public static void setToastInterceptor(IToastInterceptor iToastInterceptor) {
        checkNullPointer(iToastInterceptor);
        sInterceptor = iToastInterceptor;
    }

    public static void setToastStrategy(IToastStrategy iToastStrategy) {
        checkNullPointer(iToastStrategy);
        sStrategy = iToastStrategy;
        Toast toast = sToast;
        if (toast != null) {
            iToastStrategy.bind(toast);
        }
    }

    public static void setView(int i) {
        checkToastState();
        setView(View.inflate(getContext(), i, null));
    }

    public static void show(Object obj) {
        show((CharSequence) (obj != null ? obj.toString() : "null"));
    }

    public static void init(Application application, IToastStyle iToastStyle) {
        checkNullPointer(application);
        if (sInterceptor == null) {
            setToastInterceptor(new ToastInterceptor());
        }
        if (sStrategy == null) {
            setToastStrategy(new ToastStrategy());
        }
        setToast(sStrategy.create(application));
        setView(createTextView(application, iToastStyle));
        setGravity(iToastStyle.getGravity(), iToastStyle.getXOffset(), iToastStyle.getYOffset());
    }

    public static void show(int i) {
        checkToastState();
        try {
            show(getContext().getResources().getText(i));
        } catch (Resources.NotFoundException unused) {
            show((CharSequence) String.valueOf(i));
        }
    }

    public static void setView(View view) {
        checkToastState();
        checkNullPointer(view);
        Context context = view.getContext();
        if (!(context instanceof Activity) && !(context instanceof Service)) {
            Toast toast = sToast;
            if (toast != null) {
                toast.cancel();
                sToast.setView(view);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The view must be initialized using the context of the application");
    }

    public static synchronized void show(CharSequence charSequence) {
        synchronized (ToastUtils.class) {
            checkToastState();
            if (sInterceptor.intercept(sToast, charSequence)) {
                return;
            }
            sStrategy.show(charSequence);
        }
    }
}
