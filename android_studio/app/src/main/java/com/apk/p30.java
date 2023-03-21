package com.apk;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.apk.uj;
import com.apk.zf0;
import com.apk.zg0;
import com.jni.crypt.project.CryptDesManager;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: DesOkHttpStreamFetcher.java */
/* loaded from: classes8.dex */
public class p30 implements uj<InputStream>, ag0 {

    /* renamed from: break  reason: not valid java name */
    public boolean f3568break;

    /* renamed from: case  reason: not valid java name */
    public volatile zf0 f3569case;

    /* renamed from: do  reason: not valid java name */
    public final zf0.Cdo f3570do;

    /* renamed from: else  reason: not valid java name */
    public boolean f3571else;

    /* renamed from: for  reason: not valid java name */
    public InputStream f3572for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f3573goto;

    /* renamed from: if  reason: not valid java name */
    public final rm f3574if;

    /* renamed from: new  reason: not valid java name */
    public dh0 f3575new;

    /* renamed from: this  reason: not valid java name */
    public boolean f3576this;

    /* renamed from: try  reason: not valid java name */
    public uj.Cdo<? super InputStream> f3577try;

    public p30(zf0.Cdo cdo, rm rmVar) {
        this.f3570do = cdo;
        this.f3574if = rmVar;
    }

    @Override // com.apk.uj
    public void cancel() {
        zf0 zf0Var = this.f3569case;
        if (zf0Var != null) {
            zf0Var.cancel();
        }
    }

    @Override // com.apk.uj
    /* renamed from: case */
    public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super InputStream> cdo) {
        String m2318try = this.f3574if.m2318try();
        zg0.Cdo cdo2 = new zg0.Cdo();
        Map<String, String> m2317new = this.f3574if.m2317new();
        if (m2317new != null) {
            for (Map.Entry<String, String> entry : m2317new.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if ("LOAD_IMAGE_ENCRYPT_SWITCH_KEY".equals(key)) {
                    this.f3571else = "no".equals(value);
                } else if ("LOAD_IMAGE_TYPE_KEY".equals(key)) {
                    this.f3573goto = "LOAD_IMAGE_TYPE_VALUE_NOVEL".equals(value);
                    this.f3576this = "LOAD_IMAGE_TYPE_VALUE_CARTOON".equals(value);
                } else if ("LOAD_IMAGE_IS_REPLACE_KEY".equals(key)) {
                    this.f3568break = "true".equals(value);
                } else {
                    cdo2.m3200do(key, value);
                }
            }
        }
        if (this.f3573goto) {
            m2318try = u.m2661try(Uri.decode(m2318try), this.f3568break);
        } else if (this.f3576this) {
            m2318try = u.m2647for(Uri.decode(m2318try), this.f3568break);
        }
        cdo2.m3203goto(m2318try);
        zg0 m3204if = cdo2.m3204if();
        this.f3577try = cdo;
        this.f3569case = ((xg0) this.f3570do).m2991do(m3204if);
        this.f3569case.mo3008try(this);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do */
    public Class<InputStream> mo58do() {
        return InputStream.class;
    }

    @Override // com.apk.ag0
    /* renamed from: for */
    public void mo46for(@NonNull zf0 zf0Var, @NonNull ch0 ch0Var) {
        this.f3575new = ch0Var.f614goto;
        if (ch0Var.m338throw()) {
            if (this.f3571else) {
                dh0 dh0Var = this.f3575new;
                eg.m593else(dh0Var, "Argument must not be null");
                this.f3572for = new yr(this.f3575new.m456for(), dh0Var.mo457throw());
            } else {
                try {
                    if (this.f3575new != null) {
                        this.f3572for = new ByteArrayInputStream(CryptDesManager.decodeBytes(this.f3575new.m459try()));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } catch (OutOfMemoryError e2) {
                    e2.printStackTrace();
                }
            }
            this.f3577try.mo213new(this.f3572for);
            return;
        }
        this.f3577try.mo212for(new hj(ch0Var.f616new, ch0Var.f618try));
    }

    @Override // com.apk.uj
    /* renamed from: if */
    public void mo60if() {
        try {
            if (this.f3572for != null) {
                this.f3572for.close();
            }
        } catch (IOException unused) {
        }
        dh0 dh0Var = this.f3575new;
        if (dh0Var != null) {
            dh0Var.close();
        }
        this.f3577try = null;
    }

    @Override // com.apk.ag0
    /* renamed from: new */
    public void mo47new(@NonNull zf0 zf0Var, @NonNull IOException iOException) {
        this.f3577try.mo212for(iOException);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: try */
    public dj mo61try() {
        return dj.REMOTE;
    }
}
