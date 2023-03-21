package com.bytedance.sdk.openadsdk.live;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.bytedance.android.live.base.api.ILiveHostContextParam;
import com.bytedance.android.live.base.api.ILiveInitCallback;
import com.bytedance.android.live.base.api.IOuterLiveRoomService;
import com.bytedance.android.openliveplugin.LivePluginHelper;
import com.bytedance.pangle.Zeus;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static SharedPreferences f11471a;

    public static boolean a(final Context context, final String str, final ILiveHostContextParam.Builder builder, final ILiveInitCallback iLiveInitCallback) {
        try {
            com.bytedance.sdk.openadsdk.b.a.a().a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.live.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LivePluginHelper.initLivePlugin((Application) context, str, builder, iLiveInitCallback);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static void b(long j) {
        if (f11471a == null) {
            f11471a = TTAppContextHolder.getContext().getSharedPreferences("csj_live", 0);
        }
        try {
            if (f11471a != null) {
                SharedPreferences.Editor edit = f11471a.edit();
                edit.putInt("live_init_" + j, 0);
                edit.commit();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean c(long j) {
        int i;
        if (f11471a == null) {
            f11471a = TTAppContextHolder.getContext().getSharedPreferences("csj_live", 0);
        }
        SharedPreferences sharedPreferences = f11471a;
        if (sharedPreferences != null) {
            i = sharedPreferences.getInt("live_init_" + j, 0);
        } else {
            i = 0;
        }
        return i < 5;
    }

    public static void d(long j) {
        try {
            Zeus.unInstallPlugin("com.byted.live.lite");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        b(j);
    }

    public static boolean a() {
        try {
            com.bytedance.sdk.openadsdk.b.a.a().a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.live.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LivePluginHelper.initLiveCommerce();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, Bundle bundle) {
        if (context != null && bundle != null && bundle.containsKey(TTLiveConstants.ROOMID_KEY)) {
            long j = bundle.getLong(TTLiveConstants.ROOMID_KEY);
            try {
                IOuterLiveRoomService liveRoomService = LivePluginHelper.getLiveRoomService();
                if (liveRoomService != null) {
                    liveRoomService.enterLiveRoom(context, j, bundle);
                    return true;
                }
                return false;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public static void a(long j) {
        if (f11471a == null) {
            f11471a = TTAppContextHolder.getContext().getSharedPreferences("csj_live", 0);
        }
        try {
            if (f11471a != null) {
                SharedPreferences sharedPreferences = f11471a;
                int i = sharedPreferences.getInt("live_init_" + j, 0);
                SharedPreferences.Editor edit = f11471a.edit();
                edit.putInt("live_init_" + j, i + 1);
                edit.commit();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
