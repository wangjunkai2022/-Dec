package com.apk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.app.Fragment;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import androidx.core.text.BidiFormatter;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.apk.ru;
import com.codelibrary.R$id;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ImmersionBar.java */
@TargetApi(19)
/* loaded from: classes8.dex */
public final class iu implements ju {

    /* renamed from: break  reason: not valid java name */
    public boolean f2232break;

    /* renamed from: case  reason: not valid java name */
    public ViewGroup f2233case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f2234catch;

    /* renamed from: class  reason: not valid java name */
    public cu f2235class;

    /* renamed from: const  reason: not valid java name */
    public au f2236const;

    /* renamed from: default  reason: not valid java name */
    public int f2237default;

    /* renamed from: do  reason: not valid java name */
    public Activity f2238do;

    /* renamed from: else  reason: not valid java name */
    public ViewGroup f2239else;

    /* renamed from: final  reason: not valid java name */
    public int f2240final;

    /* renamed from: for  reason: not valid java name */
    public Fragment f2241for;

    /* renamed from: goto  reason: not valid java name */
    public iu f2242goto;

    /* renamed from: if  reason: not valid java name */
    public androidx.fragment.app.Fragment f2243if;

    /* renamed from: import  reason: not valid java name */
    public int f2244import;

    /* renamed from: native  reason: not valid java name */
    public boolean f2245native;

    /* renamed from: new  reason: not valid java name */
    public Dialog f2246new;

    /* renamed from: public  reason: not valid java name */
    public boolean f2247public;

    /* renamed from: return  reason: not valid java name */
    public boolean f2248return;

    /* renamed from: static  reason: not valid java name */
    public int f2249static;

    /* renamed from: super  reason: not valid java name */
    public int f2250super;

    /* renamed from: switch  reason: not valid java name */
    public int f2251switch;

    /* renamed from: this  reason: not valid java name */
    public boolean f2252this;

    /* renamed from: throw  reason: not valid java name */
    public int f2253throw;

    /* renamed from: throws  reason: not valid java name */
    public int f2254throws;

    /* renamed from: try  reason: not valid java name */
    public Window f2255try;

    /* renamed from: while  reason: not valid java name */
    public gu f2256while;

    public iu(Activity activity) {
        this.f2252this = false;
        this.f2232break = false;
        this.f2234catch = false;
        this.f2240final = 0;
        this.f2250super = 0;
        this.f2253throw = 0;
        this.f2256while = null;
        new HashMap();
        this.f2244import = 0;
        this.f2245native = false;
        this.f2247public = false;
        this.f2248return = false;
        this.f2249static = 0;
        this.f2251switch = 0;
        this.f2254throws = 0;
        this.f2237default = 0;
        this.f2238do = activity;
        m1284goto(activity.getWindow());
    }

