package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_for12;

import com.apk.Cgoto;
import java.util.Map;
/* compiled from: TNCConfig.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public boolean f10668a = false;
    public boolean b = true;
    public Map<String, Integer> c = null;
    public Map<String, String> d = null;
    public int e = 10;
    public int f = 1;
    public int g = 1;
    public int h = 10;
    public int i = 1;
    public int j = 1;
    public int k = 900;
    public int l = 120;
    public String m = null;

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super(" localEnable: ");
        m1016super.append(this.f10668a);
        m1016super.append(" probeEnable: ");
        m1016super.append(this.b);
        m1016super.append(" hostFilter: ");
        Map<String, Integer> map = this.c;
        m1016super.append(map != null ? map.size() : 0);
        m1016super.append(" hostMap: ");
        Map<String, String> map2 = this.d;
        m1016super.append(map2 != null ? map2.size() : 0);
        m1016super.append(" reqTo: ");
        m1016super.append(this.e);
        m1016super.append("#");
        m1016super.append(this.f);
        m1016super.append("#");
        m1016super.append(this.g);
        m1016super.append(" reqErr: ");
        m1016super.append(this.h);
        m1016super.append("#");
        m1016super.append(this.i);
        m1016super.append("#");
        m1016super.append(this.j);
        m1016super.append(" updateInterval: ");
        m1016super.append(this.k);
        m1016super.append(" updateRandom: ");
        m1016super.append(this.l);
        m1016super.append(" httpBlack: ");
        m1016super.append(this.m);
        return m1016super.toString();
    }
}
