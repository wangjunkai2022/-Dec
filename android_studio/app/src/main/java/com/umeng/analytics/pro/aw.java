package com.umeng.analytics.pro;

import com.umeng.analytics.pro.bm;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* compiled from: TDeserializer.java */
/* loaded from: classes7.dex */
public class aw {

    /* renamed from: a  reason: collision with root package name */
    public final bs f12150a;
    public final cf b;

    public aw() {
        this(new bm.a());
    }

    private bn j(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        this.b.a(bArr);
        int length = baVarArr.length + 1;
        ba[] baVarArr2 = new ba[length];
        int i = 0;
        baVarArr2[0] = baVar;
        int i2 = 0;
        while (i2 < baVarArr.length) {
            int i3 = i2 + 1;
            baVarArr2[i3] = baVarArr[i2];
            i2 = i3;
        }
        this.f12150a.j();
        bn bnVar = null;
        while (i < length) {
            bnVar = this.f12150a.l();
            if (bnVar.b == 0 || bnVar.c > baVarArr2[i].a()) {
                return null;
            }
            if (bnVar.c != baVarArr2[i].a()) {
                bv.a(this.f12150a, bnVar.b);
                this.f12150a.m();
            } else {
                i++;
                if (i < length) {
                    this.f12150a.j();
                }
            }
        }
        return bnVar;
    }

    public void a(at atVar, byte[] bArr) throws az {
        try {
            this.b.a(bArr);
            atVar.read(this.f12150a);
        } finally {
            this.b.e();
            this.f12150a.B();
        }
    }

    public Byte b(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Byte) a((byte) 3, bArr, baVar, baVarArr);
    }

    public Double c(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Double) a((byte) 4, bArr, baVar, baVarArr);
    }

    public Short d(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Short) a((byte) 6, bArr, baVar, baVarArr);
    }

    public Integer e(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Integer) a((byte) 8, bArr, baVar, baVarArr);
    }

    public Long f(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Long) a((byte) 10, bArr, baVar, baVarArr);
    }

    public String g(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (String) a((byte) 11, bArr, baVar, baVarArr);
    }

    public ByteBuffer h(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (ByteBuffer) a((byte) 100, bArr, baVar, baVarArr);
    }

    public Short i(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        Short sh;
        try {
            try {
                if (j(bArr, baVar, baVarArr) != null) {
                    this.f12150a.j();
                    sh = Short.valueOf(this.f12150a.l().c);
                } else {
                    sh = null;
                }
                return sh;
            } catch (Exception e) {
                throw new az(e);
            }
        } finally {
            this.b.e();
            this.f12150a.B();
        }
    }

    public aw(bu buVar) {
        cf cfVar = new cf();
        this.b = cfVar;
        this.f12150a = buVar.a(cfVar);
    }

    public void a(at atVar, String str, String str2) throws az {
        try {
            try {
                a(atVar, str.getBytes(str2));
            } catch (UnsupportedEncodingException unused) {
                throw new az("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.f12150a.B();
        }
    }

    public void a(at atVar, byte[] bArr, ba baVar, ba... baVarArr) throws az {
        try {
            try {
                if (j(bArr, baVar, baVarArr) != null) {
                    atVar.read(this.f12150a);
                }
            } catch (Exception e) {
                throw new az(e);
            }
        } finally {
            this.b.e();
            this.f12150a.B();
        }
    }

    public Boolean a(byte[] bArr, ba baVar, ba... baVarArr) throws az {
        return (Boolean) a((byte) 2, bArr, baVar, baVarArr);
    }

    private Object a(byte b, byte[] bArr, ba baVar, ba... baVarArr) throws az {
        Object obj;
        try {
            try {
                bn j = j(bArr, baVar, baVarArr);
                if (j != null) {
                    if (b != 2) {
                        if (b != 3) {
                            if (b != 4) {
                                if (b != 6) {
                                    if (b != 8) {
                                        if (b != 100) {
                                            if (b != 10) {
                                                if (b == 11 && j.b == 11) {
                                                    obj = this.f12150a.z();
                                                }
                                            } else if (j.b == 10) {
                                                obj = Long.valueOf(this.f12150a.x());
                                            }
                                        } else if (j.b == 11) {
                                            obj = this.f12150a.A();
                                        }
                                    } else if (j.b == 8) {
                                        obj = Integer.valueOf(this.f12150a.w());
                                    }
                                } else if (j.b == 6) {
                                    obj = Short.valueOf(this.f12150a.v());
                                }
                            } else if (j.b == 4) {
                                obj = Double.valueOf(this.f12150a.y());
                            }
                        } else if (j.b == 3) {
                            obj = Byte.valueOf(this.f12150a.u());
                        }
                    } else if (j.b == 2) {
                        obj = Boolean.valueOf(this.f12150a.t());
                    }
                    return obj;
                }
                obj = null;
                return obj;
            } catch (Exception e) {
                throw new az(e);
            }
        } finally {
            this.b.e();
            this.f12150a.B();
        }
    }

    public void a(at atVar, String str) throws az {
        a(atVar, str.getBytes());
    }
}
