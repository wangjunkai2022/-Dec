package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.b0;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: PermissionsManager.java */
/* loaded from: classes8.dex */
public class e {
    public static final String d = "e";
    public static e e;

    /* renamed from: a  reason: collision with root package name */
    public final Set<String> f10884a = new HashSet(1);
    public final List<WeakReference<f>> b = new ArrayList(1);
    public final List<f> c = new ArrayList(1);

    public e() {
        b();
    }

    public static e a() {
        if (e == null) {
            e = new e();
        }
        return e;
    }

    private synchronized void b() {
        for (Field field : Manifest.permission.class.getFields()) {
            String str = null;
            try {
                str = (String) field.get("");
            } catch (IllegalAccessException unused) {
            }
            this.f10884a.add(str);
        }
    }

    @NonNull
    private List<String> c(@NonNull Activity activity, @NonNull String[] strArr, @Nullable f fVar) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (this.f10884a.contains(str)) {
                if (!a(activity, str)) {
                    arrayList.add(str);
                } else if (fVar != null) {
                    fVar.a(str, d.GRANTED);
                }
            } else if (fVar != null) {
                fVar.a(str, d.NOT_FOUND);
            }
        }
        return arrayList;
    }

    private synchronized void a(@NonNull String[] strArr, @Nullable f fVar) {
        if (fVar == null) {
            return;
        }
        fVar.a(strArr);
        this.c.add(fVar);
        this.b.add(new WeakReference<>(fVar));
    }

    private void b(@NonNull Activity activity, @NonNull String[] strArr, @Nullable f fVar) {
        boolean a2;
        for (String str : strArr) {
            if (fVar != null) {
                try {
                    if (!this.f10884a.contains(str)) {
                        a2 = fVar.a(str, d.NOT_FOUND);
                    } else if (c.a(activity, str) != 0) {
                        a2 = fVar.a(str, d.DENIED);
                    } else {
                        a2 = fVar.a(str, d.GRANTED);
                    }
                    if (a2) {
                        break;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        a(fVar);
    }

    private synchronized void a(@Nullable f fVar) {
        Iterator<WeakReference<f>> it = this.b.iterator();
        while (it.hasNext()) {
            WeakReference<f> next = it.next();
            if (next.get() == fVar || next.get() == null) {
                it.remove();
            }
        }
        Iterator<f> it2 = this.c.iterator();
        while (it2.hasNext()) {
            if (it2.next() == fVar) {
                it2.remove();
            }
        }
    }

    public synchronized boolean a(@Nullable Context context, @NonNull String str) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (b0.t()) {
            if (b.b(context, str) && (c.a(context, str) == 0 || !this.f10884a.contains(str))) {
                z = true;
            }
            return z;
        }
        return (c.a(context, str) == 0 || !this.f10884a.contains(str)) ? true : true;
    }

    public synchronized void a(@Nullable Activity activity, @NonNull String[] strArr, @Nullable f fVar) {
        if (activity == null) {
            return;
        }
        try {
            a(strArr, fVar);
            if (Build.VERSION.SDK_INT < 23) {
                b(activity, strArr, fVar);
            } else {
                List<String> c = c(activity, strArr, fVar);
                if (c.isEmpty()) {
                    a(fVar);
                } else {
                    c.a(activity, (String[]) c.toArray(new String[c.size()]), 1);
                }
            }
        } finally {
        }
    }

    public synchronized void a(@NonNull Activity activity, @NonNull String[] strArr, @NonNull int[] iArr) {
        try {
            new ArrayList(3);
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                String str = strArr[i];
                if ((iArr[i] == -1 || (b0.t() && !b.b(activity, str))) && iArr[i] != -1) {
                    iArr[i] = -1;
                }
            }
            a(strArr, iArr, (String[]) null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(@NonNull String[] strArr, @NonNull int[] iArr, String[] strArr2) {
        int i;
        try {
            int length = strArr.length;
            if (iArr.length < length) {
                length = iArr.length;
            }
            Iterator<WeakReference<f>> it = this.b.iterator();
            while (it.hasNext()) {
                f fVar = it.next().get();
                while (i < length) {
                    i = (fVar == null || fVar.a(strArr[i], iArr[i])) ? 0 : i + 1;
                    it.remove();
                    break;
                }
            }
            Iterator<f> it2 = this.c.iterator();
            while (it2.hasNext()) {
                it2.next();
                it2.remove();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
