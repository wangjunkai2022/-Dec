package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do;

/* compiled from: Logger.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public EnumC0019b f10658a;

    /* compiled from: Logger.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public enum EnumC0019b {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* compiled from: Logger.java */
    /* loaded from: classes8.dex */
    public interface c {
    }

    /* compiled from: Logger.java */
    /* loaded from: classes8.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public static final b f10660a = new b();
    }

    public static void a(EnumC0019b enumC0019b) {
        synchronized (b.class) {
            d.f10660a.f10658a = enumC0019b;
        }
    }

    public b() {
        EnumC0019b enumC0019b = EnumC0019b.OFF;
        new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.a();
    }
}
