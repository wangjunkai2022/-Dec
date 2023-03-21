package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.m;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i;
import com.bytedance.pangle.servermanager.AbsServerManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ANRManager.java */
/* loaded from: classes8.dex */
public class c {
    public static volatile boolean f = true;

    /* renamed from: a  reason: collision with root package name */
    public a f11045a;
    public final Context b;
    public volatile long c;
    public volatile boolean d = false;
    public final SharedPreferences e;

    public c(Context context) {
        if (context != null && (context instanceof Application)) {
            this.b = context;
            SharedPreferences sharedPreferences = context.getSharedPreferences("anr_monitor_table", 0);
            this.e = sharedPreferences;
            this.c = sharedPreferences.getLong("trace_anr_happen_time", 0L);
            g.a(100, 100);
            return;
        }
        throw new IllegalArgumentException("context must not be null or not application");
    }

    public void a() {
        if (this.d) {
            return;
        }
        new d(this);
        this.d = true;
    }

    public boolean a(int i, String str, int i2) {
        JSONObject jSONObject;
        JSONObject a2;
        JSONArray q = g.q();
        long uptimeMillis = SystemClock.uptimeMillis();
        JSONObject c = g.c(uptimeMillis);
        JSONArray a3 = g.a(100, uptimeMillis);
        try {
            jSONObject = e.a(f);
        } catch (JSONException e) {
            e.printStackTrace();
            jSONObject = null;
        }
        String a4 = e.a(this.b, i2);
        if (TextUtils.isEmpty(a4)) {
            return false;
        }
        if (i == 200 && (a2 = a(str, Process.myPid(), this.b.getPackageName())) != null && a2.length() > 0) {
            jSONObject = a2;
        }
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                jSONObject.put("pid", Process.myPid());
                jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, this.b.getPackageName());
                jSONObject.put("is_remote_process", 0);
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a aVar = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a(new JSONObject());
                aVar.a("data", jSONObject.toString());
                aVar.a("is_anr", (Object) 1);
                aVar.a("timestamp", Long.valueOf(System.currentTimeMillis()));
                aVar.a("event_type", "anr");
                aVar.a("history_message", q);
                aVar.a("current_message", c);
                aVar.a("pending_messages", a3);
                aVar.a("anr_time", Long.valueOf(System.currentTimeMillis()));
                aVar.a("crash_time", Long.valueOf(System.currentTimeMillis()));
                aVar.a("anr_info", a4);
                aVar.a("all_thread_stacks", m.a((String) null));
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a a5 = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do.e.a().a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.ANR, aVar);
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.d.a(this.b, bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.ANR.a(), (String) null);
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.a.a().b(a5.a());
                a(a4);
            } catch (Throwable th) {
                j.b(th);
            }
        }
        return true;
    }

    public static void a(String str) {
        for (bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.f fVar : i.d().a()) {
            fVar.a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c.ANR, str, null);
        }
    }

    public JSONObject a(String str, int i, String str2) {
        BufferedReader bufferedReader;
        int i2;
        BufferedReader bufferedReader2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (file.exists() && file.canRead()) {
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
            } catch (Exception e) {
                e = e;
                bufferedReader = null;
            } catch (Throwable th) {
                th = th;
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader2);
                throw th;
            }
            try {
                try {
                    Pattern compile = Pattern.compile("-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}");
                    Pattern compile2 = Pattern.compile("-{5}\\send\\s\\d+\\s-{5}");
                    Pattern compile3 = Pattern.compile("Cmd\\sline:\\s(\\S+)");
                    Pattern compile4 = Pattern.compile("\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*");
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
                    boolean z = false;
                    Object[] a2 = a(bufferedReader, compile);
                    if (a2 == null) {
                        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
                        return null;
                    }
                    long parseLong = Long.parseLong(a2[1].toString().split("\\s")[2]);
                    long time = simpleDateFormat.parse(a2[1].toString().split("\\s")[4] + " " + a2[1].toString().split("\\s")[5]).getTime();
                    Object[] a3 = a(bufferedReader, compile3);
                    if (a3 == null) {
                        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
                        return null;
                    }
                    String str3 = a3[1].toString().split("\\s")[2];
                    if (parseLong == i && str3.equalsIgnoreCase(str2)) {
                        if (this.c != 0 && Math.abs(this.c - time) < 20000) {
                            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
                            return null;
                        }
                        this.c = time;
                        if (this.e != null) {
                            this.e.edit().putLong("trace_anr_happen_time", this.c).apply();
                        }
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("anrTime", time);
                        while (true) {
                            Object[] a4 = a(bufferedReader, compile2, compile4);
                            if (a4 == null || a4[0] != compile4) {
                                break;
                            }
                            Matcher matcher = Pattern.compile("\".+\"").matcher(a4[1].toString());
                            String substring = matcher.find() ? matcher.group().substring(1, matcher.group().length() - 1) : "";
                            Matcher matcher2 = Pattern.compile("tid=\\d+").matcher(a4[1].toString());
                            if (matcher2.find()) {
                                String group = matcher2.group();
                                i2 = Integer.parseInt(group.substring(group.indexOf("=") + 1));
                            } else {
                                i2 = -1;
                            }
                            String a5 = a(bufferedReader);
                            if (i2 != -1 && !TextUtils.isEmpty(substring) && !TextUtils.isEmpty(a5) && substring.equalsIgnoreCase("main")) {
                                jSONObject.put("mainStackFromTrace", a5);
                                z = true;
                                break;
                            }
                        }
                        if (!z) {
                            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
                            return null;
                        }
                        jSONObject.put("thread_number", 1);
                        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
                        return jSONObject;
                    }
                    bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader2 = bufferedReader;
                    bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader2);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f.a(bufferedReader);
                return null;
            }
        }
        return null;
    }

    private Object[] a(BufferedReader bufferedReader, Pattern... patternArr) throws IOException {
        if (bufferedReader != null && patternArr != null && patternArr.length > 0) {
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    int length = patternArr.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            Pattern pattern = patternArr[i];
                            if (pattern.matcher(readLine).matches()) {
                                return new Object[]{pattern, readLine};
                            }
                            i++;
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return null;
    }

    private String a(BufferedReader bufferedReader) throws IOException {
        if (bufferedReader == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null || readLine.trim().length() <= 0) {
                break;
            }
            sb.append(readLine);
            sb.append("\n");
        }
        return sb.toString();
    }
}
