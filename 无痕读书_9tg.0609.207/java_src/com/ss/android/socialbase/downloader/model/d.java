package com.ss.android.socialbase.downloader.model;

import android.text.TextUtils;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.ss.android.socialbase.downloader.i.f;
import com.ss.android.socialbase.downloader.network.g;
import java.io.IOException;
/* loaded from: classes7.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final String f11987a;
    public final g b;
    public final int c;
    public long d;
    public long e;

    public d(String str, g gVar) throws IOException {
        this.f11987a = str;
        this.c = gVar.b();
        this.b = gVar;
    }

    public boolean a() {
        return f.c(this.c);
    }

    public boolean b() {
        return f.a(this.c, this.b.a("Accept-Ranges"));
    }

    public String c() {
        return this.b.a("Etag");
    }

    public String d() {
        return this.b.a(AsyncHttpClient.HEADER_CONTENT_TYPE);
    }

    public String e() {
        return f.b(this.b, AsyncHttpClient.HEADER_CONTENT_RANGE);
    }

    public String f() {
        String b = f.b(this.b, "last-modified");
        return TextUtils.isEmpty(b) ? f.b(this.b, "Last-Modified") : b;
    }

    public String g() {
        return f.b(this.b, "Cache-Control");
    }

    public long h() {
        if (this.d <= 0) {
            this.d = f.a(this.b);
        }
        return this.d;
    }

    public boolean i() {
        if (com.ss.android.socialbase.downloader.i.a.a(8)) {
            return f.c(this.b);
        }
        return f.b(h());
    }

    public long j() {
        if (this.e <= 0) {
            if (!i()) {
                String e = e();
                if (!TextUtils.isEmpty(e)) {
                    this.e = f.b(e);
                }
            } else {
                this.e = -1L;
            }
        }
        return this.e;
    }

    public long k() {
        return f.i(g());
    }
}
