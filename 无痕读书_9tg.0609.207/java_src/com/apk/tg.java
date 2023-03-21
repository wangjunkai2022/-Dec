package com.apk;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.apk.d;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import java.lang.ref.WeakReference;
/* compiled from: ReadContentAdView.java */
/* loaded from: classes8.dex */
public class tg extends FrameLayout {
    public tg(@NonNull Context context) {
        super(context, null);
    }

    /* renamed from: do  reason: not valid java name */
    public boolean m2587do(int i) {
        removeAllViews();
        setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        if (i >= bf.f300for) {
            if (Cfinally.m797else().m807extends()) {
                d dVar = d.Cdo.f803do;
                Activity activity = (Activity) getContext();
                WeakReference<AdViewRectangle> weakReference = dVar.f800do;
                if (weakReference == null) {
                    AdViewRectangle adViewRectangle = new AdViewRectangle(activity, null);
                    adViewRectangle.setAutoRefresh(false);
                    adViewRectangle.f6326this = true;
                    adViewRectangle.m3274for(activity, null, "insertstsw2");
                    dVar.f800do = new WeakReference<>(adViewRectangle);
                } else {
                    weakReference.get().mo139do();
                }
                d.m399if(this, dVar.f800do.get());
            } else {
                m2588if();
            }
            return true;
        } else if (i >= bf.f302new) {
            m2588if();
            return true;
        } else {
            return false;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m2588if() {
        View m402new;
        d dVar = d.Cdo.f803do;
        Activity activity = (Activity) getContext();
        boolean m826throw = Cfinally.m797else().m826throw();
        boolean m806default = Cfinally.m797else().m806default();
        if (m826throw && m806default) {
            if (dg.f857do.nextInt(2) == 0) {
                m402new = dVar.m402new(activity);
            } else {
                m402new = dVar.m401for(activity);
            }
        } else if (m826throw && !m806default) {
            m402new = dVar.m401for(activity);
        } else {
            m402new = (m826throw || !m806default) ? null : dVar.m402new(activity);
        }
        if (m402new != null) {
            d.m399if(this, m402new);
        }
    }
}
