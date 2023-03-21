package com.bytedance.msdk.api;

import android.content.Context;
import android.widget.Toast;
/* loaded from: classes8.dex */
public final class TToast {

    /* renamed from: do  reason: not valid java name */
    public static Toast f8960do;

    public static void reset() {
        f8960do = null;
    }

    public static void show(Context context, String str) {
        show(context, str, 0);
    }

    public static void show(Context context, String str, int i) {
        Toast makeText;
        if (context == null) {
            makeText = f8960do;
        } else {
            makeText = Toast.makeText(context.getApplicationContext(), "", 0);
            f8960do = makeText;
        }
        if (makeText != null) {
            makeText.setDuration(i);
            makeText.setText(String.valueOf(str));
            makeText.show();
            return;
        }
        String.valueOf(str);
    }
}
