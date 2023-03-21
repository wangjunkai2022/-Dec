package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import com.apk.Cgoto;

/* compiled from: AdnLoadFailShowBean.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f10848a;
    public String b;
    public long c;

    public a(String str, String str2, long j) {
        this.f10848a = str2;
        this.b = str;
        this.c = j;
    }

    public long a() {
        return this.c;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("AdnLoadFailShowBean{slotId='");
        Cgoto.m987abstract(m1016super, this.f10848a, '\'', ", adnName='");
        Cgoto.m987abstract(m1016super, this.b, '\'', ", effectiveTime=");
        m1016super.append(this.c);
        m1016super.append('}');
        return m1016super.toString();
    }
}
