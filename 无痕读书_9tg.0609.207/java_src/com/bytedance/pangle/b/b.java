package com.bytedance.pangle.b;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class b {
    public static String b = "request_finish";
    public static String c = "download_start";
    public static String d = "download_finish";
    public static String e = "install_start";
    public static String f = "install_finish";
    public static String g = "load_start";
    public static String h = "load_finish";
    public static volatile b i;

    /* renamed from: a  reason: collision with root package name */
    public final List<com.bytedance.pangle.b.a> f11292a = new ArrayList();

    /* loaded from: classes8.dex */
    public static class a {
        public static int A = 41000;
        public static int B = 42000;

        /* renamed from: a  reason: collision with root package name */
        public static int f11293a = 12000;
        public static int b = 12001;
        public static int c = 12002;
        public static int d = 12003;
        public static int e = 12004;
        public static int f = 20000;
        public static int g = 21000;
        public static int h = 21001;
        public static int i = 21002;
        public static int j = 22000;
        public static int k = 22001;
        public static int l = 22002;
        public static int m = 22999;
        public static int n = 30000;
        public static int o = 31000;
        public static int p = 32000;
        public static int q = 32001;
        public static int r = 32002;
        public static int s = 32003;
        public static int t = 32004;
        public static int u = 32005;
        public static int v = 32006;
        public static int w = 32007;
        public static int x = 32008;
        public static int y = 32999;
        public static int z = 40000;
    }

    public static b a() {
        if (i == null) {
            synchronized (b.class) {
                i = new b();
            }
        }
        return i;
    }

    public final void a(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        synchronized (this.f11292a) {
            for (com.bytedance.pangle.b.a aVar : this.f11292a) {
                aVar.a(str, jSONObject, jSONObject2, jSONObject3);
            }
        }
    }
}
