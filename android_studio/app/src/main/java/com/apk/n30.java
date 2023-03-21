package com.apk;

import android.text.TextUtils;
import com.apk.tw;
import com.apk.uj;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: DesDataFetcher.java */
/* loaded from: classes8.dex */
public class n30 implements uj<InputStream> {

    /* renamed from: do  reason: not valid java name */
    public final String f3178do;

    /* renamed from: if  reason: not valid java name */
    public InputStream f3179if = null;

    public n30(String str) {
        this.f3178do = str;
    }

    @Override // com.apk.uj
    public void cancel() {
        try {
            tw.Cif.f4772do.m2621do(this.f3178do);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.uj
    /* renamed from: case */
    public void mo57case(ni niVar, uj.Cdo<? super InputStream> cdo) {
        File m1777private;
        try {
            String m2652new = u.m2652new(this.f3178do);
            if (!TextUtils.isEmpty(m2652new) && !m2652new.equals(this.f3178do) && (m1777private = mu.m1777private(m2652new)) != null && m1777private.exists()) {
                this.f3179if = new FileInputStream(m1777private);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        cdo.mo213new(this.f3179if);
    }

    @Override // com.apk.uj
    /* renamed from: do */
    public Class<InputStream> mo58do() {
        return InputStream.class;
    }

    @Override // com.apk.uj
    /* renamed from: if */
    public void mo60if() {
        InputStream inputStream = this.f3179if;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            } catch (Throwable th) {
                this.f3179if = null;
                throw th;
            }
            this.f3179if = null;
        }
    }

    @Override // com.apk.uj
    /* renamed from: try */
    public dj mo61try() {
        return dj.LOCAL;
    }
}
