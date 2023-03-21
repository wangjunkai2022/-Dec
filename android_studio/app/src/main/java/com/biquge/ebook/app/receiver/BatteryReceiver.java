package com.biquge.ebook.app.receiver;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.apk.eg;
import com.apk.f1;
import com.apk.kg;
import com.apk.p0;
import com.biquge.ebook.app.app.AppContext;
import com.hjq.toast.ToastUtils;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BatteryReceiver extends BroadcastReceiver {

    /* renamed from: do  reason: not valid java name */
    public int f6415do;

    /* renamed from: for  reason: not valid java name */
    public f1 f6416for;

    /* renamed from: if  reason: not valid java name */
    public String f6417if;

    public BatteryReceiver() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.BATTERY_CHANGED".equals(action)) {
            try {
                int intExtra = intent.getIntExtra("level", -1);
                int intExtra2 = intent.getIntExtra("scale", -1);
                if (intExtra != -1 && intExtra2 != -1) {
                    try {
                        int i = (intExtra * 100) / intExtra2;
                        if (this.f6415do != i) {
                            this.f6415do = i;
                            p0.m2011super("battery_broadcast_value_action", Integer.valueOf(i));
                            f1 f1Var = this.f6416for;
                            if (f1Var != null) {
                                f1Var.mo746interface();
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if ("android.intent.action.TIME_TICK".equals(action)) {
            try {
                if (kg.m1499new().equals(this.f6417if)) {
                    return;
                }
                this.f6417if = kg.m1499new();
                f1 f1Var2 = this.f6416for;
                if (f1Var2 != null) {
                    f1Var2.mo746interface();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else {
            boolean z = false;
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) AppContext.f6392case.getSystemService("activity")).getRunningAppProcesses();
                if (runningAppProcesses != null && runningAppProcesses.size() != 0) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningAppProcessInfo next = it.next();
                        if (next.importance == 100) {
                            z = next.processName.equals(AppContext.f6392case.getPackageName());
                            break;
                        }
                    }
                }
                if (!z || eg.m600implements()) {
                    return;
                }
                ToastUtils.show((int) R.string.app_network_change_txt);
            } else if ("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED".equals(action)) {
                intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", 0);
            } else if (action.equals("android.intent.action.HEADSET_PLUG") && intent.hasExtra("state") && intent.getIntExtra("state", 2) != 0) {
                intent.getIntExtra("state", 2);
            }
        }
    }

    public BatteryReceiver(f1 f1Var) {
        this.f6416for = f1Var;
    }
}
