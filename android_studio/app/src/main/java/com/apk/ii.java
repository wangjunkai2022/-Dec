package com.apk;

import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import com.apk.bk;
import com.apk.dk;
import com.apk.dn;
import com.apk.fn;
import com.apk.gn;
import com.apk.hn;
import com.apk.im;
import com.apk.in;
import com.apk.jn;
import com.apk.km;
import com.apk.kn;
import com.apk.lm;
import com.apk.ln;
import com.apk.mm;
import com.apk.mn;
import com.apk.nn;
import com.apk.om;
import com.apk.on;
import com.apk.pm;
import com.apk.qm;
import com.apk.uo;
import com.apk.vm;
import com.apk.wo;
import com.bumptech.glide.GeneratedAppGlideModule;
import com.bumptech.glide.GeneratedAppGlideModuleImpl;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Glide.java */
/* loaded from: classes8.dex */
public class ii implements ComponentCallbacks2 {

    /* renamed from: break  reason: not valid java name */
    public static volatile ii f2112break;

    /* renamed from: catch  reason: not valid java name */
    public static volatile boolean f2113catch;

    /* renamed from: case  reason: not valid java name */
    public final nl f2114case;

    /* renamed from: do  reason: not valid java name */
    public final vk f2115do;

    /* renamed from: else  reason: not valid java name */
    public final hq f2116else;

    /* renamed from: for  reason: not valid java name */
    public final hm f2117for;

    /* renamed from: goto  reason: not valid java name */
    public final zp f2118goto;

    /* renamed from: if  reason: not valid java name */
    public final pl f2119if;

    /* renamed from: new  reason: not valid java name */
    public final li f2120new;

    /* renamed from: this  reason: not valid java name */
    public final List<qi> f2121this = new ArrayList();

    /* renamed from: try  reason: not valid java name */
    public final oi f2122try;

