package com.umeng.analytics.pro;

import com.apk.Cgoto;
import com.umeng.analytics.pro.bm;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
/* compiled from: TSerializer.java */
/* loaded from: classes7.dex */
public class bc {

    /* renamed from: a  reason: collision with root package name */
    public final ByteArrayOutputStream f12155a;
    public final ce b;
    public bs c;

    public bc() {
        this(new bm.a());
    }

    public byte[] a(at atVar) throws az {
        this.f12155a.reset();
        atVar.write(this.c);
        return this.f12155a.toByteArray();
    }

    public String b(at atVar) throws az {
        return new String(a(atVar));
    }

    public bc(bu buVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f12155a = byteArrayOutputStream;
        ce ceVar = new ce(byteArrayOutputStream);
        this.b = ceVar;
        this.c = buVar.a(ceVar);
    }

    public String a(at atVar, String str) throws az {
        try {
            return new String(a(atVar), str);
        } catch (UnsupportedEncodingException unused) {
            throw new az(Cgoto.m989case("JVM DOES NOT SUPPORT ENCODING: ", str));
        }
    }
}
