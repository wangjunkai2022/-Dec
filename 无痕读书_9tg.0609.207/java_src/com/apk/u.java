package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.app.AppContext;
import com.manhua.ui.widget.ComicImageLayout;
import com.manhua.ui.widget.barrage.BarrageView;
import com.tencent.bugly.Bugly;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import kimi.wuhends.ebooks.R;
/* compiled from: ImageUtils.java */
/* loaded from: classes8.dex */
public class u {

    /* renamed from: else  reason: not valid java name */
    public static int f4792else;

    /* renamed from: do  reason: not valid java name */
    public static final sm f4791do = new Ctry();

    /* renamed from: if  reason: not valid java name */
    public static final sm f4795if = new Ccase();

    /* renamed from: for  reason: not valid java name */
    public static final int f4793for = eg.m587catch(6.0f);

    /* renamed from: new  reason: not valid java name */
    public static final dr f4796new = new dr().mo2213else(uk.f4911if).mo2220public(Integer.MIN_VALUE);

    /* renamed from: try  reason: not valid java name */
    public static final sm f4797try = new Ccatch();

    /* renamed from: case  reason: not valid java name */
    public static final sm f4790case = new Cclass();

    /* renamed from: goto  reason: not valid java name */
    public static final sm f4794goto = new Cif();

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cbreak implements cr<Bitmap> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ j1 f4798do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ BarrageView f4799if;

        public Cbreak(j1 j1Var, BarrageView barrageView) {
            this.f4798do = j1Var;
            this.f4799if = barrageView;
        }

        @Override // com.apk.cr
        /* renamed from: case */
        public boolean mo269case(Bitmap bitmap, Object obj, pr<Bitmap> prVar, dj djVar, boolean z) {
            Bitmap bitmap2 = bitmap;
            if (w0.m2890static()) {
                int m611static = eg.m611static();
                float height = bitmap2.getHeight() / bitmap2.getWidth();
                if (u.f4792else == 0) {
                    u.f4792else = eg.m614switch();
                }
                int i = u.f4792else;
                int i2 = (int) (height * i);
                if (i2 <= m611static) {
                    m611static = i2;
                }
                ViewGroup.LayoutParams layoutParams = this.f4799if.getLayoutParams();
                layoutParams.width = i;
                layoutParams.height = m611static;
                this.f4799if.setLayoutParams(layoutParams);
                this.f4799if.setHeight(m611static);
            }
            j1 j1Var = this.f4798do;
            if (j1Var != null) {
                j1Var.mo445do();
                return false;
            }
            return false;
        }