    /* compiled from: Glide.java */
    /* renamed from: com.apk.ii$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        @NonNull
        /* renamed from: do  reason: not valid java name */
        dr mo1224do();
    }

    public ii(@NonNull Context context, @NonNull vk vkVar, @NonNull hm hmVar, @NonNull pl plVar, @NonNull nl nlVar, @NonNull hq hqVar, @NonNull zp zpVar, int i, @NonNull Cdo cdo, @NonNull Map<Class<?>, ri<?, ?>> map, @NonNull List<cr<Object>> list, boolean z, boolean z2) {
        oj xnVar;
        oj roVar;
        this.f2115do = vkVar;
        this.f2119if = plVar;
        this.f2114case = nlVar;
        this.f2117for = hmVar;
        this.f2116else = hqVar;
        this.f2118goto = zpVar;
        Resources resources = context.getResources();
        oi oiVar = new oi();
        this.f2122try = oiVar;
        bo boVar = new bo();
        sq sqVar = oiVar.f3433else;
        synchronized (sqVar) {
            sqVar.f4539do.add(boVar);
        }
        if (Build.VERSION.SDK_INT >= 27) {
            oi oiVar2 = this.f2122try;
            ho hoVar = new ho();
            sq sqVar2 = oiVar2.f3433else;
            synchronized (sqVar2) {
                sqVar2.f4539do.add(hoVar);
            }
        }
        List<ImageHeaderParser> m1959try = this.f2122try.m1959try();
        fp fpVar = new fp(context, m1959try, plVar, nlVar);
        uo uoVar = new uo(plVar, new uo.Celse());
        eo eoVar = new eo(this.f2122try.m1959try(), resources.getDisplayMetrics(), plVar, nlVar);
        if (z2 && Build.VERSION.SDK_INT >= 28) {
            roVar = new lo();
            xnVar = new yn();
        } else {
            xnVar = new xn(eoVar);
            roVar = new ro(eoVar, nlVar);
        }
        bp bpVar = new bp(context);
        dn.Cfor cfor = new dn.Cfor(resources);
        dn.Cnew cnew = new dn.Cnew(resources);
        dn.Cif cif = new dn.Cif(resources);
        dn.Cdo cdo2 = new dn.Cdo(resources);
        tn tnVar = new tn(nlVar);
        pp ppVar = new pp();
        sp spVar = new sp();
        ContentResolver contentResolver = context.getContentResolver();
        oi oiVar3 = this.f2122try;
        oiVar3.m1952do(ByteBuffer.class, new nm());
        oiVar3.m1952do(InputStream.class, new en(nlVar));
        oiVar3.m1957new("Bitmap", ByteBuffer.class, Bitmap.class, xnVar);
        oiVar3.m1957new("Bitmap", InputStream.class, Bitmap.class, roVar);
        this.f2122try.m1957new("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new no(eoVar));
        oi oiVar4 = this.f2122try;
        oiVar4.m1957new("Bitmap", ParcelFileDescriptor.class, Bitmap.class, uoVar);
        oiVar4.m1957new("Bitmap", AssetFileDescriptor.class, Bitmap.class, new uo(plVar, new uo.Cfor(null)));
        oiVar4.m1954for(Bitmap.class, Bitmap.class, gn.Cdo.f1611do);
        oiVar4.m1957new("Bitmap", Bitmap.class, Bitmap.class, new to());
        oiVar4.m1956if(Bitmap.class, tnVar);
        oiVar4.m1957new("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new rn(resources, xnVar));
        oiVar4.m1957new("BitmapDrawable", InputStream.class, BitmapDrawable.class, new rn(resources, roVar));
        oiVar4.m1957new("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new rn(resources, uoVar));
        oiVar4.m1956if(BitmapDrawable.class, new sn(plVar, tnVar));
        oiVar4.m1957new("Gif", InputStream.class, hp.class, new op(m1959try, fpVar, nlVar));
        oiVar4.m1957new("Gif", ByteBuffer.class, hp.class, fpVar);
        oiVar4.m1956if(hp.class, new ip());
        oiVar4.m1954for(GifDecoder.class, GifDecoder.class, gn.Cdo.f1611do);
        oiVar4.m1957new("Bitmap", GifDecoder.class, Bitmap.class, new mp(plVar));
        oiVar4.m1957new("legacy_append", Uri.class, Drawable.class, bpVar);
        oiVar4.m1957new("legacy_append", Uri.class, Bitmap.class, new po(bpVar, plVar));
        oiVar4.m1953else(new wo.Cdo());
        oiVar4.m1954for(File.class, ByteBuffer.class, new om.Cif());
        oiVar4.m1954for(File.class, InputStream.class, new qm.Ctry());
        oiVar4.m1957new("legacy_append", File.class, File.class, new dp());
        oiVar4.m1954for(File.class, ParcelFileDescriptor.class, new qm.Cif());
        oiVar4.m1954for(File.class, File.class, gn.Cdo.f1611do);
        oiVar4.m1953else(new bk.Cdo(nlVar));
        this.f2122try.m1953else(new dk.Cdo());
        oi oiVar5 = this.f2122try;
        oiVar5.m1954for(Integer.TYPE, InputStream.class, cfor);
        oiVar5.m1954for(Integer.TYPE, ParcelFileDescriptor.class, cif);
        oiVar5.m1954for(Integer.class, InputStream.class, cfor);
        oiVar5.m1954for(Integer.class, ParcelFileDescriptor.class, cif);
        oiVar5.m1954for(Integer.class, Uri.class, cnew);
        oiVar5.m1954for(Integer.TYPE, AssetFileDescriptor.class, cdo2);
        oiVar5.m1954for(Integer.class, AssetFileDescriptor.class, cdo2);
        oiVar5.m1954for(Integer.TYPE, Uri.class, cnew);
        oiVar5.m1954for(String.class, InputStream.class, new pm.Cfor());
        oiVar5.m1954for(Uri.class, InputStream.class, new pm.Cfor());
        oiVar5.m1954for(String.class, InputStream.class, new fn.Cfor());
        oiVar5.m1954for(String.class, ParcelFileDescriptor.class, new fn.Cif());
        oiVar5.m1954for(String.class, AssetFileDescriptor.class, new fn.Cdo());
        oiVar5.m1954for(Uri.class, InputStream.class, new kn.Cdo());
        oiVar5.m1954for(Uri.class, InputStream.class, new lm.Cfor(context.getAssets()));
        oiVar5.m1954for(Uri.class, ParcelFileDescriptor.class, new lm.Cif(context.getAssets()));
        oiVar5.m1954for(Uri.class, InputStream.class, new ln.Cdo(context));
        oiVar5.m1954for(Uri.class, InputStream.class, new mn.Cdo(context));
        if (Build.VERSION.SDK_INT >= 29) {
            this.f2122try.m1954for(Uri.class, InputStream.class, new nn.Cfor(context));
            this.f2122try.m1954for(Uri.class, ParcelFileDescriptor.class, new nn.Cif(context));
        }
        oi oiVar6 = this.f2122try;
        oiVar6.m1954for(Uri.class, InputStream.class, new hn.Cnew(contentResolver));
        oiVar6.m1954for(Uri.class, ParcelFileDescriptor.class, new hn.Cif(contentResolver));
        oiVar6.m1954for(Uri.class, AssetFileDescriptor.class, new hn.Cdo(contentResolver));
        oiVar6.m1954for(Uri.class, InputStream.class, new in.Cdo());
        oiVar6.m1954for(URL.class, InputStream.class, new on.Cdo());
        oiVar6.m1954for(Uri.class, File.class, new vm.Cdo(context));
        oiVar6.m1954for(rm.class, InputStream.class, new jn.Cdo());
        oiVar6.m1954for(byte[].class, ByteBuffer.class, new mm.Cdo());
        oiVar6.m1954for(byte[].class, InputStream.class, new mm.Cnew());
        oiVar6.m1954for(Uri.class, Uri.class, gn.Cdo.f1611do);
        oiVar6.m1954for(Drawable.class, Drawable.class, gn.Cdo.f1611do);
        oiVar6.m1957new("legacy_append", Drawable.class, Drawable.class, new cp());
        oiVar6.m1955goto(Bitmap.class, BitmapDrawable.class, new qp(resources));
        oiVar6.m1955goto(Bitmap.class, byte[].class, ppVar);
        oiVar6.m1955goto(Drawable.class, byte[].class, new rp(plVar, ppVar, spVar));
        oiVar6.m1955goto(hp.class, byte[].class, spVar);
        if (Build.VERSION.SDK_INT >= 23) {
            uo uoVar2 = new uo(plVar, new uo.Cnew());
            this.f2122try.m1957new("legacy_append", ByteBuffer.class, Bitmap.class, uoVar2);
            this.f2122try.m1957new("legacy_append", ByteBuffer.class, BitmapDrawable.class, new rn(resources, uoVar2));
        }
        this.f2120new = new li(context, nlVar, this.f2122try, new lr(), cdo, map, list, vkVar, z, i);
    }

    @NonNull
    /* renamed from: case  reason: not valid java name */
    public static qi m1218case(@NonNull Context context) {
        eg.m593else(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return m1220new(context).f2116else.m1159for(context);
    }

    @GuardedBy("Glide.class")
    /* renamed from: do  reason: not valid java name */
    public static void m1219do(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) {
        List<nq> list;
        if (!f2113catch) {
            f2113catch = true;
            ji jiVar = new ji();
            Context applicationContext = context.getApplicationContext();
            List emptyList = Collections.emptyList();
            if (generatedAppGlideModule != null) {
                if (((GeneratedAppGlideModuleImpl) generatedAppGlideModule).f8412do == null) {
                    throw null;
                }
                list = emptyList;
            } else {
                ArrayList arrayList = new ArrayList();
                try {
                    ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
                    if (applicationInfo.metaData != null) {
                        if (Log.isLoggable("ManifestParser", 2)) {
                            String str = "Got app info metadata: " + applicationInfo.metaData;
                        }
                        for (String str2 : applicationInfo.metaData.keySet()) {
                            if ("GlideModule".equals(applicationInfo.metaData.get(str2))) {
                                arrayList.add(pq.m2071do(str2));
                            }
                        }
                    }
                    list = arrayList;
                } catch (PackageManager.NameNotFoundException e) {
                    throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
                }
            }
            if (generatedAppGlideModule != null && !Collections.emptySet().isEmpty()) {
                Set emptySet = Collections.emptySet();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    nq nqVar = (nq) it.next();
                    if (emptySet.contains(nqVar.getClass())) {
                        if (Log.isLoggable("Glide", 3)) {
                            String str3 = "AppGlideModule excludes manifest GlideModule: " + nqVar;
                        }
                        it.remove();
                    }
                }
            }
            if (Log.isLoggable("Glide", 3)) {
                for (nq nqVar2 : list) {
                    StringBuilder m1016super = Cgoto.m1016super("Discovered GlideModule from manifest: ");
                    m1016super.append(nqVar2.getClass());
                    m1016super.toString();
                }
            }
            jiVar.f2342const = generatedAppGlideModule != null ? new gi() : null;
            for (nq nqVar3 : list) {
                nqVar3.mo1745do(applicationContext, jiVar);
            }
            if (generatedAppGlideModule != null) {
                ((GeneratedAppGlideModuleImpl) generatedAppGlideModule).f8412do.mo1745do(applicationContext, jiVar);
            }
            if (jiVar.f2339case == null) {
                km.Cif cif = km.Cif.f2597if;
                int m1514do = km.m1514do();
                if (!TextUtils.isEmpty("source")) {
                    jiVar.f2339case = new km(new ThreadPoolExecutor(m1514do, m1514do, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new km.Cdo("source", cif, false)));
                } else {
                    throw new IllegalArgumentException(Cgoto.m989case("Name must be non-null and non-empty, but given: ", "source"));
                }
            }
            if (jiVar.f2344else == null) {
                jiVar.f2344else = km.m1515if();
            }
            if (jiVar.f2345final == null) {
                int i = km.m1514do() >= 4 ? 2 : 1;
                km.Cif cif2 = km.Cif.f2597if;
                if (!TextUtils.isEmpty("animation")) {
                    jiVar.f2345final = new km(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new km.Cdo("animation", cif2, true)));
                } else {
                    throw new IllegalArgumentException(Cgoto.m989case("Name must be non-null and non-empty, but given: ", "animation"));
                }
            }
            if (jiVar.f2351this == null) {
                jiVar.f2351this = new im(new im.Cdo(applicationContext));
            }
            if (jiVar.f2338break == null) {
                jiVar.f2338break = new bq();
            }
            if (jiVar.f2346for == null) {
                int i2 = jiVar.f2351this.f2151do;
                if (i2 > 0) {
                    jiVar.f2346for = new vl(i2);
                } else {
                    jiVar.f2346for = new ql();
                }
            }
            if (jiVar.f2349new == null) {
                jiVar.f2349new = new ul(jiVar.f2351this.f2154new);
            }
            if (jiVar.f2352try == null) {
                jiVar.f2352try = new gm(jiVar.f2351this.f2153if);
            }
            if (jiVar.f2347goto == null) {
                jiVar.f2347goto = new fm(applicationContext);
            }
            if (jiVar.f2348if == null) {
                jiVar.f2348if = new vk(jiVar.f2352try, jiVar.f2347goto, jiVar.f2344else, jiVar.f2339case, new km(new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, km.f2589if, TimeUnit.MILLISECONDS, new SynchronousQueue(), new km.Cdo("source-unlimited", km.Cif.f2597if, false))), jiVar.f2345final, false);
            }
            List<cr<Object>> list2 = jiVar.f2350super;
            if (list2 == null) {
                jiVar.f2350super = Collections.emptyList();
            } else {
                jiVar.f2350super = Collections.unmodifiableList(list2);
            }
            Context context2 = applicationContext;
            ii iiVar = new ii(applicationContext, jiVar.f2348if, jiVar.f2352try, jiVar.f2346for, jiVar.f2349new, new hq(jiVar.f2342const), jiVar.f2338break, jiVar.f2340catch, jiVar.f2341class, jiVar.f2343do, jiVar.f2350super, false, false);
            for (nq nqVar4 : list) {
                try {
                    Context context3 = context2;
                    nqVar4.mo1980if(context3, iiVar, iiVar.f2122try);
                    context2 = context3;
                } catch (AbstractMethodError e2) {
                    StringBuilder m1016super2 = Cgoto.m1016super("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ");
                    m1016super2.append(nqVar4.getClass().getName());
                    throw new IllegalStateException(m1016super2.toString(), e2);
                }
            }
            Context context4 = context2;
            if (generatedAppGlideModule != null) {
                oi oiVar = iiVar.f2122try;
                new OkHttpLibraryGlideModule().mo1980if(context4, iiVar, oiVar);
                ((GeneratedAppGlideModuleImpl) generatedAppGlideModule).f8412do.mo1980if(context4, iiVar, oiVar);
            }
            context4.registerComponentCallbacks(iiVar);
            f2112break = iiVar;
            f2113catch = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    @NonNull
    /* renamed from: new  reason: not valid java name */
    public static ii m1220new(@NonNull Context context) {
        if (f2112break == null) {
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e) {
                m1221try(e);
                throw null;
            } catch (InstantiationException e2) {
                m1221try(e2);
                throw null;
            } catch (NoSuchMethodException e3) {
                m1221try(e3);
                throw null;
            } catch (InvocationTargetException e4) {
                m1221try(e4);
                throw null;
            }
            synchronized (ii.class) {
                if (f2112break == null) {
                    m1219do(context, generatedAppGlideModule);
                }
            }
        }
        return f2112break;
    }

    /* renamed from: try  reason: not valid java name */
    public static void m1221try(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    /* renamed from: for  reason: not valid java name */
    public void m1222for() {
        gs.m1035do();
        ((ds) this.f2117for).m515try(0L);
        this.f2119if.mo2052new();
        this.f2114case.mo1889new();
    }

    @NonNull
    public Context getContext() {
        return this.f2120new.getBaseContext();
    }

    /* renamed from: if  reason: not valid java name */
    public void m1223if() {
        if (gs.m1032catch()) {
            this.f2115do.f5133case.m2822do().clear();
            return;
        }
        throw new IllegalArgumentException("You must call this method on a background thread");
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        m1222for();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        long j;
        gs.m1035do();
        for (qi qiVar : this.f2121this) {
            if (qiVar == null) {
                throw null;
            }
        }
        gm gmVar = (gm) this.f2117for;
        if (gmVar != null) {
            if (i >= 40) {
                gmVar.m515try(0L);
            } else if (i >= 20 || i == 15) {
                synchronized (gmVar) {
                    j = gmVar.f960if;
                }
                gmVar.m515try(j / 2);
            }
            this.f2119if.mo2050for(i);
            this.f2114case.mo1888for(i);
            return;
        }
        throw null;
    }
}
