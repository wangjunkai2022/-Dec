package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
import com.apk.Cgoto;

/* compiled from: IntervalPacingBean.java */
/* loaded from: classes8.dex */
public class i extends d {
    public long g;
    public String h;
    public long i;

    public i(String str, String str2, String str3, String str4, int i, String str5, String str6) {
        super(str, str2, str3, str4, i);
        this.i = 0L;
        this.g = 0L;
        try {
            this.g = Long.parseLong(str5);
        } catch (Exception unused) {
        }
        this.h = str6;
    }

    public i(String str, String str2, String str3, String str4, int i, String str5, String str6, String str7) {
        this(str, str2, str3, str4, i, str5, str6);
        this.i = 0L;
        try {
            this.i = Long.parseLong(str7);
        } catch (Exception unused) {
        }
    }

    public void a(long j) {
        this.i = j;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.d
    public boolean a() {
        return (TextUtils.isEmpty(this.h) || this.g == 0) ? false : true;
    }

    public long i() {
        return this.g;
    }

    public String j() {
        return this.h;
    }

    public long k() {
        return this.i;
    }

    public boolean l() {
        return this.i != 0;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("BaseIntervalBean{waterfallId='");
        Cgoto.m987abstract(m1016super, this.f10852a, '\'', ", showRulesVersion='");
        Cgoto.m987abstract(m1016super, this.c, '\'', ", timingMode=");
        m1016super.append(this.e);
        m1016super.append('}');
        m1016super.append("IntervalPacingBean{pacing=");
        m1016super.append(this.g);
        m1016super.append(", pacingRuleId='");
        Cgoto.m987abstract(m1016super, this.h, '\'', ", effectiveTime=");
        m1016super.append(this.i);
        m1016super.append('}');
        return m1016super.toString();
    }
}