    /* renamed from: case  reason: not valid java name */
    public static boolean m1271case(@NonNull Activity activity) {
        try {
            Resources resources = activity.getResources();
            int identifier = resources.getIdentifier("config_mainBuiltInDisplayCutout", "string", "android");
            String string = identifier > 0 ? resources.getString(identifier) : null;
            if (string != null) {
                if (!TextUtils.isEmpty(string)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m1272if(View view) {
        if (view == null) {
            return false;
        }
        if (view.getFitsSystemWindows()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (((childAt instanceof DrawerLayout) && m1272if(childAt)) || childAt.getFitsSystemWindows()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: super  reason: not valid java name */
    public static iu m1273super(@NonNull Activity activity) {
        ru ruVar = ru.Cif.f4208do;
        if (ruVar != null) {
            if (activity != null) {
                String str = ruVar.f4204do + System.identityHashCode(activity);
                if (activity instanceof FragmentActivity) {
                    FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
                    tu tuVar = (tu) supportFragmentManager.findFragmentByTag(str);
                    if (tuVar == null && (tuVar = ruVar.f4207new.get(supportFragmentManager)) == null) {
                        tuVar = new tu();
                        ruVar.f4207new.put(supportFragmentManager, tuVar);
                        supportFragmentManager.beginTransaction().add(tuVar, str).commitAllowingStateLoss();
                        ruVar.f4206if.obtainMessage(2, supportFragmentManager).sendToTarget();
                    }
                    if (tuVar.f4764do == null) {
                        tuVar.f4764do = new ku(activity);
                    }
                    return tuVar.f4764do.f2669do;
                }
                android.app.FragmentManager fragmentManager = activity.getFragmentManager();
                qu quVar = (qu) fragmentManager.findFragmentByTag(str);
                if (quVar == null && (quVar = ruVar.f4205for.get(fragmentManager)) == null) {
                    quVar = new qu();
                    ruVar.f4205for.put(fragmentManager, quVar);
                    fragmentManager.beginTransaction().add(quVar, str).commitAllowingStateLoss();
                    ruVar.f4206if.obtainMessage(1, fragmentManager).sendToTarget();
                }
                if (quVar.f3942do == null) {
                    quVar.f3942do = new ku(activity);
                }
                return quVar.f3942do.f2669do;
            }
            throw new NullPointerException("activity is null");
        }
        throw null;
    }

    /* renamed from: this  reason: not valid java name */
    public static boolean m1274this() {
        return mu.m() || mu.k() || Build.VERSION.SDK_INT >= 23;
    }

    @TargetApi(14)
    /* renamed from: try  reason: not valid java name */
    public static int m1275try(@NonNull Activity activity) {
        return new au(activity).f172do;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006f  */
    /* renamed from: break  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m1276break() {
        /*
            Method dump skipped, instructions count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.iu.m1276break():void");
    }

    /* renamed from: catch  reason: not valid java name */
    public void m1277catch() {
        FrameLayout.LayoutParams layoutParams;
        int i;
        if (!mu.j()) {
            if (Build.VERSION.SDK_INT >= 28 && !this.f2245native) {
                WindowManager.LayoutParams attributes = this.f2255try.getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.f2255try.setAttributes(attributes);
            }
            if (!this.f2245native) {
                this.f2235class.f766for = this.f2255try.getNavigationBarColor();
            }
            i = 1280;
            cu cuVar = this.f2235class;
            if (cuVar.f767goto && cuVar.f759continue) {
                i = BidiFormatter.DirectionalityEstimator.DIR_TYPE_CACHE_SIZE;
            }
            this.f2255try.clearFlags(67108864);
            if (this.f2236const.f174for) {
                this.f2255try.clearFlags(134217728);
            }
            this.f2255try.addFlags(Integer.MIN_VALUE);
            cu cuVar2 = this.f2235class;
            if (cuVar2.f789while) {
                this.f2255try.setStatusBarColor(ColorUtils.blendARGB(cuVar2.f761do, cuVar2.f770import, cuVar2.f773new));
            } else {
                this.f2255try.setStatusBarColor(ColorUtils.blendARGB(cuVar2.f761do, 0, cuVar2.f773new));
            }
            cu cuVar3 = this.f2235class;
            if (cuVar3.f759continue) {
                this.f2255try.setNavigationBarColor(ColorUtils.blendARGB(cuVar3.f768if, cuVar3.f772native, cuVar3.f755case));
            } else {
                this.f2255try.setNavigationBarColor(cuVar3.f766for);
            }
            if (Build.VERSION.SDK_INT >= 23 && this.f2235class.f756catch) {
                i |= 8192;
            }
            if (Build.VERSION.SDK_INT >= 26 && this.f2235class.f757class) {
                i |= 16;
            }
        } else {
            this.f2255try.addFlags(67108864);
            View findViewById = this.f2233case.findViewById(eu.f1121do);
            if (findViewById == null) {
                findViewById = new View(this.f2238do);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, this.f2236const.f172do);
                layoutParams2.gravity = 48;
                findViewById.setLayoutParams(layoutParams2);
                findViewById.setVisibility(0);
                findViewById.setId(eu.f1121do);
                this.f2233case.addView(findViewById);
            }
            cu cuVar4 = this.f2235class;
            if (cuVar4.f789while) {
                findViewById.setBackgroundColor(ColorUtils.blendARGB(cuVar4.f761do, cuVar4.f770import, cuVar4.f773new));
            } else {
                findViewById.setBackgroundColor(ColorUtils.blendARGB(cuVar4.f761do, 0, cuVar4.f773new));
            }
            if (this.f2236const.f174for || mu.j()) {
                cu cuVar5 = this.f2235class;
                if (cuVar5.f759continue && cuVar5.f780strictfp) {
                    this.f2255try.addFlags(134217728);
                } else {
                    this.f2255try.clearFlags(134217728);
                }
                if (this.f2240final == 0) {
                    this.f2240final = this.f2236const.f176new;
                }
                if (this.f2250super == 0) {
                    this.f2250super = this.f2236const.f177try;
                }
                View findViewById2 = this.f2233case.findViewById(eu.f1122if);
                if (findViewById2 == null) {
                    findViewById2 = new View(this.f2238do);
                    findViewById2.setId(eu.f1122if);
                    this.f2233case.addView(findViewById2);
                }
                if (this.f2236const.m112for()) {
                    layoutParams = new FrameLayout.LayoutParams(-1, this.f2236const.f176new);
                    layoutParams.gravity = 80;
                } else {
                    layoutParams = new FrameLayout.LayoutParams(this.f2236const.f177try, -1);
                    layoutParams.gravity = 8388613;
                }
                findViewById2.setLayoutParams(layoutParams);
                cu cuVar6 = this.f2235class;
                findViewById2.setBackgroundColor(ColorUtils.blendARGB(cuVar6.f768if, cuVar6.f772native, cuVar6.f755case));
                cu cuVar7 = this.f2235class;
                if (cuVar7.f759continue && cuVar7.f780strictfp && !cuVar7.f783this) {
                    findViewById2.setVisibility(0);
                } else {
                    findViewById2.setVisibility(8);
                }
            }
            i = 256;
        }
        int ordinal = this.f2235class.f754break.ordinal();
        if (ordinal == 0) {
            i |= 1028;
        } else if (ordinal == 1) {
            i |= 514;
        } else if (ordinal == 2) {
            i |= 518;
        } else if (ordinal == 3) {
            i |= 0;
        }
        this.f2233case.setSystemUiVisibility(i | 4096);
        if (mu.m()) {
            su.m2552do(this.f2255try, "EXTRA_FLAG_STATUS_BAR_DARK_MODE", this.f2235class.f756catch);
            cu cuVar8 = this.f2235class;
            if (cuVar8.f759continue) {
                su.m2552do(this.f2255try, "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE", cuVar8.f757class);
            }
        }
        if (mu.k()) {
            cu cuVar9 = this.f2235class;
            int i2 = cuVar9.f763extends;
            if (i2 != 0) {
                Activity activity = this.f2238do;
                Method method = su.f4594do;
                if (method != null) {
                    try {
                        method.invoke(activity, Integer.valueOf(i2));
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    } catch (InvocationTargetException e2) {
                        e2.printStackTrace();
                    }
                } else {
                    boolean z = ((((i2 & 255) * 15) + ((((65280 & i2) >> 8) * 75) + (((16711680 & i2) >> 16) * 38))) >> 7) < 50;
                    if (su.f4595for != null) {
                        su.m2553for(activity, z, z);
                        Window window = activity.getWindow();
                        try {
                            su.m2554if(window, i2);
                            if (Build.VERSION.SDK_INT > 22) {
                                su.m2555new(window.getDecorView(), true);
                            }
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    } else {
                        su.m2553for(activity, z, true);
                    }
                }
            } else {
                su.m2553for(this.f2238do, cuVar9.f756catch, true);
            }
        }
        if (this.f2235class.f786transient != null) {
            lu m1670do = lu.m1670do();
            Application application = this.f2238do.getApplication();
            m1670do.f2908do = application;
            if (application == null || application.getContentResolver() == null || m1670do.f2909if.booleanValue()) {
                return;
            }
            Uri uri = null;
            if (mu.l()) {
                uri = Settings.Global.getUriFor("force_fsg_nav_bar");
            } else if (mu.i()) {
                if (!mu.j()) {
                    uri = Settings.Global.getUriFor("navigationbar_is_min");
                } else {
                    uri = Settings.System.getUriFor("navigationbar_is_min");
                }
            }
            if (uri != null) {
                m1670do.f2908do.getContentResolver().registerContentObserver(uri, true, m1670do);
                m1670do.f2909if = Boolean.TRUE;
            }
        }
    }

    /* renamed from: class  reason: not valid java name */
    public final void m1278class(int i, int i2, int i3, int i4) {
        ViewGroup viewGroup = this.f2239else;
        if (viewGroup != null) {
            viewGroup.setPadding(i, i2, i3, i4);
        }
        this.f2249static = i;
        this.f2251switch = i2;
        this.f2254throws = i3;
        this.f2237default = i4;
    }

    /* renamed from: const  reason: not valid java name */
    public iu m1279const(boolean z, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f2235class.f756catch = z;
        if (z && !m1274this()) {
            this.f2235class.f773new = f;
        } else {
            cu cuVar = this.f2235class;
            cuVar.f763extends = cuVar.f765finally;
            cuVar.f773new = cuVar.f787try;
        }
        return this;
    }

    @Override // com.apk.pu
    /* renamed from: do  reason: not valid java name */
    public void mo1280do(boolean z) {
        View findViewById = this.f2233case.findViewById(eu.f1122if);
        if (findViewById != null) {
            this.f2236const = new au(this.f2238do);
            int paddingBottom = this.f2239else.getPaddingBottom();
            int paddingRight = this.f2239else.getPaddingRight();
            if (!z) {
                findViewById.setVisibility(8);
            } else {
                findViewById.setVisibility(0);
                if (!m1272if(this.f2233case.findViewById(16908290))) {
                    if (this.f2240final == 0) {
                        this.f2240final = this.f2236const.f176new;
                    }
                    if (this.f2250super == 0) {
                        this.f2250super = this.f2236const.f177try;
                    }
                    if (!this.f2235class.f783this) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) findViewById.getLayoutParams();
                        if (this.f2236const.m112for()) {
                            layoutParams.gravity = 80;
                            paddingBottom = this.f2240final;
                            layoutParams.height = paddingBottom;
                            if (this.f2235class.f767goto) {
                                paddingBottom = 0;
                            }
                            paddingRight = 0;
                        } else {
                            layoutParams.gravity = 8388613;
                            int i = this.f2250super;
                            layoutParams.width = i;
                            if (this.f2235class.f767goto) {
                                i = 0;
                            }
                            paddingRight = i;
                            paddingBottom = 0;
                        }
                        findViewById.setLayoutParams(layoutParams);
                    }
                    m1278class(0, this.f2239else.getPaddingTop(), paddingRight, paddingBottom);
                }
            }
            paddingBottom = 0;
            paddingRight = 0;
            m1278class(0, this.f2239else.getPaddingTop(), paddingRight, paddingBottom);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m1281else() {
        int i;
        int i2;
        cu cuVar = this.f2235class;
        if (cuVar.f771interface) {
            if (cuVar.f758const && (i2 = cuVar.f761do) != 0) {
                m1279const(i2 > -4539718, this.f2235class.f781super);
            }
            cu cuVar2 = this.f2235class;
            if (cuVar2.f764final && (i = cuVar2.f768if) != 0) {
                boolean z = i > -4539718;
                cu cuVar3 = this.f2235class;
                float f = cuVar3.f784throw;
                cuVar3.f757class = z;
                if (z) {
                    if (!(mu.m() || Build.VERSION.SDK_INT >= 26)) {
                        this.f2235class.f755case = f;
                    }
                }
                cu cuVar4 = this.f2235class;
                cuVar4.f755case = cuVar4.f762else;
            }
            m1282final();
            iu iuVar = this.f2242goto;
            if (iuVar != null) {
                if (this.f2252this) {
                    iuVar.f2235class = this.f2235class;
                }
                if (this.f2234catch) {
                    iu iuVar2 = this.f2242goto;
                    if (iuVar2.f2248return) {
                        iuVar2.f2235class.f775private = false;
                    }
                }
            }
            m1277catch();
            m1285new();
            if (!this.f2252this) {
                if (this.f2235class.f775private) {
                    if (this.f2256while == null) {
                        this.f2256while = new gu(this);
                    }
                    this.f2256while.m1046if(this.f2235class.f753abstract);
                } else {
                    gu guVar = this.f2256while;
                    if (guVar != null) {
                        guVar.m1045do();
                    }
                }
            } else {
                iu iuVar3 = this.f2242goto;
                if (iuVar3 != null) {
                    if (iuVar3.f2235class.f775private) {
                        if (iuVar3.f2256while == null) {
                            iuVar3.f2256while = new gu(iuVar3);
                        }
                        iu iuVar4 = this.f2242goto;
                        iuVar4.f2256while.m1046if(iuVar4.f2235class.f753abstract);
                    } else {
                        gu guVar2 = iuVar3.f2256while;
                        if (guVar2 != null) {
                            guVar2.m1045do();
                        }
                    }
                }
            }
            if (this.f2235class.f777public.size() != 0) {
                for (Map.Entry<View, Map<Integer, Integer>> entry : this.f2235class.f777public.entrySet()) {
                    View key = entry.getKey();
                    Integer valueOf = Integer.valueOf(this.f2235class.f761do);
                    Integer valueOf2 = Integer.valueOf(this.f2235class.f770import);
                    for (Map.Entry<Integer, Integer> entry2 : entry.getValue().entrySet()) {
                        Integer key2 = entry2.getKey();
                        valueOf2 = entry2.getValue();
                        valueOf = key2;
                    }
                    if (key != null) {
                        if (Math.abs(this.f2235class.f778return - 0.0f) == 0.0f) {
                            key.setBackgroundColor(ColorUtils.blendARGB(valueOf.intValue(), valueOf2.intValue(), this.f2235class.f773new));
                        } else {
                            key.setBackgroundColor(ColorUtils.blendARGB(valueOf.intValue(), valueOf2.intValue(), this.f2235class.f778return));
                        }
                    }
                }
            }
            this.f2245native = true;
        }
    }

    /* renamed from: final  reason: not valid java name */
    public final void m1282final() {
        this.f2236const = new au(this.f2238do);
        if (!this.f2245native || this.f2247public) {
            this.f2253throw = this.f2236const.f175if;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m1283for() {
        if (this.f2242goto == null) {
            this.f2242goto = m1273super(this.f2238do);
        }
        iu iuVar = this.f2242goto;
        if (iuVar == null || iuVar.f2245native) {
            return;
        }
        iuVar.m1281else();
    }

    public Activity getActivity() {
        return this.f2238do;
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m1284goto(Window window) {
        this.f2255try = window;
        this.f2235class = new cu();
        ViewGroup viewGroup = (ViewGroup) this.f2255try.getDecorView();
        this.f2233case = viewGroup;
        this.f2239else = (ViewGroup) viewGroup.findViewById(16908290);
    }

    /* renamed from: new  reason: not valid java name */
    public final void m1285new() {
        int i = 0;
        if (!mu.j()) {
            m1282final();
            if (m1272if(this.f2233case.findViewById(16908290))) {
                m1278class(0, 0, 0, 0);
            } else {
                int i2 = (this.f2235class.f779static && this.f2244import == 4) ? this.f2236const.f172do : 0;
                if (this.f2235class.f774package) {
                    i2 = this.f2236const.f172do + this.f2253throw;
                }
                m1278class(0, i2, 0, 0);
            }
        } else if (this.f2235class.f774package) {
            this.f2247public = true;
            this.f2239else.post(this);
        } else {
            this.f2247public = false;
            m1276break();
        }
        int m1275try = this.f2235class.f760default ? m1275try(this.f2238do) : 0;
        int i3 = this.f2244import;
        if (i3 == 1) {
            Activity activity = this.f2238do;
            View[] viewArr = {this.f2235class.f782switch};
            if (activity == null) {
                return;
            }
            if (m1275try < 0) {
                m1275try = 0;
            }
            while (i < 1) {
                View view = viewArr[i];
                if (view != null) {
                    Integer num = (Integer) view.getTag(R$id.immersion_fits_layout_overlap);
                    if (num == null) {
                        num = 0;
                    }
                    if (num.intValue() != m1275try) {
                        view.setTag(R$id.immersion_fits_layout_overlap, Integer.valueOf(m1275try));
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams == null) {
                            layoutParams = new ViewGroup.LayoutParams(-1, -2);
                        }
                        int i4 = layoutParams.height;
                        if (i4 != -2 && i4 != -1) {
                            layoutParams.height = (m1275try - num.intValue()) + i4;
                            view.setPadding(view.getPaddingLeft(), (view.getPaddingTop() + m1275try) - num.intValue(), view.getPaddingRight(), view.getPaddingBottom());
                            view.setLayoutParams(layoutParams);
                        } else {
                            view.post(new hu(layoutParams, view, m1275try, num));
                        }
                    }
                }
                i++;
            }
        } else if (i3 == 2) {
            Activity activity2 = this.f2238do;
            View[] viewArr2 = {this.f2235class.f782switch};
            if (activity2 == null) {
                return;
            }
            if (m1275try < 0) {
                m1275try = 0;
            }
            while (i < 1) {
                View view2 = viewArr2[i];
                if (view2 != null) {
                    Integer num2 = (Integer) view2.getTag(R$id.immersion_fits_layout_overlap);
                    if (num2 == null) {
                        num2 = 0;
                    }
                    if (num2.intValue() != m1275try) {
                        view2.setTag(R$id.immersion_fits_layout_overlap, Integer.valueOf(m1275try));
                        ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                        if (layoutParams2 == null) {
                            layoutParams2 = new ViewGroup.MarginLayoutParams(-1, -2);
                        }
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
                        marginLayoutParams.setMargins(marginLayoutParams.leftMargin, (marginLayoutParams.topMargin + m1275try) - num2.intValue(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                        view2.setLayoutParams(marginLayoutParams);
                    }
                }
                i++;
            }
        } else if (i3 == 3) {
            Activity activity3 = this.f2238do;
            View[] viewArr3 = {this.f2235class.f785throws};
            if (activity3 == null) {
                return;
            }
            if (m1275try < 0) {
                m1275try = 0;
            }
            for (int i5 = 0; i5 < 1; i5++) {
                View view3 = viewArr3[i5];
                if (view3 != null) {
                    Integer num3 = (Integer) view3.getTag(R$id.immersion_fits_layout_overlap);
                    if (num3 == null) {
                        num3 = 0;
                    }
                    if (num3.intValue() != m1275try) {
                        view3.setTag(R$id.immersion_fits_layout_overlap, Integer.valueOf(m1275try));
                        ViewGroup.LayoutParams layoutParams3 = view3.getLayoutParams();
                        if (layoutParams3 == null) {
                            layoutParams3 = new ViewGroup.LayoutParams(-1, 0);
                        }
                        layoutParams3.height = m1275try;
                        view3.setLayoutParams(layoutParams3);
                    }
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        m1276break();
    }

    public iu(androidx.fragment.app.Fragment fragment) {
        this.f2252this = false;
        this.f2232break = false;
        this.f2234catch = false;
        this.f2240final = 0;
        this.f2250super = 0;
        this.f2253throw = 0;
        this.f2256while = null;
        new HashMap();
        this.f2244import = 0;
        this.f2245native = false;
        this.f2247public = false;
        this.f2248return = false;
        this.f2249static = 0;
        this.f2251switch = 0;
        this.f2254throws = 0;
        this.f2237default = 0;
        this.f2252this = true;
        this.f2238do = fragment.getActivity();
        this.f2243if = fragment;
        m1283for();
        m1284goto(this.f2238do.getWindow());
    }

    public iu(Fragment fragment) {
        this.f2252this = false;
        this.f2232break = false;
        this.f2234catch = false;
        this.f2240final = 0;
        this.f2250super = 0;
        this.f2253throw = 0;
        this.f2256while = null;
        new HashMap();
        this.f2244import = 0;
        this.f2245native = false;
        this.f2247public = false;
        this.f2248return = false;
        this.f2249static = 0;
        this.f2251switch = 0;
        this.f2254throws = 0;
        this.f2237default = 0;
        this.f2252this = true;
        this.f2238do = fragment.getActivity();
        this.f2241for = fragment;
        m1283for();
        m1284goto(this.f2238do.getWindow());
    }

    public iu(DialogFragment dialogFragment) {
        this.f2252this = false;
        this.f2232break = false;
        this.f2234catch = false;
        this.f2240final = 0;
        this.f2250super = 0;
        this.f2253throw = 0;
        this.f2256while = null;
        new HashMap();
        this.f2244import = 0;
        this.f2245native = false;
        this.f2247public = false;
        this.f2248return = false;
        this.f2249static = 0;
        this.f2251switch = 0;
        this.f2254throws = 0;
        this.f2237default = 0;
        this.f2234catch = true;
        this.f2232break = true;
        this.f2238do = dialogFragment.getActivity();
        this.f2243if = dialogFragment;
        this.f2246new = dialogFragment.getDialog();
        m1283for();
        m1284goto(this.f2246new.getWindow());
    }

    public iu(android.app.DialogFragment dialogFragment) {
        this.f2252this = false;
        this.f2232break = false;
        this.f2234catch = false;
        this.f2240final = 0;
        this.f2250super = 0;
        this.f2253throw = 0;
        this.f2256while = null;
        new HashMap();
        this.f2244import = 0;
        this.f2245native = false;
        this.f2247public = false;
        this.f2248return = false;
        this.f2249static = 0;
        this.f2251switch = 0;
        this.f2254throws = 0;
        this.f2237default = 0;
        this.f2234catch = true;
        this.f2232break = true;
        this.f2238do = dialogFragment.getActivity();
        this.f2241for = dialogFragment;
        this.f2246new = dialogFragment.getDialog();
        m1283for();
        m1284goto(this.f2246new.getWindow());
    }
}
