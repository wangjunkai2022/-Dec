package com.ss.android.socialbase.downloader.f;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes7.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    public final String f11887a;
    public final String b;
    public final String c;
    public final boolean d;
    public final List<m> e;
    public int f;
    public boolean g;
    public int h;
    public String i;
    public final AtomicLong j;

    public q(String str, boolean z) {
        this.e = new ArrayList();
        this.j = new AtomicLong();
        this.f11887a = str;
        this.d = z;
        this.b = null;
        this.c = null;
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            int lastIndexOf = str.lastIndexOf(".");
            if (lastIndexOf <= 0 || lastIndexOf >= str.length()) {
                return null;
            }
            return str.substring(0, lastIndexOf);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private String e() {
        if (this.i == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f11887a);
            sb.append("_");
            String str = this.b;
            if (str == null) {
                str = "";
            }
            sb.append(str);
            sb.append("_");
            sb.append(this.d);
            this.i = sb.toString();
        }
        return this.i;
    }

    public synchronized void b(m mVar) {
        try {
            this.e.remove(mVar);
        } catch (Throwable unused) {
        }
    }

    public synchronized void c() {
        this.g = false;
    }

    public synchronized boolean d() {
        return this.g;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            return e().equals(((q) obj).e());
        }
        return false;
    }

    public int hashCode() {
        if (this.h == 0) {
            this.h = e().hashCode();
        }
        return this.h;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("UrlRecord{url='");
        Cgoto.m987abstract(m1016super, this.f11887a, '\'', ", ip='");
        Cgoto.m987abstract(m1016super, this.b, '\'', ", ipFamily='");
        Cgoto.m987abstract(m1016super, this.c, '\'', ", isMainUrl=");
        m1016super.append(this.d);
        m1016super.append(", failedTimes=");
        m1016super.append(this.f);
        m1016super.append(", isCurrentFailed=");
        m1016super.append(this.g);
        m1016super.append('}');
        return m1016super.toString();
    }

    public synchronized void b() {
        this.f++;
        this.g = true;
    }

    public synchronized void a(m mVar) {
        this.e.add(mVar);
    }

    public q(String str, String str2) {
        this.e = new ArrayList();
        this.j = new AtomicLong();
        this.f11887a = str;
        this.d = false;
        this.b = str2;
        this.c = a(str2);
    }

    public synchronized int a() {
        return this.e.size();
    }

    public void a(long j) {
        this.j.addAndGet(j);
    }
}
