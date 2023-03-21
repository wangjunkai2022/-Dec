package com.bytedance.msdk.api.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.e;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.f;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.ArrayList;

/* loaded from: classes8.dex */
public class TTDelegateActivity extends Activity {
    public static final String INTENT_PERMISSIONS = "permissions";
    public static final String INTENT_TYPE = "type";
    public static final int INTENT_TYPE_ALL_PERMISSIONS_CHECK = 3;
    public static final int INTENT_TYPE_PERMISSIONS_CHECK = 1;
    public static final int INTENT_TYPE_REQUEST_PERMISSION = 2;
    public static final String PERMISSION_CONTENT_KEY = "permission_content_key";
    public static final String PERMISSION_ID_KEY = "permission_id_key";

    /* renamed from: do  reason: not valid java name */
    public Intent f8968do;

    /* loaded from: classes8.dex */
    public static class updateDeviceInfoRunnable implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            v.t(a.d());
        }
    }

    public static void requestPermission(String str, String[] strArr) {
        Intent intent = new Intent(a.d(), TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 2);
        intent.putExtra(PERMISSION_ID_KEY, str);
        intent.putExtra(PERMISSION_CONTENT_KEY, strArr);
        if (a.d() != null) {
            c.a(a.d(), intent, new c.a() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.1
                @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c.a
                public void startActivityFail(Throwable th) {
                    StringBuilder m1016super = Cgoto.m1016super("requestPermission->startActivity error :");
                    m1016super.append(th.toString());
                    Logger.e(m1016super.toString());
                }

                @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c.a
                public void startActivitySuccess() {
                }
            });
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final void m3586do(int i, int[] iArr) {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                ArrayList arrayList = new ArrayList();
                if (i != 1) {
                    if (i == 3) {
                        arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
                        arrayList.add("android.permission.ACCESS_FINE_LOCATION");
                        arrayList.add("android.permission.READ_PHONE_STATE");
                        arrayList.add(UMUtils.SD_PERMISSION);
                    }
                } else if (iArr != null && iArr.length > 0) {
                    for (int i2 : iArr) {
                        if (i2 == 1) {
                            arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
                            arrayList.add("android.permission.ACCESS_FINE_LOCATION");
                        } else if (i2 == 2) {
                            arrayList.add("android.permission.READ_PHONE_STATE");
                        } else if (i2 == 3) {
                            arrayList.add(UMUtils.SD_PERMISSION);
                        }
                    }
                }
                String[] strArr = new String[arrayList.size()];
                arrayList.toArray(strArr);
                e.a().a(this, strArr, new f() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.3
                    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.f
                    public void onDenied(String str) {
                        Logger.d("TMe", "-------=----- onDenied: " + str);
                        "android.permission.READ_PHONE_STATE".equals(str);
                        ThreadHelper.runOnThreadPool(new updateDeviceInfoRunnable());
                        TTDelegateActivity.this.finish();
                    }

                    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.f
                    public void onGranted() {
                        Logger.d("TMe", "-------=----- onGranted");
                        ThreadHelper.runOnThreadPool(new updateDeviceInfoRunnable());
                        TTDelegateActivity.this.finish();
                    }
                });
                return;
            } catch (Exception unused) {
                finish();
                return;
            }
        }
        Logger.d(GMAdConstant.TAG, "已经有Read phone state权限");
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
        this.f8968do = getIntent();
        if (a.d() == null) {
            a.b(this);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (a.d() == null) {
            a.b(this);
        }
        try {
            setIntent(intent);
            this.f8968do = intent;
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        e.a().a(this, strArr, iArr);
        ThreadHelper.runOnThreadPool(new updateDeviceInfoRunnable());
        finish();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (getIntent() != null) {
            try {
                int intExtra = this.f8968do.getIntExtra("type", 0);
                if (intExtra == 1) {
                    m3586do(intExtra, this.f8968do.getIntArrayExtra(INTENT_PERMISSIONS));
                } else if (intExtra == 2) {
                    final String stringExtra = this.f8968do.getStringExtra(PERMISSION_ID_KEY);
                    String[] stringArrayExtra = this.f8968do.getStringArrayExtra(PERMISSION_CONTENT_KEY);
                    if (!TextUtils.isEmpty(stringExtra) && stringArrayExtra != null && stringArrayExtra.length > 0) {
                        if (Build.VERSION.SDK_INT >= 23) {
                            try {
                                e.a().a(this, stringArrayExtra, new f() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.2
                                    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.f
                                    public void onDenied(String str) {
                                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.a.a(stringExtra, str);
                                        TTDelegateActivity.this.finish();
                                    }

                                    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.f
                                    public void onGranted() {
                                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.a.a(stringExtra);
                                        TTDelegateActivity.this.finish();
                                    }
                                });
                            } catch (Exception unused) {
                                finish();
                            }
                        } else {
                            Logger.d(GMAdConstant.TAG, "已经有权限");
                            finish();
                        }
                    }
                    finish();
                } else if (intExtra != 3) {
                    finish();
                } else {
                    m3586do(intExtra, null);
                }
            } catch (Exception unused2) {
                finish();
            }
        }
    }
}