        @Override // com.apk.cr
        /* renamed from: new */
        public boolean mo276new(@Nullable bl blVar, Object obj, pr<Bitmap> prVar, boolean z) {
            j1 j1Var = this.f4798do;
            if (j1Var != null) {
                j1Var.mo446if();
                return false;
            }
            return false;
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ccase implements sm {
        @Override // com.apk.sm
        public Map<String, String> getHeaders() {
            HashMap hashMap = new HashMap();
            hashMap.putAll(sm.f4466do.getHeaders());
            hashMap.put("LOAD_IMAGE_ENCRYPT_SWITCH_KEY", "no");
            hashMap.put("LOAD_IMAGE_TYPE_KEY", "LOAD_IMAGE_TYPE_VALUE_NOVEL");
            hashMap.put("LOAD_IMAGE_IS_REPLACE_KEY", Bugly.SDK_IS_DEV);
            return hashMap;
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$catch  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ccatch implements sm {
        @Override // com.apk.sm
        public Map<String, String> getHeaders() {
            HashMap hashMap = new HashMap();
            hashMap.putAll(sm.f4466do.getHeaders());
            hashMap.put("LOAD_IMAGE_TYPE_KEY", "LOAD_IMAGE_TYPE_VALUE_CARTOON");
            hashMap.put("LOAD_IMAGE_IS_REPLACE_KEY", "true");
            return hashMap;
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$class  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cclass implements sm {
        @Override // com.apk.sm
        public Map<String, String> getHeaders() {
            HashMap hashMap = new HashMap();
            hashMap.putAll(sm.f4466do.getHeaders());
            hashMap.put("LOAD_IMAGE_TYPE_KEY", "LOAD_IMAGE_TYPE_VALUE_CARTOON");
            hashMap.put("LOAD_IMAGE_ENCRYPT_SWITCH_KEY", "no");
            hashMap.put("LOAD_IMAGE_IS_REPLACE_KEY", Bugly.SDK_IS_DEV);
            return hashMap;
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements cr<Drawable> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ j1 f4800do;

        public Cdo(j1 j1Var) {
            this.f4800do = j1Var;
        }

        @Override // com.apk.cr
        /* renamed from: case */
        public boolean mo269case(Drawable drawable, Object obj, pr<Drawable> prVar, dj djVar, boolean z) {
            j1 j1Var = this.f4800do;
            if (j1Var != null) {
                j1Var.mo445do();
                return false;
            }
            return false;
        }

        @Override // com.apk.cr
        /* renamed from: new */
        public boolean mo276new(@Nullable bl blVar, Object obj, pr<Drawable> prVar, boolean z) {
            j1 j1Var = this.f4800do;
            if (j1Var != null) {
                j1Var.mo446if();
                return false;
            }
            return false;
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Celse extends c1<Object> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f4801do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ j1 f4802for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ComicImageLayout f4803if;

        public Celse(String str, ComicImageLayout comicImageLayout, j1 j1Var) {
            this.f4801do = str;
            this.f4803if = comicImageLayout;
            this.f4802for = j1Var;
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            try {
                File m1777private = mu.m1777private(this.f4801do);
                if (m1777private != null && m1777private.exists()) {
                    m1777private.delete();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            u.m2639break(this.f4801do, this.f4803if, this.f4802for);
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends nr<Drawable> {

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ View f4804new;

        public Cfor(View view) {
            this.f4804new = view;
        }

        @Override // com.apk.pr
        /* renamed from: if */
        public void mo275if(@NonNull Object obj, @Nullable sr srVar) {
            Drawable drawable = (Drawable) obj;
            View view = this.f4804new;
            if (view != null) {
                view.setBackground(drawable);
            }
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cgoto implements cr<Bitmap> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ j1 f4805do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ComicImageLayout f4806if;

        public Cgoto(j1 j1Var, ComicImageLayout comicImageLayout) {
            this.f4805do = j1Var;
            this.f4806if = comicImageLayout;
        }

        @Override // com.apk.cr
        /* renamed from: case */
        public boolean mo269case(Bitmap bitmap, Object obj, pr<Bitmap> prVar, dj djVar, boolean z) {
            Bitmap bitmap2 = bitmap;
            float height = bitmap2.getHeight() / bitmap2.getWidth();
            if (u.f4792else == 0) {
                u.f4792else = eg.m614switch();
            }
            int i = u.f4792else;
            ComicImageLayout comicImageLayout = this.f4806if;
            int i2 = (int) (height * i);
            ViewGroup.LayoutParams layoutParams = comicImageLayout.f10137for;
            if (layoutParams == null || layoutParams.width != i || layoutParams.height != i2) {
                if (comicImageLayout.f10137for == null) {
                    comicImageLayout.f10137for = comicImageLayout.getLayoutParams();
                }
                ViewGroup.LayoutParams layoutParams2 = comicImageLayout.f10137for;
                layoutParams2.width = i;
                layoutParams2.height = i2;
                comicImageLayout.setLayoutParams(layoutParams2);
                if (w0.m2890static()) {
                    comicImageLayout.f10138if.setHeight(i2);
                }
            }
            j1 j1Var = this.f4805do;
            if (j1Var != null) {
                j1Var.mo445do();
                return false;
            }
            return false;
        }

        @Override // com.apk.cr
        /* renamed from: new */
        public boolean mo276new(@Nullable bl blVar, Object obj, pr<Bitmap> prVar, boolean z) {
            j1 j1Var = this.f4805do;
            if (j1Var != null) {
                j1Var.mo446if();
                return false;
            }
            return false;
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements sm {
        @Override // com.apk.sm
        public Map<String, String> getHeaders() {
            HashMap hashMap = new HashMap();
            hashMap.putAll(sm.f4466do.getHeaders());
            hashMap.put("LOAD_IMAGE_ENCRYPT_SWITCH_KEY", "no");
            return hashMap;
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew implements cr<Bitmap> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ j1 f4807do;

        public Cnew(j1 j1Var) {
            this.f4807do = j1Var;
        }

        @Override // com.apk.cr
        /* renamed from: case */
        public boolean mo269case(Bitmap bitmap, Object obj, pr<Bitmap> prVar, dj djVar, boolean z) {
            j1 j1Var = this.f4807do;
            if (j1Var != null) {
                j1Var.mo445do();
                return false;
            }
            return false;
        }

        @Override // com.apk.cr
        /* renamed from: new */
        public boolean mo276new(@Nullable bl blVar, Object obj, pr<Bitmap> prVar, boolean z) {
            j1 j1Var = this.f4807do;
            if (j1Var != null) {
                j1Var.mo446if();
                return false;
            }
            return false;
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cthis extends c1<Object> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f4808do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ BarrageView f4809for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ImageView f4810if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ j1 f4811new;

        public Cthis(String str, ImageView imageView, BarrageView barrageView, j1 j1Var) {
            this.f4808do = str;
            this.f4810if = imageView;
            this.f4809for = barrageView;
            this.f4811new = j1Var;
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            try {
                File m1777private = mu.m1777private(this.f4808do);
                if (m1777private != null && m1777private.exists()) {
                    m1777private.delete();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            u.m2642class(this.f4808do, this.f4810if, this.f4809for, this.f4811new);
        }
    }

    /* compiled from: ImageUtils.java */
    /* renamed from: com.apk.u$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry implements sm {
        @Override // com.apk.sm
        public Map<String, String> getHeaders() {
            HashMap hashMap = new HashMap();
            hashMap.putAll(sm.f4466do.getHeaders());
            hashMap.put("LOAD_IMAGE_ENCRYPT_SWITCH_KEY", "no");
            hashMap.put("LOAD_IMAGE_TYPE_KEY", "LOAD_IMAGE_TYPE_VALUE_NOVEL");
            hashMap.put("LOAD_IMAGE_IS_REPLACE_KEY", "true");
            return hashMap;
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static void m2639break(String str, ComicImageLayout comicImageLayout, j1 j1Var) {
        ii.m1218case(AppContext.f6392case).mo2129case().b(str).mo2222static(R.drawable.shape_default_head_bg).mo2210catch(R.drawable.shape_default_head_bg).mo2037do(f4796new).mo2214extends(new vr(str)).mo2039instanceof(new Cgoto(j1Var, comicImageLayout)).m2038implements(comicImageLayout.getImageView());
    }

    /* renamed from: case  reason: not valid java name */
    public static String m2640case() {
        if (TextUtils.isEmpty(p0.f3542break)) {
            String n = ze.n("URL_HOST_IMAGE_KEY");
            p0.f3542break = n;
            if (TextUtils.isEmpty(n)) {
                p0.f3542break = "https://imgapixs.apptuxing.com";
            }
        }
        return p0.f3542break;
    }

    /* renamed from: catch  reason: not valid java name */
    public static void m2641catch(boolean z, String str, ImageView imageView, BarrageView barrageView, j1 j1Var) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String m2652new = m2652new(str);
        if (z) {
            new b1().m141do(new Cthis(m2652new, imageView, barrageView, j1Var));
        } else {
            m2642class(m2652new, imageView, barrageView, j1Var);
        }
    }

    /* renamed from: class  reason: not valid java name */
    public static void m2642class(String str, ImageView imageView, BarrageView barrageView, j1 j1Var) {
        ii.m1218case(AppContext.f6392case).mo2129case().b(str).mo2037do(f4796new).mo2214extends(new vr(str)).mo2039instanceof(new Cbreak(j1Var, barrageView)).m2038implements(imageView);
    }

    /* renamed from: const  reason: not valid java name */
    public static void m2643const(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String m2652new = m2652new(str);
        if (TextUtils.isEmpty(m2652new)) {
            return;
        }
        pi mo2214extends = ii.m1218case(context.getApplicationContext()).mo2129case().b(m2652new).mo2037do(f4796new).mo2214extends(new vr(m2652new));
        mo2214extends.m2042protected(new mr(mo2214extends.f3664package, Integer.MIN_VALUE, Integer.MIN_VALUE));
    }

    /* renamed from: do  reason: not valid java name */
    public static File m2644do(String str) {
        try {
            return (File) ((br) ii.m1218case(AppContext.f6392case).mo2131class().a(new rm(str, f4794goto)).mo2216finally(true).mo2037do(f4796new).mo2214extends(new vr(str)).d()).get();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: else  reason: not valid java name */
    public static boolean m2645else(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return ((File) ((br) ii.m1218case(AppContext.f6392case).mo2131class().b(str).mo2216finally(true).mo2037do(new dr().mo2217goto()).mo2214extends(new vr(str)).d()).get()).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: final  reason: not valid java name */
    public static void m2646final(String str, ImageView imageView) {
        m2656super(str, imageView, 0, null);
    }

    /* renamed from: for  reason: not valid java name */
    public static String m2647for(String str, boolean z) {
        return (!str.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP) || z) ? m2652new(str) : str;
    }

    /* renamed from: goto  reason: not valid java name */
    public static void m2648goto(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String m2652new = m2652new(str);
            File file = (File) ((br) ii.m1218case(AppContext.f6392case).mo2131class().b(m2652new).mo2216finally(true).mo2037do(f4796new).mo2214extends(new vr(m2652new)).d()).get();
        } catch (Exception unused) {
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static Bitmap m2649if(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return (Bitmap) ((br) ii.m1218case(AppContext.f6392case).mo2129case().mo2217goto().a(new rm(str, f4795if)).mo2214extends(new vr(str)).d()).get();
        } catch (ExecutionException e) {
            e.printStackTrace();
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: import  reason: not valid java name */
    public static void m2650import(String str, ImageView imageView) {
        m2651native(str, imageView, R.drawable.shape_default_head_bg, true);
    }

    /* renamed from: native  reason: not valid java name */
    public static void m2651native(String str, ImageView imageView, int i, boolean z) {
        if (TextUtils.isEmpty(str)) {
            imageView.setImageResource(i);
        } else {
            ii.m1218case(AppContext.f6392case).mo2129case().a(new rm(str, z ? f4797try : f4790case)).mo2222static(i).mo2210catch(i).mo2217goto().mo2037do(dr.m506continue(new qo(f4793for))).mo2214extends(new vr(str)).m2038implements(imageView);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2652new(java.lang.String r7) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 == 0) goto L9
            java.lang.String r7 = "123"
            return r7
        L9:
            com.manhua.data.bean.ComicImageConifg r0 = com.apk.p0.f3555this
            java.lang.String r1 = "/"
            r2 = 0
            if (r0 == 0) goto L5e
            java.util.Map r3 = r0.getHostKeys()
            if (r3 == 0) goto L54
            int r4 = r3.size()
            if (r4 <= 0) goto L54
            java.lang.String r4 = "BookImage/"
            boolean r5 = r7.contains(r4)     // Catch: java.lang.Exception -> L42
            if (r5 == 0) goto L40
            int r4 = r7.indexOf(r4)     // Catch: java.lang.Exception -> L42
            int r4 = r4 + 10
            java.lang.String r4 = r7.substring(r4)     // Catch: java.lang.Exception -> L42
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L3e
            if (r5 != 0) goto L48
            r5 = 0
            int r6 = r4.indexOf(r1)     // Catch: java.lang.Exception -> L3e
            java.lang.String r4 = r4.substring(r5, r6)     // Catch: java.lang.Exception -> L3e
            goto L48
        L3e:
            r5 = move-exception
            goto L45
        L40:
            r4 = r2
            goto L48
        L42:
            r4 = move-exception
            r5 = r4
            r4 = r2
        L45:
            r5.printStackTrace()
        L48:
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 != 0) goto L54
            java.lang.Object r2 = r3.get(r4)
            java.lang.String r2 = (java.lang.String) r2
        L54:
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L5e
            java.lang.String r2 = r0.getDomain()
        L5e:
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 != 0) goto L7c
            java.lang.String r0 = "http"
            boolean r0 = r7.startsWith(r0)
            if (r0 == 0) goto L78
            java.lang.String r0 = "((http|ftp|https)://)(([a-zA-Z0-9._-]+)|([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}))(([a-zA-Z]{2,6})|(:[0-9]{1,4})?)"
            java.lang.String r7 = r7.replaceAll(r0, r2)     // Catch: java.lang.Exception -> L73
            goto L77
        L73:
            r0 = move-exception
            r0.printStackTrace()
        L77:
            return r7
        L78:
            java.lang.String r7 = com.apk.Cgoto.m996else(r2, r1, r7)
        L7c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.u.m2652new(java.lang.String):java.lang.String");
    }

    /* renamed from: public  reason: not valid java name */
    public static void m2653public(String str, ImageView imageView) {
        m2654return(str, imageView, R.drawable.shape_default_head_bg, null, true);
    }

    /* renamed from: return  reason: not valid java name */
    public static void m2654return(String str, ImageView imageView, @DrawableRes int i, j1 j1Var, boolean z) {
        if (TextUtils.isEmpty(str)) {
            imageView.setImageResource(i);
        } else {
            ii.m1218case(AppContext.f6392case).mo2129case().mo2222static(i).mo2210catch(i).mo2037do(dr.m506continue(new qo(f4793for))).a(new rm(str, z ? f4791do : f4795if)).mo2214extends(new vr(str)).mo2039instanceof(new Cnew(j1Var)).m2038implements(imageView);
        }
    }

    /* renamed from: static  reason: not valid java name */
    public static void m2655static(File file, View view) {
        if (file == null || !file.exists()) {
            return;
        }
        ii.m1218case(AppContext.f6392case).mo2133final(file).mo2037do(new dr().mo2210catch(R.drawable.man).mo2217goto()).m2042protected(new Cfor(view));
    }

    /* renamed from: super  reason: not valid java name */
    public static void m2656super(String str, ImageView imageView, int i, j1 j1Var) {
        if (TextUtils.isEmpty(str)) {
            if (i != 0) {
                imageView.setImageResource(i);
                return;
            }
            return;
        }
        pi mo2222static = ii.m1218case(AppContext.f6392case).mo2137super(new rm(str, f4794goto)).mo2222static(i);
        if (dr.f957package == null) {
            dr.f957package = new dr().mo2217goto().mo2218if();
        }
        mo2222static.mo2037do(dr.f957package).mo2214extends(new vr(str)).mo2039instanceof(new Cdo(j1Var)).m2038implements(imageView);
    }

    /* renamed from: switch  reason: not valid java name */
    public static void m2657switch(String str, View view) {
        m2655static(new File(str), view);
    }

    /* renamed from: this  reason: not valid java name */
    public static void m2658this(boolean z, String str, ComicImageLayout comicImageLayout, j1 j1Var) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String m2652new = m2652new(str);
        if (z) {
            new b1().m141do(new Celse(m2652new, comicImageLayout, j1Var));
        } else {
            m2639break(m2652new, comicImageLayout, j1Var);
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public static void m2659throw(String str, ImageView imageView, boolean z) {
        m2654return(str, imageView, R.drawable.shape_default_head_bg, null, z);
    }

    /* renamed from: throws  reason: not valid java name */
    public static void m2660throws(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ii.m1218case(AppContext.f6392case).mo2129case().mo2044synchronized(new File(str)).m2038implements(imageView);
    }

    /* renamed from: try  reason: not valid java name */
    public static String m2661try(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP)) {
                if (z) {
                    str = str.replaceAll("((http|ftp|https)://)(([a-zA-Z0-9._-]+)|([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}))(([a-zA-Z]{2,6})|(:[0-9]{1,4})?)", m2640case());
                }
            } else if (!str.contains("/")) {
                StringBuilder sb = new StringBuilder();
                sb.append(m2640case() + "/BookFiles/BookImages/");
                sb.append(str);
                str = sb.toString();
            } else {
                str = m2640case() + str;
            }
            try {
                String substring = str.substring(0, str.lastIndexOf("/") + 1);
                if (str.contains("?")) {
                    str = substring + str.substring(str.lastIndexOf("/") + 1, str.lastIndexOf("?")) + str.substring(str.lastIndexOf("?"), str.length());
                } else {
                    str = substring + Uri.encode(str.substring(str.lastIndexOf("/") + 1, str.length()));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    /* renamed from: while  reason: not valid java name */
    public static void m2662while(String str, ImageView imageView, boolean z) {
        if (TextUtils.isEmpty(str)) {
            imageView.setImageResource(R.drawable.shape_shadow_top_bg);
        } else {
            ii.m1218case(AppContext.f6392case).mo2129case().a(new rm(str, z ? f4791do : f4795if)).mo2222static(R.drawable.shape_shadow_top_bg).mo2037do(dr.m506continue(new gc0(10, 10))).mo2214extends(new vr(str)).m2038implements(imageView);
        }
    }
}
