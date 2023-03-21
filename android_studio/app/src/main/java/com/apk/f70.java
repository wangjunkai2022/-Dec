package com.apk;

import android.app.Activity;
import android.os.CountDownTimer;
import android.os.Looper;
import com.swl.gg.sdk.TrAdSdk;

/* compiled from: BaseAdProviderSuper.java */
/* loaded from: classes7.dex */
public class f70 extends e70 {

    /* renamed from: if  reason: not valid java name */
    public CountDownTimer f1243if;

    /* renamed from: for  reason: not valid java name */
    public boolean f1242for = false;

    /* renamed from: new  reason: not valid java name */
    public boolean f1244new = false;

    /* compiled from: BaseAdProviderSuper.java */
    /* renamed from: com.apk.f70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f1245do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f1246for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ long f1247if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ b70 f1248new;

        public Cdo(String str, long j, boolean z, b70 b70Var) {
            this.f1245do = str;
            this.f1247if = j;
            this.f1246for = z;
            this.f1248new = b70Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            f70.this.e(this.f1245do, this.f1247if, this.f1246for, this.f1248new);
        }
    }

    /* compiled from: BaseAdProviderSuper.java */
    /* renamed from: com.apk.f70$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f70 f70Var = f70.this;
            if (f70Var != null) {
                k40.m1463this("cancelTimer");
                CountDownTimer countDownTimer = f70Var.f1243if;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                    f70Var.f1243if = null;
                    return;
                }
                return;
            }
            throw null;
        }
    }

    /* compiled from: BaseAdProviderSuper.java */
    /* renamed from: com.apk.f70$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif extends CountDownTimer {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f1251do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f1252for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ long f1253if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ b70 f1254new;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(long j, long j2, String str, long j3, boolean z, b70 b70Var) {
            super(j, j2);
            this.f1251do = str;
            this.f1253if = j3;
            this.f1252for = z;
            this.f1254new = b70Var;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f1251do);
            sb.append("超时计时结束：");
            sb.append(this.f1253if);
            sb.append(this.f1252for ? "：onCache" : "");
            k40.m1463this(sb.toString());
            if (d50.m406do().f825new) {
                return;
            }
            f70 f70Var = f70.this;
            f70Var.f1242for = true;
            if (this.f1252for) {
                if (TrAdSdk.isVideoCacheShow()) {
                    f70 f70Var2 = f70.this;
                    f70Var2.f1242for = false;
                    f70Var2.f1244new = true;
                    f70Var2.mo551else(this.f1251do);
                    return;
                }
                f70.this.m567public(this.f1251do, this.f1254new);
                return;
            }
            f70Var.m567public(this.f1251do, this.f1254new);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public final void e(String str, long j, boolean z, b70 b70Var) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("开启超时：");
        sb.append(j);
        sb.append(z ? "：onCache" : "");
        k40.m1463this(sb.toString());
        f();
        this.f1242for = false;
        this.f1244new = false;
        Cif cif = new Cif(j, 1000L, str, j, z, b70Var);
        this.f1243if = cif;
        cif.start();
    }

    public void f() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            k40.m1463this("cancelTimer");
            CountDownTimer countDownTimer = this.f1243if;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.f1243if = null;
                return;
            }
            return;
        }
        n70.m1848do(new Cfor());
    }

    public void g(Activity activity, String str, String str2, x60 x60Var) {
    }

    public final void h(String str, long j, boolean z, b70 b70Var) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            e(str, j, z, b70Var);
        } else {
            n70.m1848do(new Cdo(str, j, z, b70Var));
        }
    }

    public int i() {
        return !TrAdSdk.isAdQuickDownload() ? 1 : 0;
    }
}
