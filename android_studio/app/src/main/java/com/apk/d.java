package com.apk;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* compiled from: ReadAdHelper.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: do  reason: not valid java name */
    public WeakReference<AdViewRectangle> f800do;

    /* renamed from: for  reason: not valid java name */
    public WeakReference<AdViewRectangle> f801for;

    /* renamed from: if  reason: not valid java name */
    public WeakReference<AdViewBanner> f802if;

    /* compiled from: ReadAdHelper.java */
    /* renamed from: com.apk.d$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public static final d f803do = new d();
    }

    /* renamed from: if  reason: not valid java name */
    public static void m399if(ViewGroup viewGroup, View view) {
        if (viewGroup == null || view == null) {
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        if (viewGroup2 != null && viewGroup2.getChildCount() > 0) {
            viewGroup2.removeAllViews();
        }
        viewGroup.addView(view);
    }

    /* renamed from: do  reason: not valid java name */
    public void m400do(Activity activity, ViewGroup viewGroup, boolean z) {
        WeakReference<AdViewRectangle> weakReference = this.f801for;
        if (weakReference == null) {
            AdViewRectangle adViewRectangle = new AdViewRectangle(activity, null);
            adViewRectangle.setAdWidth(eg.m614switch() - eg.m587catch(10.0f));
            adViewRectangle.setAutoRefresh(false);
            adViewRectangle.setIntervalTime(ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            adViewRectangle.f6326this = true;
            adViewRectangle.m3274for(activity, null, z ? "chaptersmid_mh2" : "chaptersmid2");
            this.f801for = new WeakReference<>(adViewRectangle);
        } else if (weakReference.get() != null) {
            this.f801for.get().mo139do();
        }
        m399if(viewGroup, this.f801for.get());
    }

    /* renamed from: for  reason: not valid java name */
    public AdViewBanner m401for(Activity activity) {
        WeakReference<AdViewBanner> weakReference = this.f802if;
        if (weakReference == null) {
            AdViewBanner adViewBanner = new AdViewBanner(activity, null);
            adViewBanner.setAutoRefresh(false);
            adViewBanner.m3271for(activity, "bannerlastpage2");
            this.f802if = new WeakReference<>(adViewBanner);
        } else if (weakReference.get() != null) {
            this.f802if.get().mo139do();
        }
        return this.f802if.get();
    }

    /* renamed from: new  reason: not valid java name */
    public final b m402new(Activity activity) {
        try {
            if (Cfinally.m797else().f1338abstract != null) {
                b bVar = new b(activity);
                JSONObject jSONObject = Cfinally.m797else().f1338abstract;
                if (jSONObject != null) {
                    bVar.f226try = activity;
                    new b1().m141do(new Csynchronized(bVar, jSONObject, null));
                }
                return bVar;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /* renamed from: try  reason: not valid java name */
    public void m403try() {
        WeakReference<AdViewBanner> weakReference = this.f802if;
        if (weakReference != null && weakReference.get() != null) {
            this.f802if.get().m3272new();
            this.f802if = null;
        }
        WeakReference<AdViewRectangle> weakReference2 = this.f800do;
        if (weakReference2 != null && weakReference2.get() != null) {
            this.f800do.get().m3275new();
            this.f800do = null;
        }
        WeakReference<AdViewRectangle> weakReference3 = this.f801for;
        if (weakReference3 == null || weakReference3.get() == null) {
            return;
        }
        this.f801for.get().m3275new();
        this.f801for = null;
    }
}
