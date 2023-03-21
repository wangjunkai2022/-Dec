package com.ss.android.socialbase.appdownloader.a;

import android.content.Context;
/* loaded from: classes7.dex */
public abstract class a implements e {

    /* renamed from: a  reason: collision with root package name */
    public final Context f11746a;
    public final com.ss.android.socialbase.downloader.g.a b;
    public final String c;

    public a(Context context, com.ss.android.socialbase.downloader.g.a aVar, String str) {
        this.f11746a = context;
        this.b = aVar;
        this.c = str;
    }

    public boolean a() {
        if (this.f11746a == null) {
            return false;
        }
        try {
        } catch (Throwable unused) {
            com.ss.android.socialbase.downloader.c.a.a();
        }
        return b().resolveActivity(this.f11746a.getPackageManager()) != null;
    }
}
