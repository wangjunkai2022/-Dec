package com.apk;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Locale;

/* compiled from: XPopupUtils.java */
/* loaded from: classes8.dex */
public class pw {

    /* renamed from: do  reason: not valid java name */
    public static int f3756do;

    /* renamed from: if  reason: not valid java name */
    public static Context f3757if;

    /* compiled from: XPopupUtils.java */
    /* renamed from: com.apk.pw$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ViewGroup f3758do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ int f3759for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ int f3760if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ Runnable f3761new;

        public Cdo(ViewGroup viewGroup, int i, int i2, Runnable runnable) {
            this.f3758do = viewGroup;
            this.f3760if = i;
            this.f3759for = i2;
            this.f3761new = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup.LayoutParams layoutParams = this.f3758do.getLayoutParams();
            View childAt = this.f3758do.getChildAt(0);
            ViewGroup.LayoutParams layoutParams2 = childAt.getLayoutParams();
            int measuredWidth = this.f3758do.getMeasuredWidth();
            int i = this.f3760if;
            if (i != 0) {
                layoutParams.width = Math.min(measuredWidth, i);
            }
            int measuredHeight = this.f3758do.getMeasuredHeight();
            if (layoutParams2.height == -1) {
                measuredHeight = ((ViewGroup) this.f3758do.getParent()).getMeasuredHeight();
                layoutParams.height = measuredHeight;
            }
            if (this.f3759for != 0) {
                int i2 = layoutParams.height;
                if (i2 != -1) {
                    if (i2 != pw.m2080class() + pw.m2081const(this.f3758do.getContext())) {
                        layoutParams.height = Math.min(measuredHeight, this.f3759for);
                    }
                }
                layoutParams2.height = Math.min(childAt.getMeasuredHeight(), this.f3759for);
                childAt.setLayoutParams(layoutParams2);
            }
            this.f3758do.setLayoutParams(layoutParams);
            Runnable runnable = this.f3761new;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static int m2077break(Window window) {
        View decorView = window.getDecorView();
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        int abs = Math.abs(decorView.getBottom() - rect.bottom);
        if (abs <= m2079catch()) {
            f3756do = abs;
            return 0;
        }
        return abs - f3756do;
    }

    /* renamed from: case  reason: not valid java name */
    public static Drawable m2078case(int i, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(f);
        return gradientDrawable;
    }

