package com.ss.android.socialbase.appdownloader.view;

import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.pangle.servermanager.AbsServerManager;
import com.google.android.material.internal.ManufacturerUtils;
import com.ss.android.socialbase.appdownloader.e.d;
import com.ss.android.socialbase.downloader.constants.e;
import com.ss.android.socialbase.downloader.downloader.c;

/* loaded from: classes7.dex */
public class a extends Fragment {
    public static Intent d() {
        return new Intent("android.settings.APPLICATION_SETTINGS");
    }

    private Context e() {
        Context N = c.N();
        return (N != null || getActivity() == null || getActivity().isFinishing()) ? N : getActivity().getApplicationContext();
    }

    private Intent f() {
        Context e = e();
        if (e == null) {
            return null;
        }
        Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        String packageName = e.getPackageName();
        intent.putExtra(AbsServerManager.PACKAGE_QUERY_BINDER, packageName);
        intent.putExtra("android.provider.extra.APP_PACKAGE", packageName);
        intent.putExtra("app_package", packageName);
        int i = e.getApplicationInfo().uid;
        intent.putExtra("uid", i);
        intent.putExtra("app_uid", i);
        return intent;
    }

    public void a() {
        try {
            try {
                try {
                    startActivityForResult(f(), 1000);
                } catch (Throwable unused) {
                    startActivityForResult(b(), 1000);
                }
            } catch (Throwable unused2) {
                startActivityForResult(d(), 1000);
            }
        } catch (Throwable unused3) {
            startActivityForResult(c(), 1000);
        }
    }

    public Intent b() {
        Context e = e();
        if (e == null) {
            return null;
        }
        String packageName = e.getPackageName();
        if (!TextUtils.isEmpty(Build.MANUFACTURER)) {
            String lowerCase = Build.MANUFACTURER.toLowerCase();
            if (lowerCase.contains(e.c)) {
                Intent intent = new Intent();
                intent.putExtra("packageName", packageName);
                intent.setComponent(new ComponentName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity"));
                return intent;
            } else if (lowerCase.contains("vivo")) {
                Intent intent2 = new Intent();
                intent2.putExtra("packagename", packageName);
                if (Build.VERSION.SDK_INT >= 25) {
                    intent2.setComponent(new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity"));
                } else {
                    intent2.setComponent(new ComponentName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity"));
                }
                return intent2;
            } else if (lowerCase.contains(ManufacturerUtils.MEIZU) && Build.VERSION.SDK_INT < 25) {
                Intent intent3 = new Intent("com.meizu.safe.security.SHOW_APPSEC");
                intent3.putExtra("packageName", packageName);
                intent3.setComponent(new ComponentName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity"));
                return intent3;
            }
        }
        StringBuilder m1016super = Cgoto.m1016super("package:");
        m1016super.append(e.getPackageName());
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse(m1016super.toString()));
    }

    public Intent c() {
        Context e = e();
        if (e == null) {
            return null;
        }
        StringBuilder m1016super = Cgoto.m1016super("package:");
        m1016super.append(e.getPackageName());
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse(m1016super.toString()));
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (d.a()) {
            d.a(true);
        } else {
            d.a(false);
        }
    }
}
