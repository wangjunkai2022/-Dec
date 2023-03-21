package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import com.apk.Cgoto;

/* compiled from: AdEventUploadResult.java */
/* loaded from: classes8.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f10958a;
    public final int b;
    public final String c;
    public final boolean d;

    public g(boolean z, int i, String str, boolean z2) {
        this.f10958a = z;
        this.b = i;
        this.c = str;
        this.d = z2;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("AdEventUploadResult{mSuccess=");
        m1016super.append(this.f10958a);
        m1016super.append(", mStatusCode=");
        m1016super.append(this.b);
        m1016super.append(", mMsg='");
        Cgoto.m987abstract(m1016super, this.c, '\'', ", mIsDataError=");
        m1016super.append(this.d);
        m1016super.append('}');
        return m1016super.toString();
    }
}
