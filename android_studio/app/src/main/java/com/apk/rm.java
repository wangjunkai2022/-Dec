package com.apk;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: GlideUrl.java */
/* loaded from: classes8.dex */
public class rm implements kj {
    @Nullable

    /* renamed from: case  reason: not valid java name */
    public URL f4136case;
    @Nullable

    /* renamed from: else  reason: not valid java name */
    public volatile byte[] f4137else;
    @Nullable

    /* renamed from: for  reason: not valid java name */
    public final URL f4138for;

    /* renamed from: goto  reason: not valid java name */
    public int f4139goto;

    /* renamed from: if  reason: not valid java name */
    public final sm f4140if;
    @Nullable

    /* renamed from: new  reason: not valid java name */
    public final String f4141new;
    @Nullable

    /* renamed from: try  reason: not valid java name */
    public String f4142try;

    public rm(URL url) {
        sm smVar = sm.f4466do;
        eg.m593else(url, "Argument must not be null");
        this.f4138for = url;
        this.f4141new = null;
        eg.m593else(smVar, "Argument must not be null");
        this.f4140if = smVar;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        if (this.f4137else == null) {
            this.f4137else = m2316for().getBytes(kj.f2575do);
        }
        messageDigest.update(this.f4137else);
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof rm) {
            rm rmVar = (rm) obj;
            return m2316for().equals(rmVar.m2316for()) && this.f4140if.equals(rmVar.f4140if);
        }
        return false;
    }

    /* renamed from: for  reason: not valid java name */
    public String m2316for() {
        String str = this.f4141new;
        if (str != null) {
            return str;
        }
        URL url = this.f4138for;
        eg.m593else(url, "Argument must not be null");
        return url.toString();
    }

    @Override // com.apk.kj
    public int hashCode() {
        if (this.f4139goto == 0) {
            int hashCode = m2316for().hashCode();
            this.f4139goto = hashCode;
            this.f4139goto = this.f4140if.hashCode() + (hashCode * 31);
        }
        return this.f4139goto;
    }

    /* renamed from: new  reason: not valid java name */
    public Map<String, String> m2317new() {
        return this.f4140if.getHeaders();
    }

    public String toString() {
        return m2316for();
    }

    /* renamed from: try  reason: not valid java name */
    public final String m2318try() {
        if (TextUtils.isEmpty(this.f4142try)) {
            String str = this.f4141new;
            if (TextUtils.isEmpty(str)) {
                URL url = this.f4138for;
                eg.m593else(url, "Argument must not be null");
                str = url.toString();
            }
            this.f4142try = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f4142try;
    }

    public rm(String str, sm smVar) {
        this.f4138for = null;
        if (!TextUtils.isEmpty(str)) {
            this.f4141new = str;
            eg.m593else(smVar, "Argument must not be null");
            this.f4140if = smVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