    /* renamed from: catch  reason: not valid java name */
    public static int m2079catch() {
        Resources system = Resources.getSystem();
        int identifier = system.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier != 0) {
            return system.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: class  reason: not valid java name */
    public static int m2080class() {
        Resources system = Resources.getSystem();
        return system.getDimensionPixelSize(system.getIdentifier("status_bar_height", "dimen", "android"));
    }

    /* renamed from: const  reason: not valid java name */
    public static int m2081const(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    /* renamed from: do  reason: not valid java name */
    public static String m2082do(mv mvVar) {
        int ordinal = mvVar.ordinal();
        return ordinal != 0 ? (ordinal == 3 || ordinal == 4) ? "png" : (ordinal == 5 || ordinal == 6) ? "webp" : "jpeg" : "gif";
    }

    /* renamed from: else  reason: not valid java name */
    public static Drawable m2083else(int i, float f, float f2, float f3, float f4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadii(new float[]{f, f, f2, f2, f3, f3, f4, f4});
        return gradientDrawable;
    }

    /* renamed from: final  reason: not valid java name */
    public static int m2084final(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth();
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2085for(ViewGroup viewGroup, int i, int i2, Runnable runnable) {
        viewGroup.post(new Cdo(viewGroup, i, i2, runnable));
    }

    /* renamed from: goto  reason: not valid java name */
    public static int m2086goto(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0042 -> B:50:0x0045). Please submit an issue!!! */
    /* renamed from: if  reason: not valid java name */
    public static boolean m2087if(File file, InputStream inputStream) {
        BufferedOutputStream bufferedOutputStream;
        boolean z = false;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = inputStream.read(bArr, 0, 8192);
                            if (read == -1) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, read);
                        }
                        z = true;
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        bufferedOutputStream.close();
                    } catch (IOException e2) {
                        e = e2;
                        bufferedOutputStream2 = bufferedOutputStream;
                        e.printStackTrace();
                        try {
                            inputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                        if (bufferedOutputStream2 != null) {
                            bufferedOutputStream2.close();
                        }
                        return z;
                    } catch (Throwable th) {
                        th = th;
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = bufferedOutputStream2;
                }
            } catch (IOException e6) {
                e = e6;
            }
        } catch (IOException e7) {
            e7.printStackTrace();
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b4, code lost:
        if (r8 > 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b6, code lost:
        r12 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0149, code lost:
        if (r8 > 0) goto L38;
     */
    /* renamed from: import  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m2088import(int r12, com.lxj.xpopup.core.BasePopupView r13) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.pw.m2088import(int, com.lxj.xpopup.core.BasePopupView):void");
    }

    /* renamed from: native  reason: not valid java name */
    public static void m2089native(View view, int i, int i2) {
        if (i > 0 || i2 > 0) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (i > 0) {
                layoutParams.width = i;
            }
            if (i2 > 0) {
                layoutParams.height = i2;
            }
            view.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static Activity m2090new(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* renamed from: public  reason: not valid java name */
    public static Bitmap m2091public(View view) {
        Bitmap createBitmap;
        if (view == null) {
            return null;
        }
        boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
        boolean willNotCacheDrawing = view.willNotCacheDrawing();
        view.setDrawingCacheEnabled(true);
        view.setWillNotCacheDrawing(false);
        Bitmap drawingCache = view.getDrawingCache();
        if (drawingCache == null) {
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            view.buildDrawingCache();
            Bitmap drawingCache2 = view.getDrawingCache();
            if (drawingCache2 != null) {
                createBitmap = Bitmap.createBitmap(drawingCache2);
            } else {
                createBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
                view.draw(new Canvas(createBitmap));
            }
        } else {
            createBitmap = Bitmap.createBitmap(drawingCache);
        }
        view.destroyDrawingCache();
        view.setWillNotCacheDrawing(willNotCacheDrawing);
        view.setDrawingCacheEnabled(isDrawingCacheEnabled);
        return createBitmap;
    }

    /* renamed from: super  reason: not valid java name */
    public static boolean m2092super(float f, float f2, Rect rect) {
        return f >= ((float) rect.left) && f <= ((float) rect.right) && f2 >= ((float) rect.top) && f2 <= ((float) rect.bottom);
    }

    /* renamed from: this  reason: not valid java name */
    public static void m2093this(ArrayList<EditText> arrayList, ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof EditText) && childAt.getVisibility() == 0) {
                arrayList.add((EditText) childAt);
            } else if (childAt instanceof ViewGroup) {
                m2093this(arrayList, (ViewGroup) childAt);
            }
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public static boolean m2094throw(Context context) {
        Locale locale;
        if (Build.VERSION.SDK_INT >= 24) {
            locale = context.getResources().getConfiguration().getLocales().get(0);
        } else {
            locale = context.getResources().getConfiguration().locale;
        }
        return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
    }

    /* renamed from: try  reason: not valid java name */
    public static BitmapDrawable m2095try(Resources resources, int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, 20, Bitmap.Config.ARGB_4444);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setColor(i2);
        canvas.drawRect(0.0f, 0.0f, createBitmap.getWidth(), 4.0f, paint);
        paint.setColor(0);
        canvas.drawRect(0.0f, 4.0f, createBitmap.getWidth(), 20.0f, paint);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, createBitmap);
        bitmapDrawable.setGravity(80);
        return bitmapDrawable;
    }

    /* renamed from: while  reason: not valid java name */
    public static boolean m2096while(Window window) {
        boolean z;
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            View childAt = viewGroup.getChildAt(i);
            int id = childAt.getId();
            if (id != -1 && "navigationBarBackground".equals(viewGroup.getContext().getResources().getResourceEntryName(id)) && childAt.getVisibility() == 0) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            return (viewGroup.getSystemUiVisibility() & 2) == 0;
        }
        return z;
    }
}
