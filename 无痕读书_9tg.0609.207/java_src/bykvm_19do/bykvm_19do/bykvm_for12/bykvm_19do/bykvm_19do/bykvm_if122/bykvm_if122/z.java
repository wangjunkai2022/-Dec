package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import java.io.IOException;
import java.nio.charset.Charset;
/* compiled from: RequestBody.java */
/* loaded from: classes8.dex */
public abstract class z {

    /* compiled from: RequestBody.java */
    /* loaded from: classes8.dex */
    public static class a extends z {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ u f10798a;
        public final /* synthetic */ int b;
        public final /* synthetic */ byte[] c;
        public final /* synthetic */ int d;

        public a(u uVar, int i, byte[] bArr, int i2) {
            this.f10798a = uVar;
            this.b = i;
            this.c = bArr;
            this.d = i2;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.z
        public long a() {
            return this.b;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.z
        public u b() {
            return this.f10798a;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.z
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d dVar) throws IOException {
            dVar.write(this.c, this.d, this.b);
        }
    }

    public static z a(u uVar, String str) {
        Charset charset = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.i;
        if (uVar != null && (charset = uVar.a()) == null) {
            charset = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.i;
            uVar = u.a(uVar + "; charset=utf-8");
        }
        return a(uVar, str.getBytes(charset));
    }

    public abstract long a() throws IOException;

    public abstract void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.d dVar) throws IOException;

    public abstract u b();

    public static z a(u uVar, byte[] bArr) {
        return a(uVar, bArr, 0, bArr.length);
    }

    public static z a(u uVar, byte[] bArr, int i, int i2) {
        if (bArr != null) {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(bArr.length, i, i2);
            return new a(uVar, i2, bArr, i);
        }
        throw new NullPointerException("content == null");
    }
}
