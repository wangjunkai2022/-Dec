package com.hjq.toast;

import android.app.Application;
import android.widget.Toast;
/* loaded from: classes8.dex */
public interface IToastStrategy {
    public static final int LONG_DURATION_TIMEOUT = 3500;
    public static final int SHORT_DURATION_TIMEOUT = 2000;

    void bind(Toast toast);

    void cancel();

    Toast create(Application application);

    void show(CharSequence charSequence);
}
