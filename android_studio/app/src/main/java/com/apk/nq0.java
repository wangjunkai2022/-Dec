package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.WeakHashMap;
import org.json.JSONException;
import skin.support.annotation.DrawableRes;

/* compiled from: SkinCompatUserThemeManager.java */
/* loaded from: classes7.dex */
public class nq0 {

    /* renamed from: this  reason: not valid java name */
    public static nq0 f3289this = new nq0();

    /* renamed from: goto  reason: not valid java name */
    public boolean f3294goto;

    /* renamed from: new  reason: not valid java name */
    public boolean f3296new;

    /* renamed from: do  reason: not valid java name */
    public final HashMap<String, jq0> f3291do = new HashMap<>();

    /* renamed from: if  reason: not valid java name */
    public final Object f3295if = new Object();

    /* renamed from: for  reason: not valid java name */
    public final WeakHashMap<Integer, WeakReference<ColorStateList>> f3293for = new WeakHashMap<>();

    /* renamed from: try  reason: not valid java name */
    public final HashMap<String, String> f3297try = new HashMap<>();

    /* renamed from: case  reason: not valid java name */
    public final Object f3290case = new Object();

    /* renamed from: else  reason: not valid java name */
    public final WeakHashMap<Integer, WeakReference<Drawable>> f3292else = new WeakHashMap<>();

    public nq0() {
        try {
            m1909try();
        } catch (JSONException unused) {
            this.f3291do.clear();
            this.f3297try.clear();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m1905do() {
        synchronized (this.f3295if) {
            this.f3293for.clear();
        }
        synchronized (this.f3290case) {
            this.f3292else.clear();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public Drawable m1906for(@DrawableRes int i) {
        Drawable drawable;
        synchronized (this.f3290case) {
            WeakReference<Drawable> weakReference = this.f3292else.get(Integer.valueOf(i));
            if (weakReference != null) {
                drawable = weakReference.get();
                if (drawable == null) {
                    this.f3292else.remove(Integer.valueOf(i));
                }
            }
            drawable = null;
        }
        if (drawable == null) {
            String m1908new = m1908new(i, "drawable");
            if (!TextUtils.isEmpty(m1908new)) {
                String str = this.f3297try.get(m1908new);
                if (!TextUtils.isEmpty(str)) {
                    String[] split = str.split(":");
                    boolean z = false;
                    String str2 = split[0];
                    int intValue = split.length == 2 ? Integer.valueOf(split[1]).intValue() : 0;
                    if (!TextUtils.isEmpty(str2) && Cgoto.m1024volatile(str2)) {
                        z = true;
                    }
                    if (z) {
                        if (intValue == 0) {
                            drawable = Drawable.createFromPath(str2);
                        } else {
                            Matrix matrix = new Matrix();
                            matrix.postRotate(intValue);
                            Bitmap decodeFile = BitmapFactory.decodeFile(str2);
                            drawable = new BitmapDrawable((Resources) null, Bitmap.createBitmap(decodeFile, 0, 0, decodeFile.getWidth(), decodeFile.getHeight(), matrix, true));
                        }
                        if (drawable != null) {
                            synchronized (this.f3290case) {
                                this.f3292else.put(Integer.valueOf(i), new WeakReference<>(drawable));
                            }
                        }
                    }
                }
            }
        }
        return drawable;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(32:30|(3:141|142|(31:144|145|33|(3:134|135|(2:137|138))|35|(3:127|128|(2:130|131))|37|(3:120|121|(2:123|124))|39|(3:113|114|(2:116|117))|41|(3:106|107|(2:109|110))|43|(3:99|100|(2:102|103))|45|(3:92|93|(2:95|96))|47|(3:85|86|(2:88|89))|49|(3:78|79|(2:81|82))|51|(3:53|54|(2:56|57))|60|61|(1:63)|64|(1:66)|67|68|69|70))|32|33|(0)|35|(0)|37|(0)|39|(0)|41|(0)|43|(0)|45|(0)|47|(0)|49|(0)|51|(0)|60|61|(0)|64|(0)|67|68|69|70) */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0252, code lost:
        r1 = com.apk.nq0.f3289this;
        r0 = r0.f2415if;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0257, code lost:
        if (r1 != null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x025d, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x025f, code lost:
        r1.f3291do.remove(r0);
        r1.f3296new = r1.f3291do.isEmpty();
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0285, code lost:
        throw null;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0234 A[Catch: Exception -> 0x0252, LOOP:0: B:101:0x0232->B:102:0x0234, LOOP_END, TryCatch #6 {Exception -> 0x0252, blocks: (B:97:0x0210, B:99:0x021c, B:100:0x022e, B:102:0x0234, B:103:0x024b), top: B:138:0x0210 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0152 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x017a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x00da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0102 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x021c A[Catch: Exception -> 0x0252, TryCatch #6 {Exception -> 0x0252, blocks: (B:97:0x0210, B:99:0x021c, B:100:0x022e, B:102:0x0234, B:103:0x024b), top: B:138:0x0210 }] */
    /* renamed from: if  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.content.res.ColorStateList m1907if(@skin.support.annotation.ColorRes int r10) {
        /*
            Method dump skipped, instructions count: 650
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.nq0.m1907if(int):android.content.res.ColorStateList");
    }

    /* renamed from: new  reason: not valid java name */
    public final String m1908new(int i, String str) {
        Context context = yp0.f6038class.getContext();
        if (str.equalsIgnoreCase(context.getResources().getResourceTypeName(i))) {
            return context.getResources().getResourceEntryName(i);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01f8 A[SYNTHETIC] */
    /* renamed from: try  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1909try() throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 529
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.nq0.m1909try():void");
    }
}
