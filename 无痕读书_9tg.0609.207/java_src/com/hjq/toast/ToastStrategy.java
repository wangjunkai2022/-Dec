package com.hjq.toast;

import android.app.AppOpsManager;
import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;
import androidx.core.app.NotificationManagerCompat;
import java.lang.reflect.InvocationTargetException;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
/* loaded from: classes8.dex */
public class ToastStrategy extends Handler implements IToastStrategy {
    public static final int DELAY_TIMEOUT = 200;
    public static final int MAX_TOAST_CAPACITY = 3;
    public static final int TYPE_CANCEL = 3;
    public static final int TYPE_CONTINUE = 2;
    public static final int TYPE_SHOW = 1;
    public volatile Queue<CharSequence> mQueue;
    public volatile boolean mShow;
    public Toast mToast;

    public ToastStrategy() {
        super(Looper.getMainLooper());
        this.mQueue = getToastQueue();
    }

    public static boolean areNotificationsEnabled(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((NotificationManager) context.getSystemService(NotificationManager.class)).areNotificationsEnabled();
        }
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        try {
            return ((Integer) appOpsManager.getClass().getMethod(NotificationManagerCompat.CHECK_OP_NO_THROW, Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) appOpsManager.getClass().getDeclaredField(NotificationManagerCompat.OP_POST_NOTIFICATION).get(Integer.class)).intValue()), Integer.valueOf(context.getApplicationInfo().uid), context.getPackageName())).intValue() == 0;
        } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    @Override // com.hjq.toast.IToastStrategy
    public void bind(Toast toast) {
        this.mToast = toast;
    }

    @Override // com.hjq.toast.IToastStrategy
    public void cancel() {
        if (this.mShow) {
            this.mShow = false;
            sendEmptyMessage(3);
        }
    }

    @Override // com.hjq.toast.IToastStrategy
    public Toast create(Application application) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            return new CustomToast(application);
        }
        if (i == 25) {
            return new SafeToast(application);
        }
        if (i >= 29 || areNotificationsEnabled(application) || "xiaomi".equals(Build.MANUFACTURER.toLowerCase())) {
            return new NormalToast(application);
        }
        return new CustomToast(application);
    }

    public int getToastDuration(CharSequence charSequence) {
        if (charSequence.length() > 20) {
            return IToastStrategy.LONG_DURATION_TIMEOUT;
        }
        return 2000;
    }

    public Queue<CharSequence> getToastQueue() {
        return new ArrayBlockingQueue(3);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            CharSequence peek = this.mQueue.peek();
            if (peek != null) {
                this.mToast.setText(peek);
                this.mToast.show();
                sendEmptyMessageDelayed(2, getToastDuration(peek) + 200);
                return;
            }
            this.mShow = false;
        } else if (i != 2) {
            if (i != 3) {
                return;
            }
            this.mShow = false;
            this.mQueue.clear();
            this.mToast.cancel();
        } else {
            this.mQueue.poll();
            if (!this.mQueue.isEmpty()) {
                sendEmptyMessage(1);
            } else {
                this.mShow = false;
            }
        }
    }

    @Override // com.hjq.toast.IToastStrategy
    public void show(CharSequence charSequence) {
        if ((this.mQueue.isEmpty() || !this.mQueue.contains(charSequence)) && !this.mQueue.offer(charSequence)) {
            this.mQueue.poll();
            this.mQueue.offer(charSequence);
        }
        if (this.mShow) {
            return;
        }
        this.mShow = true;
        sendEmptyMessageDelayed(1, 200L);
    }
}
