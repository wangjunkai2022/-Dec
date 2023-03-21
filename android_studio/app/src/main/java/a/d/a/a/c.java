package a.d.a.a;

import com.apk.Cgoto;

/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public String f10599a;
    public int b;
    public long c = System.currentTimeMillis() + 86400000;

    public c(String str, int i) {
        this.f10599a = str;
        this.b = i;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("ValueData{value='");
        Cgoto.m987abstract(m1016super, this.f10599a, '\'', ", code=");
        m1016super.append(this.b);
        m1016super.append(", expired=");
        m1016super.append(this.c);
        m1016super.append('}');
        return m1016super.toString();
    }
}
