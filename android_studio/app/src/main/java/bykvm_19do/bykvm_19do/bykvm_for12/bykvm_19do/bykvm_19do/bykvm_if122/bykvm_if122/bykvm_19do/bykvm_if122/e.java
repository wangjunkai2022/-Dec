package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: RouteException.java */
/* loaded from: classes8.dex */
public final class e extends RuntimeException {
    public static final Method b;

    /* renamed from: a  reason: collision with root package name */
    public IOException f10727a;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
            method = null;
        }
        b = method;
    }

    public e(IOException iOException) {
        super(iOException);
        this.f10727a = iOException;
    }

    public IOException a() {
        return this.f10727a;
    }

    public void a(IOException iOException) {
        a(iOException, this.f10727a);
        this.f10727a = iOException;
    }

    private void a(IOException iOException, IOException iOException2) {
        Method method = b;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }
}
