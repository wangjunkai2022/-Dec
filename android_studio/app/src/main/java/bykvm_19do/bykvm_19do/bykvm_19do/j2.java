package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class j2 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f10632a;
    public final h b;
    public final SharedPreferences c;
    public final SharedPreferences d;
    public final SharedPreferences e;
    public volatile JSONObject f;
    public volatile JSONObject g;

    public j2(Context context, h hVar) {
        this.f10632a = context;
        this.b = hVar;
        this.e = context.getSharedPreferences("embed_applog_stats", 0);
        this.c = this.f10632a.getSharedPreferences("embed_header_custom", 0);
        this.d = this.f10632a.getSharedPreferences("embed_last_sp_session", 0);
    }

    public int A() {
        return this.e.getInt("bav_monitor_rate", 0);
    }

    public String B() {
        return this.b.e();
    }

    public String C() {
        return this.b.j();
    }

    public String D() {
        return this.b.k();
    }

    public String E() {
        return this.b.l();
    }

    public String F() {
        return this.b.q();
    }

    public String G() {
        return this.c.getString("header_custom_info", null);
    }

    public String H() {
        return this.c.getString("ab_sdk_version", "");
    }

    public String I() {
        return this.c.getString("user_unique_id", null);
    }

    public boolean J() {
        if (this.b.p() == 0) {
            String a2 = m0.a(this.f10632a);
            if (!TextUtils.isEmpty(a2)) {
                this.b.a(a2.contains(":") ? 2 : 1);
            } else {
                this.b.a(0);
            }
        }
        return this.b.p() == 1;
    }

    public long K() {
        return this.e.getLong("abtest_fetch_interval", 0L);
    }

    public String L() {
        if (!TextUtils.isEmpty(this.b.d())) {
            return this.b.d();
        }
        return this.c.getString("ab_version", null);
    }

    public JSONObject M() {
        JSONObject jSONObject = this.f;
        if (jSONObject == null) {
            synchronized (this) {
                try {
                    if (N()) {
                        jSONObject = new JSONObject(this.c.getString("ab_configure", ""));
                    }
                } catch (JSONException unused) {
                }
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                this.f = jSONObject;
            }
        }
        return jSONObject;
    }

    public boolean N() {
        return this.e.getBoolean("bav_ab_config", false);
    }

    public boolean O() {
        return this.e.getBoolean("bav_log_collect", false);
    }

    public long P() {
        return this.e.getLong("session_interval", 30000L);
    }

    public long Q() {
        return this.e.getLong("batch_event_interval", 30000L);
    }

    public String R() {
        return null;
    }

    public String S() {
        return this.b.r();
    }

    public void a(long j) {
    }

    public void a(String str, int i) {
        this.d.edit().putString("session_last_day", str).putInt("session_order", i).apply();
    }

    public void a(HashSet<String> hashSet, HashSet<String> hashSet2) {
    }

    public boolean a(ArrayList<u> arrayList) {
        return true;
    }

    public long b() {
        return FragmentStateAdapter.GRACE_WINDOW_TIME_MS;
    }

    public void b(JSONObject jSONObject) {
        this.c.edit().putString("header_custom_info", jSONObject != null ? jSONObject.toString() : "").apply();
    }

    public void c(JSONObject jSONObject) {
        StringBuilder m1016super = Cgoto.m1016super("setAbConfig, ");
        m1016super.append(jSONObject.toString());
        l0.a(m1016super.toString(), null);
        this.c.edit().putString("ab_configure", jSONObject.toString()).apply();
        this.f = null;
    }

    public int d() {
        return this.b.x();
    }

    public int e() {
        return this.b.u();
    }

    public int f() {
        return this.b.m();
    }

    public String g() {
        return this.b.w();
    }

    public String h() {
        return this.b.t();
    }

    public String i() {
        return this.b.a();
    }

    public String j() {
        return this.b.c();
    }

    public String k() {
        return this.b.b();
    }

    public String l() {
        return this.b.y();
    }

    public String m() {
        return this.b.h() == null ? "" : this.b.h();
    }

    public String n() {
        return this.b.g() == null ? "" : this.b.g();
    }

    public boolean o() {
        return this.b.A();
    }

    public h p() {
        return this.b;
    }

    public CharSequence q() {
        return this.b.z();
    }

    public String r() {
        return this.b.n();
    }

    public boolean s() {
        return this.b.C();
    }

    public String t() {
        return this.b.f();
    }

    public String u() {
        return this.d.getString("session_last_day", "");
    }

    public int v() {
        return this.d.getInt("session_order", 0);
    }

    public SharedPreferences w() {
        return this.e;
    }

    public boolean x() {
        return this.b.B();
    }

    public JSONObject y() {
        return this.g;
    }

    public long z() {
        return this.e.getLong("app_log_last_config_time", 0L);
    }

    public void a(JSONObject jSONObject) {
        if (l0.f10634a) {
            StringBuilder m1016super = Cgoto.m1016super("setConfig, ");
            m1016super.append(jSONObject.toString());
            l0.a(m1016super.toString(), null);
        }
        this.g = jSONObject;
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = this.e.edit();
        long optInt = jSONObject.optInt("session_interval", 0);
        if (optInt > 0 && optInt <= 604800) {
            edit.putLong("session_interval", optInt * 1000);
        } else {
            edit.remove("session_interval");
        }
        long optInt2 = jSONObject.optInt("batch_event_interval", 0);
        if (optInt2 > 0 && optInt2 <= 604800) {
            edit.putLong("batch_event_interval", optInt2 * 1000);
        } else {
            edit.remove("batch_event_interval");
        }
        int optInt3 = jSONObject.optInt("send_launch_timely", 0);
        if (optInt3 > 0 && optInt3 <= 604800) {
            edit.putInt("send_launch_timely", optInt3);
        } else {
            edit.remove("send_launch_timely");
        }
        long optInt4 = jSONObject.optInt("abtest_fetch_interval", 0);
        if (optInt4 > 20 && optInt4 <= 604800) {
            edit.putLong("abtest_fetch_interval", optInt4 * 1000);
        } else {
            edit.remove("abtest_fetch_interval");
        }
        if (jSONObject.optBoolean("bav_log_collect", true)) {
            edit.putBoolean("bav_log_collect", true);
        } else {
            edit.remove("bav_log_collect");
        }
        if (jSONObject.optBoolean("bav_ab_config", false)) {
            edit.putBoolean("bav_ab_config", true);
        } else {
            edit.remove("bav_ab_config");
        }
        int optInt5 = jSONObject.optInt("bav_monitor_rate", 0);
        if (optInt5 > 0 && optInt5 <= 100) {
            edit.putInt("bav_monitor_rate", optInt5);
            k0.a(true);
        } else {
            edit.remove("bav_monitor_rate");
            k0.a(false);
        }
        edit.putLong("app_log_last_config_time", currentTimeMillis);
        edit.apply();
    }

    public String c() {
        return this.b.i();
    }

    public String a() {
        return this.e.getString("user_agent", null);
    }
}
