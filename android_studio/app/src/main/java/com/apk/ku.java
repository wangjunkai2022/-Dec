package com.apk;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build;
import android.util.TypedValue;
import android.view.DisplayCutout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;

/* compiled from: ImmersionDelegate.java */
/* loaded from: classes8.dex */
public class ku implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public iu f2669do;

    /* renamed from: for  reason: not valid java name */
    public nu f2670for;

    /* renamed from: if  reason: not valid java name */
    public du f2671if;

    /* renamed from: new  reason: not valid java name */
    public int f2672new;

    public ku(Object obj) {
        if (obj instanceof Activity) {
            if (this.f2669do == null) {
                this.f2669do = new iu((Activity) obj);
            }
        } else if (obj instanceof Fragment) {
            if (this.f2669do == null) {
                if (obj instanceof DialogFragment) {
                    this.f2669do = new iu((DialogFragment) obj);
                } else {
                    this.f2669do = new iu((Fragment) obj);
                }
            }
        } else if ((obj instanceof android.app.Fragment) && this.f2669do == null) {
            if (obj instanceof android.app.DialogFragment) {
                this.f2669do = new iu((android.app.DialogFragment) obj);
            } else {
                this.f2669do = new iu((android.app.Fragment) obj);
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1565do(Configuration configuration) {
        iu iuVar = this.f2669do;
        if (iuVar == null || !iuVar.f2245native) {
            return;
        }
        nu nuVar = iuVar.f2235class.f769implements;
        this.f2670for = nuVar;
        if (nuVar != null) {
            Activity activity = iuVar.getActivity();
            if (this.f2671if == null) {
                this.f2671if = new du();
            }
            du duVar = this.f2671if;
            int i = configuration.orientation;
            if (duVar != null) {
                int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
                if (rotation == 1) {
                    du duVar2 = this.f2671if;
                    if (duVar2 == null) {
                        throw null;
                    }
                    if (duVar2 == null) {
                        throw null;
                    }
                } else if (rotation == 3) {
                    du duVar3 = this.f2671if;
                    if (duVar3 == null) {
                        throw null;
                    }
                    if (duVar3 == null) {
                        throw null;
                    }
                } else {
                    du duVar4 = this.f2671if;
                    if (duVar4 == null) {
                        throw null;
                    }
                    if (duVar4 == null) {
                        throw null;
                    }
                }
                activity.getWindow().getDecorView().post(this);
                return;
            }
            throw null;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m1566for() {
        iu iuVar;
        this.f2671if = null;
        iu iuVar2 = this.f2669do;
        if (iuVar2 != null) {
            if (iuVar2.f2238do != null) {
                gu guVar = iuVar2.f2256while;
                if (guVar != null) {
                    if (guVar.f1636catch) {
                        guVar.f1639for.getViewTreeObserver().removeOnGlobalLayoutListener(guVar);
                        guVar.f1636catch = false;
                    }
                    iuVar2.f2256while = null;
                }
                fu m892do = fu.m892do();
                if (m892do != null) {
                    ArrayList<ju> arrayList = m892do.f1465do;
                    if (arrayList != null) {
                        arrayList.remove(iuVar2);
                    }
                    lu m1670do = lu.m1670do();
                    pu puVar = iuVar2.f2235class.f786transient;
                    if (m1670do == null) {
                        throw null;
                    }
                } else {
                    throw null;
                }
            }
            if (iuVar2.f2234catch && (iuVar = iuVar2.f2242goto) != null) {
                cu cuVar = iuVar.f2235class;
                cuVar.f775private = iuVar.f2248return;
                if (cuVar.f754break != bu.FLAG_SHOW_BAR) {
                    iuVar.m1277catch();
                }
            }
            iuVar2.f2245native = false;
            this.f2669do = null;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m1567if(Configuration configuration) {
        iu iuVar = this.f2669do;
        if (iuVar != null) {
            if (iuVar != null) {
                if (!mu.j()) {
                    iuVar.m1285new();
                } else if (iuVar.f2245native && !iuVar.f2252this && iuVar.f2235class.f780strictfp) {
                    iuVar.m1281else();
                } else {
                    iuVar.m1285new();
                }
                m1565do(configuration);
                return;
            }
            throw null;
        }
    }

    /* renamed from: new  reason: not valid java name */
    public void m1568new() {
        iu iuVar = this.f2669do;
        if (iuVar == null || iuVar.f2252this || !iuVar.f2245native || iuVar.f2235class == null) {
            return;
        }
        if (mu.j() && iuVar.f2235class.f788volatile) {
            iuVar.m1281else();
        } else if (iuVar.f2235class.f754break != bu.FLAG_SHOW_BAR) {
            iuVar.m1277catch();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int identifier;
        iu iuVar = this.f2669do;
        if (iuVar == null || iuVar.getActivity() == null) {
            return;
        }
        Activity activity = this.f2669do.getActivity();
        new au(activity);
        if (this.f2671if != null) {
            boolean m603interface = eg.m603interface(activity);
            if (this.f2671if != null) {
                if (m603interface && this.f2672new == 0) {
                    int m1275try = iu.m1275try(activity);
                    DisplayCutout m617throw = eg.m617throw(activity);
                    if (Build.VERSION.SDK_INT >= 28 && m617throw != null) {
                        if (activity.getResources().getConfiguration().orientation == 1) {
                            m1275try = m617throw.getSafeInsetTop();
                        } else if (m617throw.getSafeInsetLeft() == 0) {
                            m1275try = m617throw.getSafeInsetRight();
                        } else {
                            m1275try = m617throw.getSafeInsetLeft();
                        }
                    } else {
                        boolean z = false;
                        int dimensionPixelSize = (!eg.m621volatile(activity) || (identifier = activity.getResources().getIdentifier("notch_height", "dimen", "android")) <= 0) ? 0 : activity.getResources().getDimensionPixelSize(identifier);
                        if (eg.m590continue(activity)) {
                            int[] iArr = {0, 0};
                            try {
                                Class<?> loadClass = activity.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
                                iArr = (int[]) loadClass.getMethod("getNotchSize", new Class[0]).invoke(loadClass, new Object[0]);
                            } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
                            }
                            dimensionPixelSize = iArr[1];
                        }
                        if (eg.m612strictfp(activity) && (dimensionPixelSize = (int) TypedValue.applyDimension(1, 32, activity.getResources().getDisplayMetrics())) < m1275try) {
                            dimensionPixelSize = m1275try;
                        }
                        try {
                            z = activity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
                        } catch (Exception unused2) {
                        }
                        if (!z) {
                            m1275try = dimensionPixelSize;
                        } else if (80 >= m1275try) {
                            m1275try = 80;
                        }
                    }
                    this.f2672new = m1275try;
                    if (this.f2671if == null) {
                        throw null;
                    }
                }
                this.f2670for.m1916do(this.f2671if);
                return;
            }
            throw null;
        }
        throw null;
    }
}
