package com.baidu.tts.auth;

import android.content.Context;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.versionedparcelable.VersionedParcel;
import com.apk.Cgoto;
import com.baidu.tts.aop.tts.TtsError;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.n;
import com.baidu.tts.jni.EmbeddedSynthesizerEngine;
import com.baidu.tts.tools.SharedPreferencesUtils;
import com.baidu.tts.tools.StringTool;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.io.File;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: OfflineAuth.java */
/* loaded from: classes8.dex */
public class d implements com.baidu.tts.k.b<d, a> {

    /* renamed from: a  reason: collision with root package name */
    public String f11130a;
    public String b;

    /* compiled from: OfflineAuth.java */
    /* loaded from: classes8.dex */
    public static class a implements com.baidu.tts.k.a {

        /* renamed from: a  reason: collision with root package name */
        public int f11131a;
        public int b = -1;
        public String c;
        public String d;
        public TtsError e;

        public int a() {
            int i = this.f11131a;
            if (i >= 10000) {
                return i - 10000;
            }
            return 0;
        }

        public void b(String str) {
            this.d = str;
        }

        public String c() {
            if (e()) {
                return "valid official";
            }
            if (d()) {
                return "valid temp";
            }
            switch (this.f11131a) {
                case -10:
                    return "temp license expired";
                case VersionedParcel.EX_PARCELABLE /* -9 */:
                default:
                    return "not a valid result";
                case ZeusPluginEventCallback.RESULT_INSTALLATION_FAILED_DEX_OPT /* -8 */:
                    return "license not exist or invalid license";
                case -7:
                    return "platform unmatched";
                case -6:
                    return "will expire after a month";
                case -5:
                    return "official license expired";
                case -4:
                    return "cuid unmatched";
                case -3:
                    return "sign or appcode unmatched";
                case -2:
                    return "package name unmatched";
            }
        }

        public boolean d() {
            return this.f11131a >= 10000;
        }

        public boolean e() {
            int i = this.f11131a;
            return i >= 0 && i < 10000;
        }

        public boolean f() {
            int i = this.f11131a;
            return i == -5 || i == -6;
        }

        @Override // com.baidu.tts.k.a
        public boolean g() {
            if (!StringTool.isEmpty(this.c) && new File(this.c).exists()) {
                com.baidu.tts.h.b.b a2 = com.baidu.tts.h.b.b.a();
                Context h = a2.h();
                String i = a2.i();
                byte[] bArr = new byte[32];
                LoggerProxy.d("OfflineAuth", "verify license before ");
                this.f11131a = EmbeddedSynthesizerEngine.bdTTSVerifyLicense(h, this.d, i, this.c, bArr);
                StringBuilder m1016super = Cgoto.m1016super("verify result=");
                m1016super.append(this.f11131a);
                LoggerProxy.d("OfflineAuth", m1016super.toString());
                String str = new String(bArr);
                LoggerProxy.d("OfflineAuth", "get appIdStr=" + str);
                try {
                    int indexOf = str.indexOf("end");
                    if (indexOf != -1) {
                        new com.baidu.tts.e.b(h, str.substring(0, indexOf)).start();
                    }
                } catch (Exception e) {
                    StringBuilder m1016super2 = Cgoto.m1016super("embedded statistics start exception=");
                    m1016super2.append(e.toString());
                    LoggerProxy.d("OfflineAuth", m1016super2.toString());
                }
                return this.f11131a >= 0;
            }
            return false;
        }

        public void a(int i) {
            this.b = i;
        }

        public TtsError b() {
            return this.e;
        }

        public void a(String str) {
            this.c = str;
        }

        public void a(TtsError ttsError) {
            if (ttsError != null) {
                LoggerProxy.d("OfflineAuth", "this=" + this + "--error=" + ttsError.getDetailMessage());
            }
            this.e = ttsError;
        }
    }

    public String a() {
        return this.f11130a;
    }

    public String b() {
        return this.b;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c */
    public a call() throws Exception {
        a aVar = new a();
        aVar.a(this.b);
        aVar.b(this.f11130a);
        if (!aVar.g()) {
            Context h = com.baidu.tts.h.b.b.a().h();
            LoggerProxy.d("OfflineAuth", "+ downloadLicense");
            int i = -1;
            if (System.currentTimeMillis() - SharedPreferencesUtils.getLong(h, "getLicense_time", 0L) > SharedPreferencesUtils.getLong(h, "getLicense_expires", 0L)) {
                try {
                    FutureTask futureTask = new FutureTask(new c(this.f11130a, this.b));
                    new Thread(futureTask).start();
                    i = ((Integer) futureTask.get(ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS, TimeUnit.MILLISECONDS)).intValue();
                } catch (InterruptedException e) {
                    LoggerProxy.d("OfflineAuth", e.toString());
                } catch (ExecutionException e2) {
                    LoggerProxy.d("OfflineAuth", e2.getCause().toString());
                } catch (TimeoutException e3) {
                    LoggerProxy.d("OfflineAuth", e3.toString());
                }
            }
            LoggerProxy.d("OfflineAuth", "- downloadLicense ret = " + i);
            aVar.a(i);
            if (i < 0) {
                com.baidu.tts.h.a.c a2 = com.baidu.tts.h.a.c.a();
                n nVar = n.OFFLINE_ENGINE_DOWNLOAD_LICENSE_FAILED;
                StringBuilder m1016super = Cgoto.m1016super("appCode=");
                m1016super.append(this.f11130a);
                m1016super.append("--licensePath=");
                m1016super.append(this.b);
                aVar.a(a2.a(nVar, i, m1016super.toString()));
            } else {
                aVar.g();
            }
        }
        return aVar;
    }

    public void a(String str) {
        this.f11130a = str;
    }

    public void b(String str) {
        this.b = str;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(d dVar) {
        return (StringTool.isEqual(this.f11130a, dVar.a()) && StringTool.isEqual(this.b, dVar.b())) ? 0 : 1;
    }
}
