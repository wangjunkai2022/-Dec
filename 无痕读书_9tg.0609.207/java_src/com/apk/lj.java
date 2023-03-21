package com.apk;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
/* compiled from: Option.java */
/* loaded from: classes8.dex */
public final class lj<T> {

    /* renamed from: try  reason: not valid java name */
    public static final Cif<Object> f2818try = new Cdo();

    /* renamed from: do  reason: not valid java name */
    public final T f2819do;

    /* renamed from: for  reason: not valid java name */
    public final String f2820for;

    /* renamed from: if  reason: not valid java name */
    public final Cif<T> f2821if;

    /* renamed from: new  reason: not valid java name */
    public volatile byte[] f2822new;

    /* compiled from: Option.java */
    /* renamed from: com.apk.lj$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Cif<Object> {
        @Override // com.apk.lj.Cif
        public void update(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    /* compiled from: Option.java */
    /* renamed from: com.apk.lj$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif<T> {
        void update(@NonNull byte[] bArr, @NonNull T t, @NonNull MessageDigest messageDigest);
    }

    public lj(@NonNull String str, @Nullable T t, @NonNull Cif<T> cif) {
        if (!TextUtils.isEmpty(str)) {
            this.f2820for = str;
            this.f2819do = t;
            eg.m593else(cif, "Argument must not be null");
            this.f2821if = cif;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    @NonNull
    /* renamed from: do  reason: not valid java name */
    public static <T> lj<T> m1635do(@NonNull String str, @NonNull T t) {
        return new lj<>(str, t, f2818try);
    }

    public boolean equals(Object obj) {
        if (obj instanceof lj) {
            return this.f2820for.equals(((lj) obj).f2820for);
        }
        return false;
    }

    public int hashCode() {
        return this.f2820for.hashCode();
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Option{key='");
        m1016super.append(this.f2820for);
        m1016super.append('\'');
        m1016super.append('}');
        return m1016super.toString();
    }

    public void update(@NonNull T t, @NonNull MessageDigest messageDigest) {
        Cif<T> cif = this.f2821if;
        if (this.f2822new == null) {
            this.f2822new = this.f2820for.getBytes(kj.f2575do);
        }
        cif.update(this.f2822new, t, messageDigest);
    }
}
