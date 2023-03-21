package com.qq.e.comm.managers.devtool;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes8.dex */
public class DevTools {

    /* renamed from: a  reason: collision with root package name */
    public String f11532a;

    public String getDemoGameUrl() {
        String str = this.f11532a;
        this.f11532a = null;
        return str;
    }

    public void testDemoGame(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context.getPackageName().equals("com.qq.e.union.demo.union")) {
            this.f11532a = str;
        }
    }
}
