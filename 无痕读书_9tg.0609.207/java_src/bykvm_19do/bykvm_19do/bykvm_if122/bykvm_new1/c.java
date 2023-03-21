package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.Context;
import android.content.Intent;
/* compiled from: ActivityUtil.java */
/* loaded from: classes8.dex */
public class c {

    /* compiled from: ActivityUtil.java */
    /* loaded from: classes8.dex */
    public interface a {
        void startActivityFail(Throwable th);

        void startActivitySuccess();
    }

    public static void a(Context context, Intent intent, a aVar) {
        if (context == null || intent == null) {
            return;
        }
        try {
            context.startActivity(intent);
            if (aVar != null) {
                aVar.startActivitySuccess();
            }
        } catch (Throwable th) {
            if (aVar != null) {
                aVar.startActivityFail(th);
            }
        }
    }
}
