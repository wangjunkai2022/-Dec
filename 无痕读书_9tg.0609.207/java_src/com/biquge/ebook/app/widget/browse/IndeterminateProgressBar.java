package com.biquge.ebook.app.widget.browse;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import com.apk.kh;
import java.lang.ref.WeakReference;
import java.util.Random;
/* loaded from: classes8.dex */
public class IndeterminateProgressBar extends kh {

    /* renamed from: continue  reason: not valid java name */
    public Cdo f8298continue;

    /* renamed from: com.biquge.ebook.app.widget.browse.IndeterminateProgressBar$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends Handler {

        /* renamed from: do  reason: not valid java name */
        public int f8299do;

        /* renamed from: for  reason: not valid java name */
        public final WeakReference<IndeterminateProgressBar> f8300for;

        /* renamed from: if  reason: not valid java name */
        public final Random f8301if;

        public Cdo(IndeterminateProgressBar indeterminateProgressBar) {
            super(Looper.getMainLooper());
            this.f8300for = new WeakReference<>(indeterminateProgressBar);
            this.f8301if = new Random();
        }

        /* renamed from: do  reason: not valid java name */
        public final void m3531do() {
            Message obtainMessage = obtainMessage();
            obtainMessage.what = 102;
            sendMessageDelayed(obtainMessage, this.f8301if.nextInt(500) + 200);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<IndeterminateProgressBar> weakReference = this.f8300for;
            if (weakReference != null) {
                try {
                    if (message.what == 101) {
                        if (weakReference.get() != null) {
                            this.f8299do = 10;
                            if (this.f8300for.get() != null) {
                                this.f8300for.get().setProgress(this.f8299do);
                            }
                            m3531do();
                        }
                    } else if (message.what == 102) {
                        if (weakReference.get() != null) {
                            this.f8299do += 10;
                            this.f8300for.get().setProgress(this.f8299do);
                            if (this.f8299do <= 80) {
                                m3531do();
                            }
                        }
                    } else if (message.what == 103) {
                        this.f8299do = 100;
                        if (weakReference.get() != null) {
                            this.f8300for.get().setProgress(this.f8299do);
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public IndeterminateProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8298continue = new Cdo(this);
    }

    /* renamed from: new  reason: not valid java name */
    public void m3530new() {
        Message obtainMessage = this.f8298continue.obtainMessage();
        obtainMessage.what = 103;
        this.f8298continue.sendMessage(obtainMessage);
        setVisibility(8);
    }
}
