package com.apk;

import android.app.Activity;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.view.WindowManager;
import android.widget.SeekBar;
/* compiled from: SystemBrightManager.java */
/* loaded from: classes8.dex */
public class hg {

    /* renamed from: do  reason: not valid java name */
    public Activity f1843do;

    /* renamed from: else  reason: not valid java name */
    public ContentObserver f1844else;

    /* renamed from: if  reason: not valid java name */
    public Handler f1846if;

    /* renamed from: for  reason: not valid java name */
    public final Uri f1845for = Settings.System.getUriFor("screen_brightness_mode");

    /* renamed from: new  reason: not valid java name */
    public final Uri f1847new = Settings.System.getUriFor("screen_brightness");

    /* renamed from: try  reason: not valid java name */
    public final Uri f1848try = Settings.System.getUriFor("screen_auto_brightness_adj");

    /* renamed from: case  reason: not valid java name */
    public boolean f1842case = false;

    /* compiled from: SystemBrightManager.java */
    /* renamed from: com.apk.hg$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ n1 f1849do;

        public Cdo(n1 n1Var) {
            this.f1849do = n1Var;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                hg.this.m1111else(i, false);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            hg.this.m1111else(seekBar.getProgress(), true);
            if (hg.this.m1114if()) {
                hg.this.m1109case(false);
                this.f1849do.mo1807do();
            }
        }
    }

    /* compiled from: SystemBrightManager.java */
    /* renamed from: com.apk.hg$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends ContentObserver {

        /* compiled from: SystemBrightManager.java */
        /* renamed from: com.apk.hg$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                hg.this.m1116try();
            }
        }

        public Cif(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            onChange(z, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            Handler handler;
            super.onChange(z);
            if (z || !hg.this.m1114if() || (handler = hg.this.f1846if) == null) {
                return;
            }
            handler.post(new Cdo());
        }
    }

    public hg(Activity activity) {
        this.f1844else = new Cif(this.f1846if);
        this.f1843do = activity;
        this.f1846if = new Handler(activity.getMainLooper());
    }

    /* renamed from: case  reason: not valid java name */
    public void m1109case(boolean z) {
        tt.f4763do.putBoolean("Brightness_Is_System_Code", z);
    }

    /* renamed from: do  reason: not valid java name */
    public void m1110do(SeekBar seekBar, n1 n1Var) {
        seekBar.setMax(255);
        seekBar.setProgress(ze.m3174instanceof("Brightness_Value_Code", 100));
        seekBar.setOnSeekBarChangeListener(new Cdo(n1Var));
    }

    /* renamed from: else  reason: not valid java name */
    public void m1111else(int i, boolean z) {
        try {
            WindowManager.LayoutParams attributes = this.f1843do.getWindow().getAttributes();
            attributes.screenBrightness = i / 255.0f;
            this.f1843do.getWindow().setAttributes(attributes);
            if (z) {
                tt.f4763do.putInt("Brightness_Value_Code", i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m1112for() {
        WindowManager.LayoutParams attributes = this.f1843do.getWindow().getAttributes();
        attributes.screenBrightness = -1.0f;
        this.f1843do.getWindow().setAttributes(attributes);
    }

    /* renamed from: goto  reason: not valid java name */
    public void m1113goto() {
        try {
            if (this.f1844else == null || !this.f1842case) {
                return;
            }
            this.f1843do.getContentResolver().unregisterContentObserver(this.f1844else);
            this.f1842case = false;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m1114if() {
        return ze.m3179private("Brightness_Is_System_Code", true);
    }

    /* renamed from: new  reason: not valid java name */
    public void m1115new() {
        try {
            if (this.f1844else == null || this.f1842case) {
                return;
            }
            ContentResolver contentResolver = this.f1843do.getContentResolver();
            contentResolver.unregisterContentObserver(this.f1844else);
            contentResolver.registerContentObserver(this.f1845for, false, this.f1844else);
            contentResolver.registerContentObserver(this.f1847new, false, this.f1844else);
            contentResolver.registerContentObserver(this.f1848try, false, this.f1844else);
            this.f1842case = true;
        } catch (Throwable unused) {
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m1116try() {
        if (m1114if()) {
            m1112for();
        } else {
            m1111else(ze.m3174instanceof("Brightness_Value_Code", 100), true);
        }
    }
}
