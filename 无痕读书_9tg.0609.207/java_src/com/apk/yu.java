package com.apk;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* compiled from: XXPermissions.java */
/* loaded from: classes8.dex */
public final class yu {

    /* renamed from: for  reason: not valid java name */
    public static volatile Boolean f6072for;

    /* renamed from: do  reason: not valid java name */
    public Activity f6073do;

    /* renamed from: if  reason: not valid java name */
    public List<String> f6074if;

    public yu(Activity activity) {
        this.f6073do = activity;
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m3118do(Context context, String... strArr) {
        if (strArr.length == 0) {
            return mu.p(context, mu.m1782strictfp(context));
        }
        return mu.p(context, mu.m1775new(strArr));
    }

    /* renamed from: for  reason: not valid java name */
    public void m3119for(vu vuVar) {
        int nextInt;
        int i;
        List<String> list = this.f6074if;
        if (list != null && !list.isEmpty()) {
            Activity activity = this.f6073do;
            if (activity != null) {
                if (!activity.isDestroyed()) {
                    if (!this.f6073do.isFinishing()) {
                        if (f6072for == null) {
                            Activity activity2 = this.f6073do;
                            f6072for = Boolean.valueOf((activity2.getApplicationInfo() == null || (activity2.getApplicationInfo().flags & 2) == 0) ? false : true);
                        }
                        List<String> list2 = this.f6074if;
                        if (list2.contains("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                            if (!list2.contains("android.permission.READ_EXTERNAL_STORAGE") && !list2.contains(UMUtils.SD_PERMISSION)) {
                                if (!mu.e()) {
                                    list2.add("android.permission.READ_EXTERNAL_STORAGE");
                                    list2.add(UMUtils.SD_PERMISSION);
                                }
                            } else {
                                throw new IllegalArgumentException("Please do not apply for these two permissions dynamically");
                            }
                        }
                        if (list2.contains("android.permission.ANSWER_PHONE_CALLS")) {
                            if (!list2.contains("android.permission.PROCESS_OUTGOING_CALLS")) {
                                if (!mu.d() && !list2.contains("android.permission.PROCESS_OUTGOING_CALLS")) {
                                    list2.add("android.permission.PROCESS_OUTGOING_CALLS");
                                }
                            } else {
                                throw new IllegalArgumentException("Please do not apply for these two permissions dynamically");
                            }
                        }
                        if (list2.contains("android.permission.ACTIVITY_RECOGNITION") && !mu.d() && !list2.contains("android.permission.BODY_SENSORS")) {
                            list2.add("android.permission.BODY_SENSORS");
                        }
                        if (f6072for.booleanValue()) {
                            Activity activity3 = this.f6073do;
                            List<String> list3 = this.f6074if;
                            if (list3.contains("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                                i = 30;
                            } else if (list3.contains("android.permission.ACCESS_BACKGROUND_LOCATION") || list3.contains("android.permission.ACTIVITY_RECOGNITION") || list3.contains("android.permission.ACCESS_MEDIA_LOCATION")) {
                                i = 29;
                            } else {
                                i = (list3.contains("android.permission.REQUEST_INSTALL_PACKAGES") || list3.contains("android.permission.ACCESS_NOTIFICATION_POLICY") || list3.contains("android.permission.ANSWER_PHONE_CALLS") || list3.contains("android.permission.READ_PHONE_NUMBERS")) ? 26 : 23;
                            }
                            if (activity3.getApplicationInfo().targetSdkVersion < i) {
                                throw new RuntimeException(Cgoto.m1005instanceof("The targetSdkVersion SDK must be ", i, " or more"));
                            }
                        }
                        if (mu.p(this.f6073do, this.f6074if)) {
                            vuVar.mo413if(this.f6074if, true);
                            return;
                        }
                        if (f6072for.booleanValue()) {
                            Activity activity4 = this.f6073do;
                            List<String> list4 = this.f6074if;
                            List<String> m1782strictfp = mu.m1782strictfp(activity4);
                            if (m1782strictfp != null && !m1782strictfp.isEmpty()) {
                                int i2 = Build.VERSION.SDK_INT >= 24 ? activity4.getApplicationInfo().minSdkVersion : 23;
                                for (String str : list4) {
                                    if (i2 < 30 && "android.permission.MANAGE_EXTERNAL_STORAGE".equals(str)) {
                                        if (m1782strictfp.contains("android.permission.READ_EXTERNAL_STORAGE")) {
                                            if (!m1782strictfp.contains(UMUtils.SD_PERMISSION)) {
                                                throw new uu(UMUtils.SD_PERMISSION);
                                            }
                                        } else {
                                            throw new uu("android.permission.READ_EXTERNAL_STORAGE");
                                        }
                                    }
                                    if (i2 < 29 && "android.permission.ACTIVITY_RECOGNITION".equals(str) && !m1782strictfp.contains("android.permission.BODY_SENSORS")) {
                                        throw new uu("android.permission.BODY_SENSORS");
                                    }
                                    if (i2 < 26) {
                                        if ("android.permission.ANSWER_PHONE_CALLS".equals(str) && !m1782strictfp.contains("android.permission.PROCESS_OUTGOING_CALLS")) {
                                            throw new uu("android.permission.PROCESS_OUTGOING_CALLS");
                                        }
                                        if ("android.permission.READ_PHONE_NUMBERS".equals(str) && !m1782strictfp.contains("android.permission.READ_PHONE_STATE")) {
                                            throw new uu("android.permission.READ_PHONE_STATE");
                                        }
                                    }
                                    if (!"android.permission.ACCESS_NOTIFICATION_POLICY".equals(str) && !m1782strictfp.contains(str)) {
                                        throw new uu(str);
                                    }
                                }
                            } else {
                                throw new uu();
                            }
                        }
                        ArrayList<String> arrayList = new ArrayList<>(this.f6074if);
                        xu xuVar = new xu();
                        Bundle bundle = new Bundle();
                        do {
                            nextInt = new Random().nextInt((int) Math.pow(2.0d, 16.0d));
                        } while (xu.f5806for.get(nextInt) != null);
                        bundle.putInt("request_code", nextInt);
                        bundle.putStringArrayList("permission_group", arrayList);
                        bundle.putBoolean("request_constant", false);
                        xuVar.setArguments(bundle);
                        Activity activity5 = this.f6073do;
                        xu.f5806for.put(xuVar.getArguments().getInt("request_code"), new SoftReference<>(vuVar));
                        activity5.getFragmentManager().beginTransaction().add(xuVar, activity5.getClass().getName()).commitAllowingStateLoss();
                        return;
                    }
                    throw new IllegalStateException("The event has been finish");
                }
                throw new IllegalStateException("The event has been destroyed");
            }
            throw new IllegalArgumentException("The activity is empty");
        }
        throw new IllegalArgumentException("The requested permission cannot be empty");
    }

    /* renamed from: if  reason: not valid java name */
    public yu m3120if(String... strArr) {
        List<String> list = this.f6074if;
        if (list == null) {
            this.f6074if = mu.m1775new(strArr);
        } else {
            list.addAll(mu.m1775new(strArr));
        }
        return this;
    }
}
