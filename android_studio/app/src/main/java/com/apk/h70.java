package com.apk;

import android.app.Activity;
import android.os.CountDownTimer;
import android.text.TextUtils;
import com.apk.d50;
import java.util.ArrayList;

/* compiled from: BaseAdProviderVideo.java */
/* loaded from: classes7.dex */
public abstract class h70 extends f70 {

    /* renamed from: case  reason: not valid java name */
    public boolean f1805case;

    /* renamed from: else  reason: not valid java name */
    public boolean f1806else;

    /* renamed from: goto  reason: not valid java name */
    public CountDownTimer f1807goto;

    /* renamed from: try  reason: not valid java name */
    public d50.Cdo f1808try;

    /* compiled from: BaseAdProviderVideo.java */
    /* renamed from: com.apk.h70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements d50.Cdo {
        public Cdo() {
        }

        @Override // com.apk.d50.Cdo
        /* renamed from: do */
        public void mo407do(Activity activity) {
            h70 h70Var = h70.this;
            h70Var.f1805case = false;
            if (h70Var.f1806else) {
                h70Var.j(activity);
                h70.this.f1806else = false;
            }
        }

        @Override // com.apk.d50.Cdo
        /* renamed from: if */
        public void mo408if(Activity activity) {
            h70.this.f1805case = true;
        }
    }

    /* compiled from: BaseAdProviderVideo.java */
    /* renamed from: com.apk.h70$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif extends CountDownTimer {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f1810do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ b70 f1812if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(long j, long j2, String str, b70 b70Var) {
            super(j, j2);
            this.f1810do = str;
            this.f1812if = b70Var;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            d50 m406do = d50.m406do();
            boolean z = true;
            if (!TextUtils.isEmpty(m406do.f826try) && !m406do.f826try.contains("ADActivity") && !m406do.f826try.contains("PortraitADActivity") && !m406do.f826try.contains("LandscapeADActivity") && !m406do.f826try.contains("RewardvideoPortraitADActivity") && !m406do.f826try.contains("RewardvideoLandscapeADActivity") && !m406do.f826try.contains("Stub_Standard_Activity") && !m406do.f826try.contains("Stub_Standard_Portrait_Activity") && !m406do.f826try.contains("Stub_Standard_Activity_T") && !m406do.f826try.contains("Stub_Standard_Landscape_Activity") && !m406do.f826try.contains("Stub_Activity") && !m406do.f826try.contains("Stub_SingleTask_Activity_T") && !m406do.f826try.contains("Stub_SingleTask_Activity")) {
                z = false;
            }
            if (z) {
                return;
            }
            h70 h70Var = h70.this;
            String str = this.f1810do;
            b70 b70Var = this.f1812if;
            if (h70Var != null) {
                k40.m1463this(str + "广告show之后5s未展示");
                if (b70Var != null) {
                    b70Var.mo159if(83007, "广告show之后5s未展示");
                    return;
                }
                return;
            }
            throw null;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public abstract void j(Activity activity);

    public void k(String str, b70 b70Var) {
        l();
        Cif cif = new Cif(5000L, 1000L, str, b70Var);
        this.f1807goto = cif;
        cif.start();
    }

    public void l() {
        CountDownTimer countDownTimer = this.f1807goto;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.f1807goto = null;
        }
    }

    public void m() {
        if (this.f1808try == null) {
            this.f1806else = false;
            this.f1808try = new Cdo();
            d50 m406do = d50.m406do();
            d50.Cdo cdo = this.f1808try;
            if (m406do.f822do == null) {
                m406do.f822do = new ArrayList();
            }
            if (cdo != null) {
                m406do.f822do.add(cdo);
            }
        }
    }
}
