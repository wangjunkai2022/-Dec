package com.hjq.toast;

import android.widget.Toast;
/* loaded from: classes8.dex */
public class ToastInterceptor implements IToastInterceptor {
    @Override // com.hjq.toast.IToastInterceptor
    public boolean intercept(Toast toast, CharSequence charSequence) {
        return charSequence == null || "".equals(charSequence.toString());
    }
}
