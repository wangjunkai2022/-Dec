package com.bytedance.pangle.res;

import android.app.Application;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.util.f;
import com.bytedance.pangle.util.i;
import java.io.File;
import java.util.HashSet;
import java.util.List;
@Keep
/* loaded from: classes8.dex */
public class PluginResources extends Resources {
    public String pluginPkg;

    public PluginResources(Resources resources, String str) {
        super(appendHostRes(resources), resources.getDisplayMetrics(), Zeus.getAppApplication().getResources().getConfiguration());
        this.pluginPkg = str;
    }

    public static AssetManager appendHostRes(Resources resources) {
        File parentFile;
        Application appApplication = Zeus.getAppApplication();
        if (f.f11388a == null && (parentFile = appApplication.getCacheDir().getParentFile()) != null) {
            f.f11388a = parentFile.getAbsolutePath();
        }
        String str = f.f11388a;
        String a2 = f.a(Zeus.getAppApplication());
        List<String> b = i.b();
        a aVar = new a();
        AssetManager assets = resources.getAssets();
        AssetManager assets2 = Zeus.getAppApplication().getAssets();
        HashSet hashSet = new HashSet(i.a(assets));
        List<String> a3 = i.a(assets2);
        for (String str2 : b) {
            if (!hashSet.contains(str2)) {
                assets = aVar.a(assets, str2, true);
            }
        }
        for (String str3 : a3) {
            if (!isOtherPlugin(str3, str, a2) && !hashSet.contains(str3) && !b.contains(str3)) {
                assets = aVar.a(assets, str3, false);
            }
        }
        return assets;
    }

    public static boolean isOtherPlugin(String str, String str2, String str3) {
        if (str.contains("/tinker/patch-")) {
            return false;
        }
        if (TextUtils.isEmpty(str2) || !str.contains(str2)) {
            return !TextUtils.isEmpty(str3) && str.contains(str3);
        }
        return true;
    }
}
