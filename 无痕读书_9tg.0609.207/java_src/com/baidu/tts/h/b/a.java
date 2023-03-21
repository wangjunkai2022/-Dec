package com.baidu.tts.h.b;

import android.content.Context;
import com.baidu.tts.tools.FileTools;
import com.baidu.tts.tools.GetCUID;
import com.baidu.tts.tools.ResourceTools;
import java.lang.ref.WeakReference;
/* compiled from: AppPersistentValueFlyweight.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<Context> f11228a;
    public String b;
    public String c;

    public a(WeakReference<Context> weakReference) {
        this.f11228a = weakReference;
    }

    private Context c() {
        WeakReference<Context> weakReference = this.f11228a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public String a() {
        if (this.b == null) {
            this.b = GetCUID.getCUID(c());
        }
        return this.b;
    }

    public String b() {
        if (this.c == null) {
            this.c = FileTools.jointPathAndName(ResourceTools.getAppFilesDirPath(c()), "baidu_tts_license");
        }
        return this.c;
    }
}
