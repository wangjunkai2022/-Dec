package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108;

/* compiled from: Logger.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public EnumC0023b f10677a;
    public c b;

    /* compiled from: Logger.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public enum EnumC0023b {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* compiled from: Logger.java */
    /* loaded from: classes8.dex */
    public interface c {
        void a(String str, String str2);

        void b(String str, String str2);
    }

    /* compiled from: Logger.java */
    /* loaded from: classes8.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public static final b f10679a = new b();
    }

    public static void a(String str, String str2) {
        if (d.f10679a.f10677a.compareTo(EnumC0023b.DEBUG) <= 0) {
            d.f10679a.b.a(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (d.f10679a.f10677a.compareTo(EnumC0023b.ERROR) <= 0) {
            d.f10679a.b.b(str, str2);
        }
    }

    public b() {
        this.f10677a = EnumC0023b.OFF;
        this.b = new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.a();
    }
}
