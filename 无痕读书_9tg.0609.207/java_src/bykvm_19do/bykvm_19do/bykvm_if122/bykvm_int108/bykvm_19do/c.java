package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.v;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.config.DefaultAdapterClasses;
import com.bytedance.msdk.adapter.config.IGMInitAdnResult;
import com.bytedance.msdk.adapter.config.ITTAdapterConfiguration;
import com.bytedance.msdk.adapter.config.TTOnNetworkInitializationFinishedListener;
import com.bytedance.msdk.api.AdError;
import java.util.Map;
/* compiled from: AdInitBaseADN.java */
/* loaded from: classes8.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public Context f10971a;
    public IGMInitAdnResult b;

    /* compiled from: AdInitBaseADN.java */
    /* loaded from: classes8.dex */
    public class a implements IGMInitAdnResult {
        public a() {
        }

        @Override // com.bytedance.msdk.adapter.config.IGMInitAdnResult
        public void fail(@NonNull AdError adError) {
            if (c.this.b != null) {
                c.this.b.fail(adError);
            }
            if (adError != null) {
                String b = c.this.b();
                Boolean bool = Boolean.FALSE;
                StringBuilder m1016super = Cgoto.m1016super("errorCode = ");
                m1016super.append(adError.code);
                m1016super.append(" errorMessage = ");
                m1016super.append(adError.message);
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(b, new Pair(bool, m1016super.toString()));
            }
        }

        @Override // com.bytedance.msdk.adapter.config.IGMInitAdnResult
        public void success() {
            if (c.this.b != null) {
                c.this.b.success();
            }
            if (TextUtils.equals(c.this.b(), "pangle")) {
                v.d(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(c.this.b(), new Pair(Boolean.TRUE, ""));
        }
    }

    /* compiled from: AdInitBaseADN.java */
    /* loaded from: classes8.dex */
    public class b implements TTOnNetworkInitializationFinishedListener {
        public b() {
        }

        @Override // com.bytedance.msdk.adapter.config.TTOnNetworkInitializationFinishedListener
        public void onNetworkInitializationFinished(@NonNull Class<? extends ITTAdapterConfiguration> cls, @NonNull AdError adError) {
            if (TextUtils.equals(c.this.b(), "pangle")) {
                v.d(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
            }
            if (adError.code == 30011) {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(c.this.b(), new Pair(Boolean.TRUE, ""));
                return;
            }
            String b = c.this.b();
            Boolean bool = Boolean.FALSE;
            StringBuilder m1016super = Cgoto.m1016super("errorCode = ");
            m1016super.append(adError.code);
            m1016super.append(" errorMessage = ");
            m1016super.append(adError.message);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(b, new Pair(bool, m1016super.toString()));
        }
    }

    public c(Context context) {
        this.f10971a = context;
    }

    private void g() {
        try {
            if (this.f10971a != null) {
                String a2 = a();
                if (TextUtils.isEmpty(a2)) {
                    Map<String, ITTAdapterConfiguration> e = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
                    if (e != null) {
                        ITTAdapterConfiguration iTTAdapterConfiguration = e.get(DefaultAdapterClasses.getClassNameByAdnName(b()));
                        if (iTTAdapterConfiguration != null) {
                            Map<String, Object> d = d();
                            if (d != null) {
                                if (iTTAdapterConfiguration.isNewInitFunction()) {
                                    a(iTTAdapterConfiguration, d);
                                    return;
                                } else {
                                    b(iTTAdapterConfiguration, d);
                                    return;
                                }
                            }
                            throw new Exception("adn init getConfig() is null");
                        }
                        throw new Exception("adn init configuration is null");
                    }
                    throw new Exception("adn init adpters is null");
                }
                throw new Exception("adn init " + a2);
            }
            throw new Exception("adn init context is null");
        } catch (Throwable th) {
            th.printStackTrace();
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(b(), new Pair(Boolean.FALSE, th.toString()));
        }
    }

    public abstract String a();

    public abstract String b();

    public void b(IGMInitAdnResult iGMInitAdnResult) {
        this.b = iGMInitAdnResult;
        f();
    }

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a c() {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().a(b());
    }

    public abstract Map<String, Object> d();

    public void e() {
        a(false);
    }

    public void f() {
        a(true);
    }

    public void a(IGMInitAdnResult iGMInitAdnResult) {
        this.b = iGMInitAdnResult;
        e();
    }

    private void b(ITTAdapterConfiguration iTTAdapterConfiguration, Map<String, Object> map) {
        iTTAdapterConfiguration.initializeNetwork(this.f10971a, map, new b());
    }

    private void a(boolean z) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().a(b());
        if (z || a2 != null) {
            g();
        }
    }

    private void a(ITTAdapterConfiguration iTTAdapterConfiguration, Map<String, Object> map) {
        iTTAdapterConfiguration.initAdn(this.f10971a, map, new a());
    }
}
