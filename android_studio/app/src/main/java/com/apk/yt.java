package com.apk;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import android.view.OrientationEventListener;
import com.expand.videoplayer.ui.PlayWebViewActivity;

/* compiled from: OrientationHelper.java */
/* loaded from: classes8.dex */
public class yt {

    /* renamed from: do  reason: not valid java name */
    public Activity f6068do;

    /* renamed from: for  reason: not valid java name */
    public xt f6069for;

    /* renamed from: if  reason: not valid java name */
    public OrientationEventListener f6070if;

    /* compiled from: OrientationHelper.java */
    /* renamed from: com.apk.yt$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends OrientationEventListener {
        public Cdo(Context context) {
            super(context);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i) {
            if (Settings.System.getInt(yt.this.f6068do.getContentResolver(), "accelerometer_rotation", 0) == 1 && ((PlayWebViewActivity.Cif) yt.this.f6069for) == null) {
                throw null;
            }
        }
    }

    public yt(Activity activity, xt xtVar) {
        this.f6068do = activity;
        this.f6069for = xtVar;
        this.f6070if = new Cdo(this.f6068do);
    }
}
