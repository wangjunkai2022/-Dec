package com.apk;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.apk.uj;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* compiled from: HttpUrlFetcher.java */
/* loaded from: classes8.dex */
public class ak implements uj<InputStream> {
    @VisibleForTesting

    /* renamed from: else  reason: not valid java name */
    public static final Cif f100else = new Cdo();

    /* renamed from: case  reason: not valid java name */
    public volatile boolean f101case;

    /* renamed from: do  reason: not valid java name */
    public final rm f102do;

    /* renamed from: for  reason: not valid java name */
    public final Cif f103for;

    /* renamed from: if  reason: not valid java name */
    public final int f104if;

    /* renamed from: new  reason: not valid java name */
    public HttpURLConnection f105new;

    /* renamed from: try  reason: not valid java name */
    public InputStream f106try;

    /* compiled from: HttpUrlFetcher.java */
    /* renamed from: com.apk.ak$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements Cif {
    }

    /* compiled from: HttpUrlFetcher.java */
    /* renamed from: com.apk.ak$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
    }

    public ak(rm rmVar, int i) {
        Cif cif = f100else;
        this.f102do = rmVar;
        this.f104if = i;
        this.f103for = cif;
    }

    @Override // com.apk.uj
    public void cancel() {
        this.f101case = true;
    }

    @Override // com.apk.uj
    /* renamed from: case  reason: not valid java name */
    public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super InputStream> cdo) {
        long m396if = cs.m396if();
        try {
            try {
                rm rmVar = this.f102do;
                if (rmVar.f4136case == null) {
                    rmVar.f4136case = new URL(rmVar.m2318try());
                }
                cdo.mo213new(m59for(rmVar.f4136case, 0, null, this.f102do.m2317new()));
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
            } catch (IOException e) {
                Log.isLoggable("HttpUrlFetcher", 3);
                cdo.mo212for(e);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
            }
            cs.m395do(m396if);
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                cs.m395do(m396if);
            }
            throw th;
        }
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do  reason: not valid java name */
    public Class<InputStream> mo58do() {
        return InputStream.class;
    }

    /* renamed from: for  reason: not valid java name */
    public final InputStream m59for(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        if (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new hj("In re-direct loop");
                    }
                } catch (URISyntaxException unused) {
                }
            }
            if (((Cdo) this.f103for) != null) {
                this.f105new = (HttpURLConnection) url.openConnection();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    this.f105new.addRequestProperty(entry.getKey(), entry.getValue());
                }
                this.f105new.setConnectTimeout(this.f104if);
                this.f105new.setReadTimeout(this.f104if);
                this.f105new.setUseCaches(false);
                this.f105new.setDoInput(true);
                this.f105new.setInstanceFollowRedirects(false);
                this.f105new.connect();
                this.f106try = this.f105new.getInputStream();
                if (this.f101case) {
                    return null;
                }
                int responseCode = this.f105new.getResponseCode();
                int i2 = responseCode / 100;
                if (i2 == 2) {
                    HttpURLConnection httpURLConnection = this.f105new;
                    if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                        this.f106try = new yr(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
                    } else {
                        if (Log.isLoggable("HttpUrlFetcher", 3)) {
                            httpURLConnection.getContentEncoding();
                        }
                        this.f106try = httpURLConnection.getInputStream();
                    }
                    return this.f106try;
                }
                if (!(i2 == 3)) {
                    if (responseCode == -1) {
                        throw new hj(responseCode);
                    }
                    throw new hj(this.f105new.getResponseMessage(), responseCode);
                }
                String headerField = this.f105new.getHeaderField("Location");
                if (!TextUtils.isEmpty(headerField)) {
                    URL url3 = new URL(url, headerField);
                    mo60if();
                    return m59for(url3, i + 1, url, map);
                }
                throw new hj("Received empty or null redirect url");
            }
            throw null;
        }
        throw new hj("Too many (> 5) redirects!");
    }

    @Override // com.apk.uj
    /* renamed from: if  reason: not valid java name */
    public void mo60if() {
        InputStream inputStream = this.f106try;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f105new;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f105new = null;
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: try  reason: not valid java name */
    public dj mo61try() {
        return dj.REMOTE;
    }
}
