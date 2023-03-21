package com.apk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
/* compiled from: TrAdBaseView.java */
/* loaded from: classes7.dex */
public abstract class v90 extends FrameLayout {

    /* compiled from: TrAdBaseView.java */
    /* renamed from: com.apk.v90$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends Handler {

        /* renamed from: do  reason: not valid java name */
        public final WeakReference<v90> f5056do;

        public Cdo(v90 v90Var) {
            super(Looper.getMainLooper());
            this.f5056do = new WeakReference<>(v90Var);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<v90> weakReference = this.f5056do;
            if (weakReference != null) {
                try {
                    if (message.what != 102 || weakReference.get() == null) {
                        return;
                    }
                    this.f5056do.get().mo2788do();
                } catch (Exception unused) {
                }
            }
        }
    }

    public v90(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: do  reason: not valid java name */
    public abstract void mo2788do();

    public v90(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
