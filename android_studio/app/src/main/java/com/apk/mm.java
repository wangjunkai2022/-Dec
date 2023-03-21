package com.apk;

import androidx.annotation.NonNull;
import com.apk.uj;
import com.apk.ym;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: ByteArrayLoader.java */
/* loaded from: classes8.dex */
public class mm<Data> implements ym<byte[], Data> {

    /* renamed from: do  reason: not valid java name */
    public final Cif<Data> f3068do;

    /* compiled from: ByteArrayLoader.java */
    /* renamed from: com.apk.mm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements zm<byte[], ByteBuffer> {

        /* compiled from: ByteArrayLoader.java */
        /* renamed from: com.apk.mm$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0070do implements Cif<ByteBuffer> {
            public C0070do(Cdo cdo) {
            }

            @Override // com.apk.mm.Cif
            /* renamed from: do  reason: not valid java name */
            public Class<ByteBuffer> mo1735do() {
                return ByteBuffer.class;
            }

            @Override // com.apk.mm.Cif
            /* renamed from: if  reason: not valid java name */
            public ByteBuffer mo1736if(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<byte[], ByteBuffer> mo55for(@NonNull cn cnVar) {
            return new mm(new C0070do(this));
        }
    }

    /* compiled from: ByteArrayLoader.java */
    /* renamed from: com.apk.mm$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor<Data> implements uj<Data> {

        /* renamed from: do  reason: not valid java name */
        public final byte[] f3069do;

        /* renamed from: if  reason: not valid java name */
        public final Cif<Data> f3070if;

        public Cfor(byte[] bArr, Cif<Data> cif) {
            this.f3069do = bArr;
            this.f3070if = cif;
        }

        @Override // com.apk.uj
        public void cancel() {
        }

        @Override // com.apk.uj
        /* renamed from: case */
        public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super Data> cdo) {
            cdo.mo213new((Data) this.f3070if.mo1736if(this.f3069do));
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: do */
        public Class<Data> mo58do() {
            return this.f3070if.mo1735do();
        }

        @Override // com.apk.uj
        /* renamed from: if */
        public void mo60if() {
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: try */
        public dj mo61try() {
            return dj.LOCAL;
        }
    }

    /* compiled from: ByteArrayLoader.java */
    /* renamed from: com.apk.mm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif<Data> {
        /* renamed from: do */
        Class<Data> mo1735do();

        /* renamed from: if */
        Data mo1736if(byte[] bArr);
    }

    /* compiled from: ByteArrayLoader.java */
    /* renamed from: com.apk.mm$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew implements zm<byte[], InputStream> {

        /* compiled from: ByteArrayLoader.java */
        /* renamed from: com.apk.mm$new$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Cif<InputStream> {
            public Cdo(Cnew cnew) {
            }

            @Override // com.apk.mm.Cif
            /* renamed from: do */
            public Class<InputStream> mo1735do() {
                return InputStream.class;
            }

            @Override // com.apk.mm.Cif
            /* renamed from: if */
            public InputStream mo1736if(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<byte[], InputStream> mo55for(@NonNull cn cnVar) {
            return new mm(new Cdo(this));
        }
    }

    public mm(Cif<Data> cif) {
        this.f3068do = cif;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull byte[] bArr) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo mo53if(@NonNull byte[] bArr, int i, int i2, @NonNull mj mjVar) {
        byte[] bArr2 = bArr;
        return new ym.Cdo(new vr(bArr2), new Cfor(bArr2, this.f3068do));
    }
}
