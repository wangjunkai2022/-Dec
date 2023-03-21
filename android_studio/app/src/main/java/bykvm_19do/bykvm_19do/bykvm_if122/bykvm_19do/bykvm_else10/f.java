package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: PermissionsResultAction.java */
/* loaded from: classes8.dex */
public abstract class f {
    public static final String c = "f";

    /* renamed from: a  reason: collision with root package name */
    public final Set<String> f10885a;
    public Looper b;

    /* compiled from: PermissionsResultAction.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.onGranted();
        }
    }

    /* compiled from: PermissionsResultAction.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10887a;

        public b(String str) {
            this.f10887a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.onDenied(this.f10887a);
        }
    }

    /* compiled from: PermissionsResultAction.java */
    /* loaded from: classes8.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.onGranted();
        }
    }

    /* compiled from: PermissionsResultAction.java */
    /* loaded from: classes8.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10889a;

        public d(String str) {
            this.f10889a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.onDenied(this.f10889a);
        }
    }

    /* compiled from: PermissionsResultAction.java */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f10890a;

        static {
            int[] iArr = new int[bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d.values().length];
            f10890a = iArr;
            try {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d dVar = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d.GRANTED;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f10890a;
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d dVar2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d.DENIED;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f10890a;
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d dVar3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d.NOT_FOUND;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public f() {
        this.f10885a = new HashSet(1);
        this.b = Looper.getMainLooper();
    }

    public final synchronized boolean a(@NonNull String str, int i) {
        if (i == 0) {
            return a(str, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d.GRANTED);
        }
        return a(str, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d.DENIED);
    }

    public abstract void onDenied(String str);

    public abstract void onGranted();

    public synchronized boolean shouldIgnorePermissionNotFound(String str) {
        return true;
    }

    public final synchronized boolean a(@NonNull String str, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.d dVar) {
        this.f10885a.remove(str);
        int i = e.f10890a[dVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                new Handler(this.b).post(new b(str));
                return true;
            } else if (i == 3) {
                if (shouldIgnorePermissionNotFound(str)) {
                    if (this.f10885a.isEmpty()) {
                        new Handler(this.b).post(new c());
                        return true;
                    }
                } else {
                    new Handler(this.b).post(new d(str));
                    return true;
                }
            }
        } else if (this.f10885a.isEmpty()) {
            new Handler(this.b).post(new a());
            return true;
        }
        return false;
    }

    public f(@NonNull Looper looper) {
        this.f10885a = new HashSet(1);
        this.b = Looper.getMainLooper();
        this.b = looper;
    }

    public final synchronized void a(@NonNull String[] strArr) {
        Collections.addAll(this.f10885a, strArr);
    }
}
