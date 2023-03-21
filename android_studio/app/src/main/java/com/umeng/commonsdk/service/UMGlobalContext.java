package com.umeng.commonsdk.service;

import android.content.Context;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.utils.UMUtils;

/* loaded from: classes7.dex */
public class UMGlobalContext {
    public static final String TAG = "UMGlobalContext";
    public String mAppVersion;
    public String mAppkey;
    public Context mApplicationContext;
    public String mChannel;
    public String mProcessName;

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final UMGlobalContext f12282a = new UMGlobalContext();
    }

    public static Context getAppContext(Context context) {
        if (a.f12282a.mApplicationContext == null && context != null) {
            a.f12282a.mApplicationContext = context.getApplicationContext();
        }
        return a.f12282a.mApplicationContext;
    }

    public static UMGlobalContext getInstance(Context context) {
        if (a.f12282a.mApplicationContext == null && context != null) {
            a.f12282a.mApplicationContext = context;
        }
        return a.f12282a;
    }

    public String getAppVersion() {
        if (TextUtils.isEmpty(this.mAppVersion)) {
            this.mAppVersion = UMUtils.getAppVersionName(this.mApplicationContext);
        }
        return this.mAppVersion;
    }

    public String getAppkey() {
        if (TextUtils.isEmpty(this.mAppkey)) {
            this.mAppkey = UMConfigure.sAppkey;
        }
        return this.mAppkey;
    }

    public String getChannel() {
        if (TextUtils.isEmpty(this.mChannel)) {
            this.mChannel = UMConfigure.sChannel;
        }
        return this.mChannel;
    }

    public String getProcessName(Context context) {
        if (TextUtils.isEmpty(this.mProcessName)) {
            if (context != null) {
                Context context2 = a.f12282a.mApplicationContext;
                if (context2 != null) {
                    this.mProcessName = UMFrUtils.getCurrentProcessName(context2);
                } else {
                    this.mProcessName = UMFrUtils.getCurrentProcessName(context);
                }
            } else {
                this.mProcessName = UMFrUtils.getCurrentProcessName(a.f12282a.mApplicationContext);
            }
        }
        return this.mProcessName;
    }

    public boolean isMainProcess(Context context) {
        return UMUtils.isMainProgress(context);
    }

    public String toString() {
        if (a.f12282a.mApplicationContext != null) {
            StringBuilder sb = new StringBuilder("[");
            StringBuilder m1016super = Cgoto.m1016super("appkey:");
            m1016super.append(this.mAppkey);
            m1016super.append(",");
            sb.append(m1016super.toString());
            sb.append("channel:" + this.mChannel + ",");
            sb.append("procName:" + this.mProcessName + "]");
            return sb.toString();
        }
        return "uninitialized.";
    }

    public UMGlobalContext() {
        this.mProcessName = "";
    }

    public static Context getAppContext() {
        return a.f12282a.mApplicationContext;
    }
}
