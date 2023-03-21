package com.apk;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.baidu.tts.client.SpeechSynthesizer;
import com.qq.e.comm.pi.ACTD;
/* compiled from: IdentifierIdClient.java */
/* loaded from: classes7.dex */
public class tp0 {

    /* renamed from: break  reason: not valid java name */
    public static volatile rp0 f4742break;

    /* renamed from: case  reason: not valid java name */
    public static Handler f4743case;

    /* renamed from: do  reason: not valid java name */
    public static Context f4744do;

    /* renamed from: else  reason: not valid java name */
    public static String f4745else;

    /* renamed from: for  reason: not valid java name */
    public static up0 f4746for;

    /* renamed from: goto  reason: not valid java name */
    public static String f4747goto;

    /* renamed from: if  reason: not valid java name */
    public static boolean f4748if;

    /* renamed from: new  reason: not valid java name */
    public static Object f4749new = new Object();

    /* renamed from: this  reason: not valid java name */
    public static volatile tp0 f4750this;

    /* renamed from: try  reason: not valid java name */
    public static HandlerThread f4751try;

    /* renamed from: do  reason: not valid java name */
    public static tp0 m2610do(Context context) {
        if (f4750this == null) {
            synchronized (tp0.class) {
                f4744do = context.getApplicationContext();
                f4750this = new tp0();
            }
        }
        if (f4742break == null) {
            synchronized (tp0.class) {
                f4744do = context.getApplicationContext();
                HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
                f4751try = handlerThread;
                handlerThread.start();
                f4743case = new sp0(f4751try.getLooper());
                f4742break = new rp0(f4744do);
                m2611for();
            }
        }
        return f4750this;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2611for() {
        String str;
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "persist.sys.identifierid.supported", "unknown");
            } catch (Exception e) {
                e.printStackTrace();
                str = SpeechSynthesizer.REQUEST_DNS_OFF;
                f4748if = "1".equals(str);
            }
        } catch (Throwable unused) {
            str = SpeechSynthesizer.REQUEST_DNS_OFF;
            f4748if = "1".equals(str);
        }
        f4748if = "1".equals(str);
    }

    /* renamed from: if  reason: not valid java name */
    public void m2612if(int i, String str) {
        synchronized (f4749new) {
            Message obtainMessage = f4743case.obtainMessage();
            obtainMessage.what = 11;
            Bundle bundle = new Bundle();
            bundle.putInt("type", i);
            if (i == 1 || i == 2) {
                bundle.putString(ACTD.APPID_KEY, str);
            }
            obtainMessage.setData(bundle);
            f4743case.sendMessage(obtainMessage);
            long uptimeMillis = SystemClock.uptimeMillis();
            try {
                f4749new.wait(ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (SystemClock.uptimeMillis() - uptimeMillis < ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS) {
                if (i == 0) {
                    f4747goto = f4745else;
                    f4745else = null;
                } else if (i != 1) {
                    if (i != 2) {
                        if (i != 4) {
                        }
                    } else if (f4745else != null) {
                        f4745else = null;
                    }
                    f4745else = null;
                } else if (f4745else != null) {
                    f4745else = null;
                }
            }
        }
    }
}
