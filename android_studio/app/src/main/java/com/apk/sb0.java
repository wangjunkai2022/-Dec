package com.apk;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.ScaleDrawable;
import android.net.Uri;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.core.app.FrameMetricsAggregator;
import androidx.exifinterface.media.ExifInterface;
import com.apk.ho0;
import com.apk.pp0;
import com.apk.sh0;
import com.apk.yo0;
import com.google.android.material.slider.BasicLabelFormatter;
import com.google.zxing.common.StringUtils;
import com.tr.comment.sdk.TrCommentSdk;
import java.io.Closeable;
import java.io.DataInput;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.logging.Logger;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.internal.HidesMembers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: TrSpManager.java */
/* loaded from: classes7.dex */
public class sb0 {

    /* renamed from: do  reason: not valid java name */
    public static nb0 f4318do;

    /* renamed from: for  reason: not valid java name */
    public static boolean f4319for;

    /* renamed from: if  reason: not valid java name */
    public static boolean f4320if;

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> List<T> a(@NotNull List<? extends T> list) {
        nd0.m1875new(list, "$this$optimizeReadOnlyList");
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : m2406continue(list.get(0));
        }
        return xc0.f5512do;
    }

    /* renamed from: abstract  reason: not valid java name */
    public static final boolean m2400abstract(char c) {
        return Character.isWhitespace(c) || Character.isSpaceChar(c);
    }

    public static ho0.Cdo b(no0 no0Var) {
        no0 mo1382private = no0Var.mo1382private();
        ho0 ho0Var = mo1382private instanceof ho0 ? (ho0) mo1382private : null;
        if (ho0Var == null) {
            ho0Var = new ho0("");
        }
        return ho0Var.f1908break;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0072  */
    /* renamed from: break  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap m2401break(android.content.Context r6, android.graphics.Bitmap r7, int r8) throws android.renderscript.RSRuntimeException {
        /*
            r0 = 23
            r1 = 0
            android.renderscript.RenderScript r6 = android.renderscript.RenderScript.create(r6)     // Catch: java.lang.Throwable -> L55
            android.renderscript.RenderScript$RSMessageHandler r2 = new android.renderscript.RenderScript$RSMessageHandler     // Catch: java.lang.Throwable -> L4f
            r2.<init>()     // Catch: java.lang.Throwable -> L4f
            r6.setMessageHandler(r2)     // Catch: java.lang.Throwable -> L4f
            android.renderscript.Allocation$MipmapControl r2 = android.renderscript.Allocation.MipmapControl.MIPMAP_NONE     // Catch: java.lang.Throwable -> L4f
            r3 = 1
            android.renderscript.Allocation r2 = android.renderscript.Allocation.createFromBitmap(r6, r7, r2, r3)     // Catch: java.lang.Throwable -> L4f
            android.renderscript.Type r3 = r2.getType()     // Catch: java.lang.Throwable -> L4d
            android.renderscript.Allocation r3 = android.renderscript.Allocation.createTyped(r6, r3)     // Catch: java.lang.Throwable -> L4d
            android.renderscript.Element r4 = android.renderscript.Element.U8_4(r6)     // Catch: java.lang.Throwable -> L48
            android.renderscript.ScriptIntrinsicBlur r1 = android.renderscript.ScriptIntrinsicBlur.create(r6, r4)     // Catch: java.lang.Throwable -> L48
            r1.setInput(r2)     // Catch: java.lang.Throwable -> L48
            float r8 = (float) r8     // Catch: java.lang.Throwable -> L48
            r1.setRadius(r8)     // Catch: java.lang.Throwable -> L48
            r1.forEach(r3)     // Catch: java.lang.Throwable -> L48
            r3.copyTo(r7)     // Catch: java.lang.Throwable -> L48
            int r8 = android.os.Build.VERSION.SDK_INT
            if (r8 < r0) goto L3b
            android.renderscript.RenderScript.releaseAllContexts()
            goto L3e
        L3b:
            r6.destroy()
        L3e:
            r2.destroy()
            r3.destroy()
            r1.destroy()
            return r7
        L48:
            r7 = move-exception
            r5 = r1
            r1 = r6
            r6 = r5
            goto L59
        L4d:
            r7 = move-exception
            goto L51
        L4f:
            r7 = move-exception
            r2 = r1
        L51:
            r3 = r1
            r1 = r6
            r6 = r3
            goto L59
        L55:
            r7 = move-exception
            r6 = r1
            r2 = r6
            r3 = r2
        L59:
            if (r1 == 0) goto L66
            int r8 = android.os.Build.VERSION.SDK_INT
            if (r8 < r0) goto L63
            android.renderscript.RenderScript.releaseAllContexts()
            goto L66
        L63:
            r1.destroy()
        L66:
            if (r2 == 0) goto L6b
            r2.destroy()
        L6b:
            if (r3 == 0) goto L70
            r3.destroy()
        L70:
            if (r6 == 0) goto L75
            r6.destroy()
        L75:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.sb0.m2401break(android.content.Context, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    public static ho0 c(String str, String str2) {
        yo0.Cfor cfor;
        ro0 ro0Var = new ro0();
        ro0Var.mo389for(new StringReader(str), str2, new wo0(ro0Var));
        ap0 ap0Var = ro0Var.f735for;
        yo0.Cbreak cbreak = yo0.Cbreak.EOF;
        while (true) {
            if (!ap0Var.f147try) {
                ap0Var.f139for.mo265case(ap0Var, ap0Var.f136do);
            } else {
                StringBuilder sb = ap0Var.f137else;
                if (sb.length() != 0) {
                    String sb2 = sb.toString();
                    sb.delete(0, sb.length());
                    ap0Var.f132case = null;
                    yo0.Cfor cfor2 = ap0Var.f134class;
                    cfor2.f6018if = sb2;
                    cfor = cfor2;
                } else {
                    String str3 = ap0Var.f132case;
                    if (str3 != null) {
                        yo0.Cfor cfor3 = ap0Var.f134class;
                        cfor3.f6018if = str3;
                        ap0Var.f132case = null;
                        cfor = cfor3;
                    } else {
                        ap0Var.f147try = false;
                        cfor = ap0Var.f143new;
                    }
                }
                ro0Var.mo391new(cfor);
                cfor.mo3089else();
                if (cfor.f6010do == cbreak) {
                    ro0Var.f737if.m2165new();
                    ro0Var.f737if = null;
                    ro0Var.f735for = null;
                    ro0Var.f740try = null;
                    ro0Var.f739this = null;
                    return ro0Var.f738new;
                }
            }
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static final <T> void m2402case(@NotNull Appendable appendable, T t, @Nullable id0<? super T, ? extends CharSequence> id0Var) {
        nd0.m1875new(appendable, "$this$appendElement");
        if (id0Var != null) {
            appendable.append(id0Var.mo1187if(t));
            return;
        }
        if (t != null ? t instanceof CharSequence : true) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(String.valueOf(t));
        }
    }

    @NotNull
    /* renamed from: catch  reason: not valid java name */
    public static final sk0 m2403catch(@NotNull jl0 jl0Var) {
        nd0.m1875new(jl0Var, "$this$buffer");
        return new el0(jl0Var);
    }

    @NotNull
    /* renamed from: class  reason: not valid java name */
    public static final tk0 m2404class(@NotNull ll0 ll0Var) {
        nd0.m1875new(ll0Var, "$this$buffer");
        return new fl0(ll0Var);
    }

    /* renamed from: const  reason: not valid java name */
    public static String m2405const(Context context) {
        if (f4320if) {
            pp0 pp0Var = pp0.Cif.f3730do;
            Context applicationContext = context.getApplicationContext();
            synchronized (pp0Var) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    if (pp0Var.f3724do == null) {
                        Intent intent = new Intent();
                        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
                        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
                        if (applicationContext.bindService(intent, pp0Var.f3728try, 1)) {
                            synchronized (pp0Var.f3727new) {
                                try {
                                    pp0Var.f3727new.wait(TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                        if (pp0Var.f3724do == null) {
                            return "";
                        }
                        try {
                            return pp0Var.m2070do(applicationContext, "OUID");
                        } catch (RemoteException e2) {
                            e2.printStackTrace();
                            return "";
                        }
                    }
                    try {
                        return pp0Var.m2070do(applicationContext, "OUID");
                    } catch (RemoteException e3) {
                        e3.printStackTrace();
                        return "";
                    }
                }
                throw new IllegalStateException("Cannot run on MainThread");
            }
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    @NotNull
    /* renamed from: continue  reason: not valid java name */
    public static final <T> List<T> m2406continue(T t) {
        List<T> singletonList = Collections.singletonList(t);
        nd0.m1872for(singletonList, "java.util.Collections.singletonList(element)");
        return singletonList;
    }

    public static wo0 d(no0 no0Var) {
        wo0 wo0Var;
        no0 mo1382private = no0Var.mo1382private();
        ho0 ho0Var = mo1382private instanceof ho0 ? (ho0) mo1382private : null;
        return (ho0Var == null || (wo0Var = ho0Var.f1909catch) == null) ? new wo0(new ro0()) : wo0Var;
    }

    @NotNull
    /* renamed from: default  reason: not valid java name */
    public static final String m2407default(long j) {
        String str;
        if (j <= -999500000) {
            str = ((j - 500000000) / ((long) BasicLabelFormatter.BILLION)) + " s ";
        } else if (j <= -999500) {
            str = ((j - ((long) FrameMetricsAggregator.FrameMetricsApi24Impl.NANOS_ROUNDING_VALUE)) / 1000000) + " ms";
        } else if (j <= 0) {
            str = ((j - 500) / 1000) + " µs";
        } else if (j < 999500) {
            str = ((j + 500) / 1000) + " µs";
        } else if (j < 999500000) {
            str = ((j + ((long) FrameMetricsAggregator.FrameMetricsApi24Impl.NANOS_ROUNDING_VALUE)) / 1000000) + " ms";
        } else {
            str = ((j + 500000000) / ((long) BasicLabelFormatter.BILLION)) + " s ";
        }
        String format = String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
        nd0.m1872for(format, "java.lang.String.format(format, *args)");
        return format;
    }

    /* renamed from: do  reason: not valid java name */
    public static nb0 m2408do() {
        if (f4318do == null) {
            f4318do = new mb0(TrCommentSdk.getAppContext(), "TR_COMMENT_SP_NAME");
        }
        return f4318do;
    }

    public static void e(byte[] bArr, int i) {
        bArr[0] = (byte) i;
        bArr[1] = (byte) (i >> 8);
        bArr[2] = (byte) (i >> 16);
        bArr[3] = (byte) (i >> 24);
        bArr[4] = 0;
        bArr[5] = 0;
        bArr[6] = 0;
        bArr[7] = 0;
        bArr[8] = 0;
        bArr[9] = 0;
        bArr[10] = 0;
        bArr[11] = 0;
        bArr[12] = 0;
        bArr[13] = 0;
        bArr[14] = 0;
        bArr[15] = 0;
    }

    /* renamed from: else  reason: not valid java name */
    public static void m2409else(if0 if0Var, File file) throws af0 {
        if (if0Var != null) {
            if (file.exists()) {
                if (if0Var.f2085if > 0 && file.exists()) {
                    int i = if0Var.f2085if;
                    int i2 = (i & 31) * 2;
                    int i3 = (i >> 5) & 63;
                    int i4 = (i >> 11) & 31;
                    int i5 = (i >> 16) & 31;
                    int i6 = ((i >> 25) & 127) + 1980;
                    Calendar calendar = Calendar.getInstance();
                    calendar.set(i6, ((i >> 21) & 15) - 1, i5, i4, i3, i2);
                    calendar.set(14, 0);
                    file.setLastModified(calendar.getTime().getTime());
                }
                k(if0Var, file, true, true, true, true);
                return;
            }
            throw new af0("cannot set file properties: file doesnot exist");
        }
        throw new af0("cannot set file properties: file header is null");
    }

    /* renamed from: extends  reason: not valid java name */
    public static void m2410extends(boolean z) {
        if (z) {
            throw new IllegalArgumentException("Must be false");
        }
    }

    public static int f(byte[] bArr, int i) {
        return ((((bArr[i + 3] & ExifInterface.MARKER) << 8) | (bArr[i + 2] & ExifInterface.MARKER)) << 16) | (bArr[i] & ExifInterface.MARKER) | ((bArr[i + 1] & ExifInterface.MARKER) << 8);
    }

    /* renamed from: final  reason: not valid java name */
    public static boolean m2411final(@NonNull Drawable drawable) {
        Drawable drawable2;
        if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState instanceof DrawableContainer.DrawableContainerState) {
                for (Drawable drawable3 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                    if (!m2411final(drawable3)) {
                        return false;
                    }
                }
            }
        } else if (jr0.m1396for(drawable)) {
            return m2411final(jr0.m1395do(drawable));
        } else {
            if (jr0.m1398new(drawable)) {
                return m2411final(jr0.m1397if(drawable));
            }
            Class<?> cls = jr0.f2421else;
            if (cls != null && cls.isAssignableFrom(drawable.getClass())) {
                Class<?> cls2 = jr0.f2421else;
                if (cls2 != null) {
                    if (jr0.f2423goto == null) {
                        try {
                            Method declaredMethod = cls2.getDeclaredMethod("getWrappedDrawable", new Class[0]);
                            jr0.f2423goto = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (Exception unused) {
                        }
                    }
                    Method method = jr0.f2423goto;
                    if (method != null) {
                        try {
                            drawable = (Drawable) method.invoke(drawable, new Object[0]);
                        } catch (Exception unused2) {
                        }
                    }
                }
                return m2411final(drawable);
            } else if ((drawable instanceof ScaleDrawable) && (drawable2 = ((ScaleDrawable) drawable).getDrawable()) != null) {
                return m2411final(drawable2);
            }
        }
        return true;
    }

    /* renamed from: finally  reason: not valid java name */
    public static boolean m2412finally(String str) {
        return str != null && str.trim().length() > 0;
    }

    /* renamed from: for  reason: not valid java name */
    public static final void m2413for(ph0 ph0Var, rh0 rh0Var, String str) {
        sh0.Cif cif = sh0.f4354break;
        Logger logger = sh0.f4356this;
        StringBuilder sb = new StringBuilder();
        sb.append(rh0Var.f4051case);
        sb.append(' ');
        String format = String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1));
        nd0.m1872for(format, "java.lang.String.format(format, *args)");
        sb.append(format);
        sb.append(": ");
        sb.append(ph0Var.f3657for);
        logger.fine(sb.toString());
    }

    public static int g(DataInput dataInput, byte[] bArr) throws af0 {
        try {
            dataInput.readFully(bArr, 0, 4);
            return (bArr[0] & ExifInterface.MARKER) | ((bArr[1] & ExifInterface.MARKER) << 8) | ((((bArr[3] & ExifInterface.MARKER) << 8) | (bArr[2] & ExifInterface.MARKER)) << 16);
        } catch (IOException e) {
            throw new af0(e);
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public static final boolean m2414goto(@NotNull byte[] bArr, int i, @NotNull byte[] bArr2, int i2, int i3) {
        nd0.m1875new(bArr, "a");
        nd0.m1875new(bArr2, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static long h(byte[] bArr, int i) {
        return (bArr[i] & ExifInterface.MARKER) | (((((((((((((((bArr[i + 7] & ExifInterface.MARKER) | 0) << 8) | (bArr[i + 6] & ExifInterface.MARKER)) << 8) | (bArr[i + 5] & ExifInterface.MARKER)) << 8) | (bArr[i + 4] & ExifInterface.MARKER)) << 8) | (bArr[i + 3] & ExifInterface.MARKER)) << 8) | (bArr[i + 2] & ExifInterface.MARKER)) << 8) | (bArr[i + 1] & ExifInterface.MARKER)) << 8);
    }

    public static int i(byte[] bArr, int i) {
        return ((bArr[i + 1] & ExifInterface.MARKER) << 8) | (bArr[i] & ExifInterface.MARKER);
    }

    /* renamed from: if  reason: not valid java name */
    public static vb0 m2415if(View view, View view2) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int height = view.getHeight();
        int i = TrCommentSdk.getAppContext().getResources().getDisplayMetrics().heightPixels;
        int i2 = TrCommentSdk.getAppContext().getResources().getDisplayMetrics().widthPixels;
        view2.measure(0, 0);
        int measuredHeight = view2.getMeasuredHeight();
        int measuredWidth = view2.getMeasuredWidth();
        boolean z = (i - iArr2[1]) - height < measuredHeight;
        if (z) {
            iArr[0] = i2 - measuredWidth;
            iArr[1] = iArr2[1] - measuredHeight;
        } else {
            iArr[0] = i2 - measuredWidth;
            iArr[1] = iArr2[1] + height;
        }
        return new vb0(z, iArr, null);
    }

    /* renamed from: implements  reason: not valid java name */
    public static void m2416implements(@javax.annotation.Nullable String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(str2);
        }
    }

    @SinceKotlin(version = "1.1")
    @PublishedApi
    /* renamed from: import  reason: not valid java name */
    public static final void m2417import(@Nullable Closeable closeable, @Nullable Throwable th) {
        if (closeable == null) {
            return;
        }
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            m2436try(th, th2);
        }
    }

    /* renamed from: instanceof  reason: not valid java name */
    public static void m2418instanceof(@javax.annotation.Nullable Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Object must not be null");
        }
    }

    /* renamed from: interface  reason: not valid java name */
    public static final int m2419interface(int i, int i2) {
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    public static final int j(@NotNull il0 il0Var, int i) {
        int i2;
        nd0.m1875new(il0Var, "$this$segment");
        int[] iArr = il0Var.f2150else;
        int i3 = i + 1;
        int length = il0Var.f2149case.length;
        nd0.m1875new(iArr, "$this$binarySearch");
        int i4 = length - 1;
        int i5 = 0;
        while (true) {
            if (i5 <= i4) {
                i2 = (i5 + i4) >>> 1;
                int i6 = iArr[i2];
                if (i6 >= i3) {
                    if (i6 <= i3) {
                        break;
                    }
                    i4 = i2 - 1;
                } else {
                    i5 = i2 + 1;
                }
            } else {
                i2 = (-i5) - 1;
                break;
            }
        }
        return i2 >= 0 ? i2 : ~i2;
    }

    public static void k(if0 if0Var, File file, boolean z, boolean z2, boolean z3, boolean z4) throws af0 {
        byte[] bArr = if0Var.f2090this;
        if (bArr == null) {
            return;
        }
        byte b = bArr[0];
        if (b == 1) {
            if (z) {
                l(file);
            }
        } else if (b != 2) {
            if (b == 3) {
                if (z) {
                    l(file);
                }
            } else if (b != 18) {
                if (b == 38) {
                    if (z) {
                        l(file);
                    }
                } else if (b == 48 || b == 50) {
                } else {
                    if (b == 33) {
                        if (z) {
                            l(file);
                        }
                    } else if (b == 35 && z) {
                        l(file);
                    }
                }
            }
        }
    }

    public static void l(File file) throws af0 {
        if (file != null) {
            if (file.exists()) {
                file.setReadOnly();
                return;
            }
            return;
        }
        throw new af0("input file is null. cannot set read only file attribute");
    }

    public static final char m(@NotNull char[] cArr) {
        nd0.m1875new(cArr, "$this$single");
        int length = cArr.length;
        if (length != 0) {
            if (length == 1) {
                return cArr[0];
            }
            throw new IllegalArgumentException("Array has more than one element.");
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final void n() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    @PublishedApi
    /* renamed from: native  reason: not valid java name */
    public static final <T> int m2420native(@NotNull Iterable<? extends T> iterable, int i) {
        nd0.m1875new(iterable, "$this$collectionSizeOrDefault");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i;
    }

    /* renamed from: new  reason: not valid java name */
    public static final <T> boolean m2421new(@NotNull Collection<? super T> collection, @NotNull Iterable<? extends T> iterable) {
        nd0.m1875new(collection, "$this$addAll");
        nd0.m1875new(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z = false;
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add((T) it.next())) {
                z = true;
            }
        }
        return z;
    }

    @Nullable
    public static final String o(@NotNull String str) {
        InetAddress m2427static;
        nd0.m1875new(str, "$this$toCanonicalHost");
        int i = 0;
        int i2 = -1;
        if (ie0.m1200if(str, ":", false, 2)) {
            if (ie0.m1206static(str, "[", false, 2) && ie0.m1198for(str, "]", false, 2)) {
                m2427static = m2427static(str, 1, str.length() - 1);
            } else {
                m2427static = m2427static(str, 0, str.length());
            }
            if (m2427static != null) {
                byte[] address = m2427static.getAddress();
                if (address.length == 16) {
                    nd0.m1872for(address, "address");
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < address.length) {
                        int i5 = i3;
                        while (i5 < 16 && address[i5] == 0 && address[i5 + 1] == 0) {
                            i5 += 2;
                        }
                        int i6 = i5 - i3;
                        if (i6 > i4 && i6 >= 4) {
                            i2 = i3;
                            i4 = i6;
                        }
                        i3 = i5 + 2;
                    }
                    rk0 rk0Var = new rk0();
                    while (i < address.length) {
                        if (i == i2) {
                            rk0Var.m2299synchronized(58);
                            i += i4;
                            if (i == 16) {
                                rk0Var.m2299synchronized(58);
                            }
                        } else {
                            if (i > 0) {
                                rk0Var.m2299synchronized(58);
                            }
                            rk0Var.mo640final((jh0.m1322do(address[i], 255) << 8) | (255 & address[i + 1]));
                            i += 2;
                        }
                    }
                    return rk0Var.m2298strictfp();
                } else if (address.length == 4) {
                    return m2427static.getHostAddress();
                } else {
                    throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
                }
            }
            return null;
        }
        try {
            String ascii = IDN.toASCII(str);
            nd0.m1872for(ascii, "IDN.toASCII(host)");
            Locale locale = Locale.US;
            nd0.m1872for(locale, "Locale.US");
            String lowerCase = ascii.toLowerCase(locale);
            nd0.m1872for(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            if (lowerCase.length() == 0) {
                return null;
            }
            int length = lowerCase.length();
            for (int i7 = 0; i7 < length; i7++) {
                char charAt = lowerCase.charAt(i7);
                if (nd0.m1877try(charAt, 31) > 0 && nd0.m1877try(charAt, 127) < 0 && ie0.m1209this(" #%/:?@[\\]", charAt, 0, false, 6) == -1) {
                }
                i = 1;
                break;
            }
            if (i != 0) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NotNull
    public static final String p(byte b) {
        char[] cArr = ol0.f3457do;
        return new String(new char[]{cArr[(b >> 4) & 15], cArr[b & com.umeng.analytics.pro.bz.m]});
    }

    /* renamed from: package  reason: not valid java name */
    public static void m2422package(boolean z) {
        if (!z) {
            throw new IllegalArgumentException("Must be true");
        }
    }

    /* renamed from: private  reason: not valid java name */
    public static void m2423private(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: protected  reason: not valid java name */
    public static String m2424protected(String str) {
        return m2437volatile(str).trim();
    }

    /* renamed from: public  reason: not valid java name */
    public static void m2425public(Activity activity) {
        Class<?>[] declaredClasses;
        try {
            Method declaredMethod = Activity.class.getDeclaredMethod("getActivityOptions", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(activity, new Object[0]);
            Class<?> cls = null;
            for (Class<?> cls2 : Activity.class.getDeclaredClasses()) {
                if (cls2.getSimpleName().contains("TranslucentConversionListener")) {
                    cls = cls2;
                }
            }
            Method declaredMethod2 = Activity.class.getDeclaredMethod("convertToTranslucent", cls, ActivityOptions.class);
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(activity, null, invoke);
        } catch (Throwable unused) {
        }
    }

    /* renamed from: return  reason: not valid java name */
    public static String m2426return(byte[] bArr, boolean z) {
        if (z) {
            try {
                return new String(bArr, StringUtils.UTF8);
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        }
        try {
            return new String(bArr, "Cp850");
        } catch (UnsupportedEncodingException unused2) {
            return new String(bArr);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x00dc, code lost:
        if (r7 == 16) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00df, code lost:
        if (r8 != (-1)) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e1, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00e2, code lost:
        r1 = r7 - r8;
        java.lang.System.arraycopy(r3, r8, r3, 16 - r1, r1);
        java.util.Arrays.fill(r3, r8, (16 - r7) + r8, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f5, code lost:
        return java.net.InetAddress.getByAddress(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ab  */
    /* renamed from: static  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.net.InetAddress m2427static(java.lang.String r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.sb0.m2427static(java.lang.String, int, int):java.net.InetAddress");
    }

    @NotNull
    /* renamed from: strictfp  reason: not valid java name */
    public static final <T> List<T> m2428strictfp(@NotNull T... tArr) {
        nd0.m1875new(tArr, "elements");
        nd0.m1875new(tArr, "$this$filterNotNull");
        ArrayList arrayList = new ArrayList();
        nd0.m1875new(tArr, "$this$filterNotNullTo");
        nd0.m1875new(arrayList, "destination");
        for (T t : tArr) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: super  reason: not valid java name */
    public static boolean m2429super(String str) throws af0 {
        if (m2412finally(str)) {
            return new File(str).exists();
        }
        throw new af0("path is null");
    }

    /* renamed from: switch  reason: not valid java name */
    public static int m2430switch(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m2431synchronized(@javax.annotation.Nullable Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static String m2432this(Context context) {
        tp0 m2610do = tp0.m2610do(context);
        if (m2610do != null) {
            if (tp0.f4748if) {
                String str = tp0.f4747goto;
                if (str != null) {
                    return str;
                }
                m2610do.m2612if(0, null);
                if (tp0.f4746for == null) {
                    Context context2 = tp0.f4744do;
                    tp0.f4746for = new up0(tp0.f4750this, 0, null);
                    context2.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, tp0.f4746for);
                }
                return tp0.f4747goto;
            }
            return null;
        }
        throw null;
    }

    /* renamed from: throw  reason: not valid java name */
    public static final void m2433throw(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    /* renamed from: throws  reason: not valid java name */
    public static final boolean m2434throws(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (z) {
            return Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
        }
        return false;
    }

    /* renamed from: transient  reason: not valid java name */
    public static void m2435transient(@javax.annotation.Nullable String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("String must not be empty");
        }
    }

    @SinceKotlin(version = "1.1")
    @HidesMembers
    /* renamed from: try  reason: not valid java name */
    public static final void m2436try(@NotNull Throwable th, @NotNull Throwable th2) {
        nd0.m1875new(th, "$this$addSuppressed");
        nd0.m1875new(th2, "exception");
        if (th != th2) {
            ed0.f1035do.mo447do(th, th2);
        }
    }

    /* renamed from: volatile  reason: not valid java name */
    public static String m2437volatile(String str) {
        return str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    @PublishedApi
    /* renamed from: while  reason: not valid java name */
    public static final int m2438while(int i) {
        if (2 > i || 36 < i) {
            StringBuilder m1020throw = Cgoto.m1020throw("radix ", i, " was not in valid range ");
            m1020throw.append(new xd0(2, 36));
            throw new IllegalArgumentException(m1020throw.toString());
        }
        return i;
    }
}
