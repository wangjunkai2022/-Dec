package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentValues;
import android.database.Cursor;
import com.apk.Cgoto;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public abstract class u implements Cloneable {
    public static final SimpleDateFormat h = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    /* renamed from: a  reason: collision with root package name */
    public long f10650a = System.currentTimeMillis();
    public long b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;

    public static String a(long j) {
        return h.format(new Date(j));
    }

    public abstract u a(Cursor cursor);

    public abstract void a(ContentValues contentValues);

    public abstract void a(JSONObject jSONObject);

    public abstract String[] a();

    public final ContentValues b(ContentValues contentValues) {
        if (contentValues == null) {
            contentValues = new ContentValues();
        } else {
            contentValues.clear();
        }
        a(contentValues);
        return contentValues;
    }

    public abstract u b(JSONObject jSONObject);

    public abstract JSONObject b();

    public final String c() {
        String[] a2 = a();
        if (a2 != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("create table if not exists ");
            sb.append(d());
            sb.append("(");
            for (int i = 0; i < a2.length; i += 2) {
                sb.append(a2[i]);
                sb.append(" ");
                sb.append(a2[i + 1]);
                sb.append(",");
            }
            sb.delete(sb.length() - 1, sb.length());
            sb.append(")");
            return sb.toString();
        }
        return null;
    }

    public abstract String d();

    public final JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("k_cls", d());
            a(jSONObject);
        } catch (JSONException e) {
            l0.a(e);
        }
        return jSONObject;
    }

    public final JSONObject f() {
        try {
            this.g = a(this.f10650a);
            return b();
        } catch (JSONException e) {
            l0.a(e);
            return null;
        }
    }

    /* renamed from: g */
    public u clone() {
        try {
            return (u) super.clone();
        } catch (CloneNotSupportedException e) {
            l0.a(e);
            return null;
        }
    }

    public String h() {
        StringBuilder m1016super = Cgoto.m1016super("sid:");
        m1016super.append(this.c);
        return m1016super.toString();
    }

    public String toString() {
        if (l0.f10634a) {
            String d = d();
            if (!getClass().getSimpleName().equalsIgnoreCase(d)) {
                StringBuilder m1025while = Cgoto.m1025while(d, ", ");
                m1025while.append(getClass().getSimpleName());
                d = m1025while.toString();
            }
            String str = this.c;
            if (str != null) {
                int indexOf = str.indexOf("-");
                if (indexOf >= 0) {
                    str = str.substring(0, indexOf);
                }
            } else {
                str = "-";
            }
            return "{" + d + ", " + h() + ", " + str + ", " + this.f10650a + "}";
        }
        return super.toString();
    }

    public static u a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return v.e.get(jSONObject.optString("k_cls", "")).clone().b(jSONObject);
        } catch (Throwable th) {
            l0.a(th);
            return null;
        }
    }
}
