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
/* compiled from: AdBaseView.java */
/* renamed from: com.apk.strictfp  reason: invalid class name */
/* loaded from: classes8.dex */
public abstract class Cstrictfp extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public int f4590do;

    /* renamed from: for  reason: not valid java name */
    public boolean f4591for;

    /* renamed from: if  reason: not valid java name */
    public int f4592if;

    /* compiled from: AdBaseView.java */
    /* renamed from: com.apk.strictfp$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends Handler {

        /* renamed from: do  reason: not valid java name */
        public final WeakReference<Cstrictfp> f4593do;

        public Cdo(Cstrictfp cstrictfp) {
            super(Looper.getMainLooper());
            this.f4593do = new WeakReference<>(cstrictfp);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<Cstrictfp> weakReference = this.f4593do;
            if (weakReference != null) {
                try {
                    if (message.what != 102 || weakReference.get() == null) {
                        return;
                    }
                    this.f4593do.get().mo139do();
                } catch (Exception unused) {
                }
            }
        }
    }

    public Cstrictfp(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4591for = true;
    }

    /* renamed from: do */
    public abstract void mo139do();

    public void setAdHeight(int i) {
        this.f4592if = i;
    }

    public void setAdWidth(int i) {
        this.f4590do = i;
    }

    public void setAutoRefresh(boolean z) {
        this.f4591for = z;
    }

    public Cstrictfp(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4591for = true;
    }
}
