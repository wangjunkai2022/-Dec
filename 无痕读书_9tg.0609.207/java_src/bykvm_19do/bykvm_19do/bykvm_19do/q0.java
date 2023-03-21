package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes8.dex */
public final class q0 {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicBoolean f10642a = new AtomicBoolean(false);
    public static String b = "";

    public static String a(SharedPreferences sharedPreferences) {
        if (f10642a.compareAndSet(false, true)) {
            String string = sharedPreferences.getString("cdid", "");
            b = string;
            if (TextUtils.isEmpty(string)) {
                b = UUID.randomUUID().toString();
                sharedPreferences.edit().putString("cdid", b).apply();
            }
        }
        return b;
    }
}
