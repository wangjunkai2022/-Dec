package com.apk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.SparseArray;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: PermissionFragment.java */
/* loaded from: classes8.dex */
public final class xu extends Fragment implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public boolean f5808do;

    /* renamed from: if  reason: not valid java name */
    public static final Handler f5807if = new Handler(Looper.getMainLooper());

    /* renamed from: for  reason: not valid java name */
    public static SparseArray<SoftReference<vu>> f5806for = new SparseArray<>();

    /* renamed from: do  reason: not valid java name */
    public void m3050do() {
        ArrayList<String> stringArrayList;
        if (!mu.f() || (stringArrayList = getArguments().getStringArrayList("permission_group")) == null || stringArrayList.size() <= 0) {
            return;
        }
        requestPermissions((String[]) stringArrayList.toArray(new String[stringArrayList.size() - 1]), getArguments().getInt("request_code"));
    }

    @Override // android.app.Fragment
    @SuppressLint({"InlinedApi"})
    public void onActivityCreated(Bundle bundle) {
        boolean z;
        Intent intent;
        Intent intent2;
        Intent intent3;
        boolean m3118do;
        super.onActivityCreated(bundle);
        ArrayList<String> stringArrayList = getArguments().getStringArrayList("permission_group");
        if (stringArrayList == null) {
            return;
        }
        boolean z2 = false;
        if (!stringArrayList.isEmpty()) {
            for (String str : stringArrayList) {
                if (mu.r(str)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            Intent intent4 = null;
            if (stringArrayList.contains("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                Activity activity = getActivity();
                if (mu.e()) {
                    m3118do = Environment.isExternalStorageManager();
                } else {
                    m3118do = yu.m3118do(activity, wu.f5403do);
                }
                if (!m3118do && mu.e()) {
                    Activity activity2 = getActivity();
                    Intent intent5 = mu.e() ? new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION") : null;
                    if (intent5 == null || !mu.b(activity2, intent5)) {
                        intent5 = mu.m1780return(activity2);
                    }
                    startActivityForResult(intent5, getArguments().getInt("request_code"));
                    z2 = true;
                }
            }
            if (stringArrayList.contains("android.permission.REQUEST_INSTALL_PACKAGES")) {
                if (!(mu.g() ? getActivity().getPackageManager().canRequestPackageInstalls() : true)) {
                    Activity activity3 = getActivity();
                    if (mu.g()) {
                        intent3 = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
                        StringBuilder m1016super = Cgoto.m1016super("package:");
                        m1016super.append(activity3.getPackageName());
                        intent3.setData(Uri.parse(m1016super.toString()));
                    } else {
                        intent3 = null;
                    }
                    if (intent3 == null || !mu.b(activity3, intent3)) {
                        intent3 = mu.m1780return(activity3);
                    }
                    startActivityForResult(intent3, getArguments().getInt("request_code"));
                    z2 = true;
                }
            }
            if (stringArrayList.contains("android.permission.SYSTEM_ALERT_WINDOW")) {
                if (!(mu.f() ? Settings.canDrawOverlays(getActivity()) : true)) {
                    Activity activity4 = getActivity();
                    if (mu.f()) {
                        intent2 = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                        StringBuilder m1016super2 = Cgoto.m1016super("package:");
                        m1016super2.append(activity4.getPackageName());
                        intent2.setData(Uri.parse(m1016super2.toString()));
                    } else {
                        intent2 = null;
                    }
                    if (intent2 == null || !mu.b(activity4, intent2)) {
                        intent2 = mu.m1780return(activity4);
                    }
                    startActivityForResult(intent2, getArguments().getInt("request_code"));
                    z2 = true;
                }
            }
            if (stringArrayList.contains("android.permission.ACCESS_NOTIFICATION_POLICY") && !mu.c(getActivity())) {
                Activity activity5 = getActivity();
                if (mu.g()) {
                    intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
                    intent.putExtra("android.provider.extra.APP_PACKAGE", activity5.getPackageName());
                } else {
                    intent = null;
                }
                if (intent == null || !mu.b(activity5, intent)) {
                    intent = mu.m1780return(activity5);
                }
                startActivityForResult(intent, getArguments().getInt("request_code"));
                z2 = true;
            }
            if (stringArrayList.contains("android.permission.WRITE_SETTINGS")) {
                if (!(mu.f() ? Settings.System.canWrite(getActivity()) : true)) {
                    Activity activity6 = getActivity();
                    if (mu.f()) {
                        intent4 = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
                        StringBuilder m1016super3 = Cgoto.m1016super("package:");
                        m1016super3.append(activity6.getPackageName());
                        intent4.setData(Uri.parse(m1016super3.toString()));
                    }
                    if (intent4 == null || !mu.b(activity6, intent4)) {
                        intent4 = mu.m1780return(activity6);
                    }
                    startActivityForResult(intent4, getArguments().getInt("request_code"));
                    z2 = true;
                }
            }
        }
        if (z2) {
            return;
        }
        m3050do();
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f5808do || i != getArguments().getInt("request_code")) {
            return;
        }
        this.f5808do = true;
        f5807if.postDelayed(this, 500L);
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        vu vuVar;
        boolean z;
        SoftReference<vu> softReference = f5806for.get(i);
        if (softReference == null || (vuVar = softReference.get()) == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= strArr.length) {
                break;
            }
            String str = strArr[i2];
            if (mu.r(str)) {
                iArr[i2] = mu.o(getActivity(), str) ? 0 : -1;
            } else {
                if (!mu.d() && ("android.permission.ACCESS_BACKGROUND_LOCATION".equals(str) || "android.permission.ACTIVITY_RECOGNITION".equals(str) || "android.permission.ACCESS_MEDIA_LOCATION".equals(str))) {
                    iArr[i2] = mu.o(getActivity(), str) ? 0 : -1;
                }
                if (!mu.g() && ("android.permission.ANSWER_PHONE_CALLS".equals(str) || "android.permission.READ_PHONE_NUMBERS".equals(str))) {
                    iArr[i2] = mu.o(getActivity(), str) ? 0 : -1;
                }
            }
            i2++;
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (iArr[i3] == 0) {
                arrayList.add(strArr[i3]);
            }
        }
        boolean z2 = true;
        if (arrayList.size() == strArr.length) {
            vuVar.mo413if(arrayList, true);
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (int i4 = 0; i4 < iArr.length; i4++) {
                if (iArr[i4] == -1) {
                    arrayList2.add(strArr[i4]);
                }
            }
            if (getArguments().getBoolean("request_constant")) {
                Activity activity = getActivity();
                Iterator it = arrayList2.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!mu.q(activity, (String) it.next())) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    m3050do();
                    return;
                }
            }
            Activity activity2 = getActivity();
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (mu.q(activity2, (String) it2.next())) {
                        break;
                    }
                } else {
                    z2 = false;
                    break;
                }
            }
            vuVar.mo412do(arrayList2, z2);
            if (!arrayList.isEmpty()) {
                vuVar.mo413if(arrayList, false);
            }
        }
        f5806for.remove(i);
        getFragmentManager().beginTransaction().remove(this).commit();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (isAdded()) {
            m3050do();
        }
    }
}
