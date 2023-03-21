package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.os.SystemProperties;
import android.util.Base64;
import android.util.Log;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import com.baidu.tts.client.SpeechSynthesizer;
import com.bytedance.mapplog_dr.VivoIdentifier;

/* loaded from: classes8.dex */
public final class e1 implements a1 {
    public static final String b = a("cGVyc2lzdC5zeXMuaWRlbnRpZmllcmlkLnN1cHBvcnRlZA==");
    public static final o0<Boolean> c = new a();

    /* renamed from: a  reason: collision with root package name */
    public VivoIdentifier f10620a;

    /* loaded from: classes8.dex */
    public static class a extends o0<Boolean> {
        @Override // bykvm_19do.bykvm_19do.bykvm_19do.o0
        /* renamed from: c */
        public Boolean a(Object... objArr) {
            return Boolean.valueOf("1".equals(e1.b(e1.b, SpeechSynthesizer.REQUEST_DNS_OFF)));
        }
    }

    public e1(Context context) {
        try {
            l1.a(context);
        } catch (Throwable unused) {
        }
        try {
            VivoIdentifier vivoIdentifier = new VivoIdentifier();
            this.f10620a = vivoIdentifier;
            vivoIdentifier.preloadOaid(context);
        } catch (Throwable th) {
            t0.b("OaidVivo", Log.getStackTraceString(th));
        }
    }

    public static boolean a() {
        return c.b(new Object[0]).booleanValue();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public a1.a b(Context context) {
        VivoIdentifier vivoIdentifier = this.f10620a;
        if (vivoIdentifier == null) {
            return null;
        }
        return vivoIdentifier.getOaid(context);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public boolean a(Context context) {
        return a();
    }

    public static String a(String str) {
        try {
            return new String(Base64.decode(str.getBytes("UTF-8"), 2));
        } catch (Exception unused) {
            return "";
        }
    }

    public static String b(String str, String str2) {
        try {
            return SystemProperties.get(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }
}
