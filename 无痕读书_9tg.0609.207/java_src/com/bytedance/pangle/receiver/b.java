package com.bytedance.pangle.receiver;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.h;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final c f11359a;

    /* loaded from: classes8.dex */
    public static class a implements c {
        public a() {
        }

        public static Object b(Context context) {
            Field field;
            Object readField;
            try {
                Field field2 = FieldUtils.getField(Class.forName("android.app.LoadedApk"), "mReceiverResource");
                if (field2 == null || (field = FieldUtils.getField(Class.forName("android.app.ContextImpl"), "mPackageInfo")) == null || (readField = FieldUtils.readField(field, context)) == null) {
                    return null;
                }
                return FieldUtils.readField(field2, readField);
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override // com.bytedance.pangle.receiver.b.c
        public boolean a(Context context) {
            Object b = b(context);
            Object a2 = a(b, "mWhiteList");
            if (!(a2 instanceof String[])) {
                if (b != null) {
                    FieldUtils.writeField(b, "mResourceConfig", (Object) null);
                    return false;
                }
                return false;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(context.getPackageName());
            Collections.addAll(arrayList, (String[]) a2);
            FieldUtils.writeField(b, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
            return true;
        }

        public /* synthetic */ a(byte b) {
            this();
        }

        public static Object a(Context context, String str) {
            return a(b(context), str);
        }

        public static Object a(Object obj, String str) {
            if (obj != null) {
                try {
                    return FieldUtils.readField(obj, str);
                } catch (Throwable unused) {
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: com.bytedance.pangle.receiver.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class C0118b extends e {
        public C0118b() {
            super((byte) 0);
        }

        @Override // com.bytedance.pangle.receiver.b.e, com.bytedance.pangle.receiver.b.a, com.bytedance.pangle.receiver.b.c
        public final boolean a(Context context) {
            return false;
        }

        public /* synthetic */ C0118b(byte b) {
            this();
        }
    }

    /* loaded from: classes8.dex */
    public interface c {
        boolean a(Context context);
    }

    /* loaded from: classes8.dex */
    public static class d extends a {
        public d() {
            super((byte) 0);
        }

        @Override // com.bytedance.pangle.receiver.b.a, com.bytedance.pangle.receiver.b.c
        public final boolean a(Context context) {
            Object a2 = a.a(context, "mWhiteList");
            if (a2 instanceof List) {
                ((List) a2).add(context.getPackageName());
                return true;
            }
            return false;
        }

        public /* synthetic */ d(byte b) {
            this();
        }
    }

    /* loaded from: classes8.dex */
    public static class e extends a {
        public e() {
            super((byte) 0);
        }

        @Override // com.bytedance.pangle.receiver.b.a, com.bytedance.pangle.receiver.b.c
        public boolean a(Context context) {
            Object a2 = a.a(context, "mWhiteListMap");
            if (a2 instanceof Map) {
                Map map = (Map) a2;
                List list = (List) map.get(0);
                if (list == null) {
                    list = new ArrayList();
                    map.put(0, list);
                }
                list.add(context.getPackageName());
                return true;
            }
            return false;
        }

        public /* synthetic */ e(byte b) {
            this();
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i < 24) {
            f11359a = new a((byte) 0);
        } else if (i < 26) {
            f11359a = new d((byte) 0);
        } else if (i < 28) {
            f11359a = new e((byte) 0);
        } else {
            f11359a = new C0118b((byte) 0);
        }
    }

    public static void a(Application application) {
        if (application != null) {
            try {
                if (h.f()) {
                    f11359a.a(application.getBaseContext());
                }
            } catch (Throwable unused) {
            }
        }
    }
}
