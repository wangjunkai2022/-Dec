package a.e.a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.baidu.tts.client.SpeechSynthesizer;
import com.qq.e.comm.pi.ACTD;
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static Context f10602a;
    public static boolean b;
    public static c c;
    public static c d;
    public static c e;
    public static Object f = new Object();
    public static HandlerThread g;
    public static Handler h;
    public static String i;
    public static String j;
    public static String k;
    public static volatile b l;
    public static volatile a.e.a.a m;

    /* loaded from: classes8.dex */
    public static class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 11) {
                int i = message.getData().getInt("type");
                try {
                    String a2 = b.m.a(i, message.getData().getString(ACTD.APPID_KEY));
                    if (i == 0) {
                        b.i = a2;
                    } else if (i != 1) {
                        if (i == 2 && a2 != null) {
                            b.k = a2;
                        }
                    } else if (a2 != null) {
                        b.j = a2;
                    }
                } catch (Exception e) {
                    e.toString();
                }
                synchronized (b.f) {
                    b.f.notify();
                }
            }
        }
    }

    public b() {
        a();
        m = new a.e.a.a(f10602a);
    }

    public static b a(Context context) {
        if (b()) {
            if (f10602a == null) {
                if (context == null) {
                    return null;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                f10602a = context;
            }
            if (l == null) {
                synchronized (b.class) {
                    if (l == null) {
                        l = new b();
                    }
                }
            }
            return l;
        }
        return null;
    }

    public static void a() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        g = handlerThread;
        handlerThread.start();
        h = new a(g.getLooper());
    }

    public static synchronized void a(Context context, int i2, String str) {
        ContentResolver contentResolver;
        Uri parse;
        c cVar;
        synchronized (b.class) {
            String packageName = context.getPackageName();
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2 && e == null) {
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 29) {
                            e = new c(l, 2, packageName);
                            contentResolver = context.getContentResolver();
                            parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/" + packageName);
                            cVar = e;
                        } else if (i3 == 28) {
                            e = new c(l, 2, str);
                            contentResolver = context.getContentResolver();
                            parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str);
                            cVar = e;
                        }
                        contentResolver.registerContentObserver(parse, false, cVar);
                    }
                } else if (d == null) {
                    int i4 = Build.VERSION.SDK_INT;
                    if (i4 >= 29) {
                        d = new c(l, 1, packageName);
                        contentResolver = context.getContentResolver();
                        parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + packageName);
                        cVar = d;
                    } else if (i4 == 28) {
                        d = new c(l, 1, str);
                        contentResolver = context.getContentResolver();
                        parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str);
                        cVar = d;
                    }
                    contentResolver.registerContentObserver(parse, false, cVar);
                }
            } else if (c == null) {
                c = new c(l, 0, null);
                context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, c);
            }
        }
    }

    public static boolean b() {
        String str = SpeechSynthesizer.REQUEST_DNS_OFF;
        if (!b && Build.VERSION.SDK_INT >= 28) {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                str = (String) cls.getMethod("get", String.class, String.class).invoke(cls, "persist.sys.identifierid.supported", SpeechSynthesizer.REQUEST_DNS_OFF);
            } catch (Throwable unused) {
            }
            b = "1".equals(str);
        }
        return b;
    }

    public final void a(int i2, String str) {
        synchronized (f) {
            b(i2, str);
            SystemClock.uptimeMillis();
            try {
                f.wait(ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            } catch (InterruptedException unused) {
            }
            SystemClock.uptimeMillis();
        }
    }

    public void b(int i2, String str) {
        Message obtainMessage = h.obtainMessage();
        obtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i2);
        if (i2 == 1 || i2 == 2) {
            bundle.putString(ACTD.APPID_KEY, str);
        }
        obtainMessage.setData(bundle);
        h.sendMessage(obtainMessage);
    }
}
