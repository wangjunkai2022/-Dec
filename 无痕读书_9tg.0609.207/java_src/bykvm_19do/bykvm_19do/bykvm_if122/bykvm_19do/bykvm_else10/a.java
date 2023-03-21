package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: CommonPermissionUtils.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, InterfaceC0040a> f10881a = Collections.synchronizedMap(new HashMap());

    /* compiled from: CommonPermissionUtils.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0040a {
        void a();

        void a(String str);
    }

    public static void a(String str) {
        InterfaceC0040a b;
        if (TextUtils.isEmpty(str) || (b = b(str)) == null) {
            return;
        }
        b.a();
    }

    public static InterfaceC0040a b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return f10881a.remove(str);
    }

    public static void a(String str, String str2) {
        InterfaceC0040a b;
        if (TextUtils.isEmpty(str) || (b = b(str)) == null) {
            return;
        }
        b.a(str2);
    }
}
