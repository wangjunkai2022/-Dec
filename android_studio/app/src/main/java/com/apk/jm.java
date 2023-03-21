package com.apk;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.apk.hs;
import com.apk.ks;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.litepal.util.cipher.AESCrypt;

/* compiled from: SafeKeyGenerator.java */
/* loaded from: classes8.dex */
public class jm {

    /* renamed from: do  reason: not valid java name */
    public final ds<kj, String> f2364do = new ds<>(1000);

    /* renamed from: if  reason: not valid java name */
    public final Pools.Pool<Cif> f2365if = hs.m1168do(10, new Cdo(this));

    /* compiled from: SafeKeyGenerator.java */
    /* renamed from: com.apk.jm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements hs.Cif<Cif> {
        public Cdo(jm jmVar) {
        }

        @Override // com.apk.hs.Cif
        /* renamed from: do */
        public Cif mo848do() {
            try {
                return new Cif(MessageDigest.getInstance(AESCrypt.HASH_ALGORITHM));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* compiled from: SafeKeyGenerator.java */
    /* renamed from: com.apk.jm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif implements hs.Cnew {

        /* renamed from: do  reason: not valid java name */
        public final MessageDigest f2366do;

        /* renamed from: if  reason: not valid java name */
        public final ks f2367if = new ks.Cif();

        public Cif(MessageDigest messageDigest) {
            this.f2366do = messageDigest;
        }

        @Override // com.apk.hs.Cnew
        @NonNull
        /* renamed from: if */
        public ks mo847if() {
            return this.f2367if;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public String m1357do(kj kjVar) {
        String m511do;
        synchronized (this.f2364do) {
            m511do = this.f2364do.m511do(kjVar);
        }
        if (m511do == null) {
            Cif acquire = this.f2365if.acquire();
            eg.m593else(acquire, "Argument must not be null");
            Cif cif = acquire;
            try {
                kjVar.mo76do(cif.f2366do);
                m511do = gs.m1037final(cif.f2366do.digest());
            } finally {
                this.f2365if.release(cif);
            }
        }
        synchronized (this.f2364do) {
            this.f2364do.m514new(kjVar, m511do);
        }
        return m511do;
    }
}
