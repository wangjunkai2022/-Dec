package com.bytedance.pangle.e;

import com.bytedance.pangle.c;
import com.bytedance.pangle.plugin.PluginManager;
import java.io.File;

/* loaded from: classes8.dex */
public class a extends c.a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile a f11315a;

    public static a b() {
        if (f11315a == null) {
            synchronized (a.class) {
                if (f11315a == null) {
                    f11315a = new a();
                }
            }
        }
        return f11315a;
    }

    @Override // com.bytedance.pangle.c
    public final boolean a(String str) {
        return PluginManager.getInstance().checkPluginInstalled(str);
    }

    @Override // com.bytedance.pangle.c
    public final boolean a(String str, String str2) {
        return PluginManager.getInstance().syncInstall(str, new File(str2));
    }

    @Override // com.bytedance.pangle.c
    public final int b(String str) {
        return PluginManager.getInstance().getPlugin(str).getVersion();
    }
}
