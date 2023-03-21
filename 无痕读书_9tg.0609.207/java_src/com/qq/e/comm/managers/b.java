package com.qq.e.comm.managers;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.dfa.GDTAppDialogClickListener;
import com.qq.e.comm.managers.devtool.DevTools;
import com.qq.e.comm.managers.plugin.PM;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes8.dex */
public class b implements IGDTAdManager {
    public static final ExecutorService g = Executors.newSingleThreadExecutor();

    /* renamed from: a  reason: collision with root package name */
    public volatile Boolean f11530a;
    public volatile boolean b;
    public volatile Context c;
    public volatile PM d;
    public volatile DevTools e;
    public volatile String f;

    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static b f11531a = new b(null);
    }

    public b() {
        this.f11530a = Boolean.FALSE;
        this.b = false;
    }

    public /* synthetic */ b(com.qq.e.comm.managers.a aVar) {
        this();
    }

    public static b b() {
        return a.f11531a;
    }

    public String a() {
        return this.f;
    }

    public synchronized boolean a(Context context, String str) {
        if (this.f11530a.booleanValue()) {
            return true;
        }
        if (context == null || TextUtils.isEmpty(str)) {
            GDTLogger.e("GDTADManager初始化错误，context和appId不能为空");
            return false;
        }
        this.f = str;
        this.c = context.getApplicationContext();
        this.d = new PM(this.c, null);
        g.submit(new com.qq.e.comm.managers.a(this));
        this.f11530a = Boolean.TRUE;
        return true;
    }

    public PM c() {
        return this.d;
    }

    public boolean d() {
        if (this.f11530a == null || !this.f11530a.booleanValue()) {
            GDTLogger.e("SDK 尚未初始化，请在 Application 中调用 GDTAdSdk.init() 初始化");
            return false;
        }
        return true;
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public String getBuyerId(Map<String, Object> map) {
        if (d()) {
            try {
                return this.d.getPOFactory().getBuyerId(map);
            } catch (Exception e) {
                GDTLogger.e("SDK 初始化异常", e);
                return "";
            }
        }
        return "";
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public DevTools getDevTools() {
        if (this.e == null) {
            this.e = new DevTools();
        }
        return this.e;
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public String getSDKInfo(String str) {
        if (d()) {
            try {
                return this.d.getPOFactory().getSDKInfo(str);
            } catch (Exception e) {
                GDTLogger.e("SDK 初始化异常", e);
                return "";
            }
        }
        return "";
    }

    @Override // com.qq.e.comm.managers.IGDTAdManager
    public int showOpenOrInstallAppDialog(GDTAppDialogClickListener gDTAppDialogClickListener) {
        if (this.b) {
            try {
                return this.d.getPOFactory().showOpenOrInstallAppDialog(gDTAppDialogClickListener);
            } catch (Exception e) {
                GDTLogger.e("SDK 初始化异常", e);
                return 0;
            }
        }
        return 0;
    }
}
