package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* compiled from: BatteryWatcher.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public int f11078a;

    /* compiled from: BatteryWatcher.java */
    /* loaded from: classes8.dex */
    public class b extends BroadcastReceiver {
        public b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    d.this.f11078a = (int) ((intent.getIntExtra("level", 0) * 100.0f) / intent.getIntExtra("scale", 100));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public d(Context context) {
        try {
            a(context);
        } catch (Throwable unused) {
        }
    }

    private void a(Context context) {
        context.registerReceiver(new b(), new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    public int a() {
        return this.f11078a;
    }
}
