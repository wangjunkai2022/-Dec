package com.bytedance.pangle.plugin;

import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.e.a.e;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;
/* loaded from: classes8.dex */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final File f11350a;
    public final String b;

    public a(String str, File file) {
        this.f11350a = file;
        this.b = str;
    }

    public final boolean a() {
        e a2 = com.bytedance.pangle.e.a.d.a(this.f11350a);
        if (a2 == null) {
            String str = this.b;
            ZeusPluginStateListener.postStateChange(str, 7, " read local file package info failed !!! pluginPkg = " + this.b + " mApkFile.exists = " + this.f11350a.exists());
            StringBuilder sb = new StringBuilder("PluginInstallRunnable read local file package info failed !!! pluginPkg = ");
            sb.append(this.b);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, sb.toString());
            return false;
        }
        Plugin plugin = PluginManager.getInstance().getPlugin(a2.f11319a);
        if (plugin == null) {
            String str2 = this.b;
            ZeusPluginStateListener.postStateChange(str2, 7, " plugin == null !!! pluginPkg = " + this.b);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstallRunnable cannot query valid plugin !!! packageName = " + a2.f11319a);
            return false;
        }
        boolean install = plugin.install(this.f11350a, a2);
        if (install) {
            ZeusPluginStateListener.postStateChange(a2.f11319a, 6, new Object[0]);
        } else {
            ZeusPluginStateListener.postStateChange(a2.f11319a, 7, "Internal error.");
        }
        return install;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a();
    }
}
