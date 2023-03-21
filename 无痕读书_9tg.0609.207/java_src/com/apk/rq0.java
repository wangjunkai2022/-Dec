package com.apk;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
/* compiled from: SkinMaterialViewInflater.java */
/* loaded from: classes7.dex */
public class rq0 implements dq0 {
    @Override // com.apk.dq0
    /* renamed from: if */
    public View mo92if(@NonNull Context context, String str, @NonNull AttributeSet attributeSet) {
        if ("androidx.coordinatorlayout.widget.CoordinatorLayout".equals(str)) {
            return new vq0(context, attributeSet);
        }
        if (str.startsWith("com.google.android.material.")) {
            char c = 65535;
            switch (str.hashCode()) {
                case -2119513329:
                    if (str.equals("com.google.android.material.tabs.TabLayout")) {
                        c = 1;
                        break;
                    }
                    break;
                case -533274696:
                    if (str.equals("com.google.android.material.appbar.AppBarLayout")) {
                        c = 0;
                        break;
                    }
                    break;
                case -204374977:
                    if (str.equals("com.google.android.material.appbar.CollapsingToolbarLayout")) {
                        c = 7;
                        break;
                    }
                    break;
                case 391764942:
                    if (str.equals("com.google.android.material.floatingactionbutton.FloatingActionButton")) {
                        c = 5;
                        break;
                    }
                    break;
                case 827811731:
                    if (str.equals("com.google.android.material.navigation.NavigationView")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1589750150:
                    if (str.equals("com.google.android.material.textfield.TextInputLayout")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1634834867:
                    if (str.equals("com.google.android.material.textfield.TextInputEditText")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1949496211:
                    if (str.equals("com.google.android.material.bottomnavigation.BottomNavigationView")) {
                        c = 6;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return new sq0(context, attributeSet);
                case 1:
                    return new yq0(context, attributeSet);
                case 2:
                    return new ar0(context, attributeSet);
                case 3:
                    return new zq0(context, attributeSet);
                case 4:
                    return new xq0(context, attributeSet);
                case 5:
                    return new wq0(context, attributeSet);
                case 6:
                    return new tq0(context, attributeSet);
                case 7:
                    return new uq0(context, attributeSet);
                default:
                    return null;
            }
        }
        return null;
    }
}
