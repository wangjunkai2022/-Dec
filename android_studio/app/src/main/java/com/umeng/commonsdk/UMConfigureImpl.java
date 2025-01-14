package com.umeng.commonsdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.utils.onMessageSendListener;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes7.dex */
public class UMConfigureImpl {

    /* renamed from: a  reason: collision with root package name */
    public static String f12248a = "delayed_transmission_flag_new";
    public static final int e = 1000;
    public static ScheduledExecutorService f;
    public static Context g;
    public static CopyOnWriteArrayList<onMessageSendListener> b = new CopyOnWriteArrayList<>();
    public static int c = 0;
    public static boolean d = false;
    public static int h = 0;
    public static Runnable i = new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (UMConfigureImpl.c == 0 || UMConfigureImpl.h >= 10) {
                    if (!UMConfigureImpl.d) {
                        boolean unused = UMConfigureImpl.d = true;
                        UMConfigureImpl.b(UMConfigureImpl.g);
                    }
                    if (UMConfigureImpl.f != null) {
                        UMConfigureImpl.f.shutdown();
                        ScheduledExecutorService unused2 = UMConfigureImpl.f = null;
                    }
                }
                UMConfigureImpl.f();
            } catch (Exception unused3) {
            }
        }
    };

    public static /* synthetic */ int f() {
        int i2 = h;
        h = i2 + 1;
        return i2;
    }

    public static void init(Context context) {
        if (context == null) {
            return;
        }
        g = context;
        try {
            if (c >= 1) {
                if (!d(context)) {
                    UMEnvelopeBuild.setTransmissionSendFlag(false);
                    c(context);
                    if (f == null) {
                        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1);
                        f = newScheduledThreadPool;
                        newScheduledThreadPool.scheduleAtFixedRate(i, 0L, 100L, TimeUnit.MILLISECONDS);
                    }
                } else {
                    UMEnvelopeBuild.setTransmissionSendFlag(true);
                }
            } else {
                UMEnvelopeBuild.setTransmissionSendFlag(true);
            }
        } catch (Exception unused) {
        }
    }

    public static synchronized void registerInterruptFlag() {
        synchronized (UMConfigureImpl.class) {
            try {
                c++;
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void registerMessageSendListener(onMessageSendListener onmessagesendlistener) {
        synchronized (UMConfigureImpl.class) {
            try {
                if (b != null) {
                    b.add(onmessagesendlistener);
                }
                if (UMEnvelopeBuild.getTransmissionSendFlag() && b != null && b.size() > 0) {
                    Iterator<onMessageSendListener> it = b.iterator();
                    while (it.hasNext()) {
                        it.next().onMessageSend();
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void removeInterruptFlag() {
        synchronized (UMConfigureImpl.class) {
            try {
                c--;
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void removeMessageSendListener(onMessageSendListener onmessagesendlistener) {
        synchronized (UMConfigureImpl.class) {
            try {
                if (b != null) {
                    b.remove(onmessagesendlistener);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized void b(Context context) {
        synchronized (UMConfigureImpl.class) {
            try {
                UMEnvelopeBuild.setTransmissionSendFlag(true);
                if (b != null && b.size() > 0) {
                    Iterator<onMessageSendListener> it = b.iterator();
                    while (it.hasNext()) {
                        it.next().onMessageSend();
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void c(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f12248a, 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putBoolean(f12248a, true);
                edit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean d(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f12248a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(f12248a, false);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
