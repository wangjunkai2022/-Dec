package bykvm_19do.bykvm_19do.bykvm_19do;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class n extends e2 {
    public n() {
        super(true, false);
    }

    private boolean b() {
        return (!TextUtils.isEmpty(Build.DISPLAY) && Build.DISPLAY.contains("Flyme")) || "flyme".equals(Build.USER);
    }

    private String c() {
        Throwable th;
        String str;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        String str2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.build.version.emui").getInputStream()), 1024);
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
        try {
            str2 = bufferedReader.readLine();
            bufferedReader.close();
            try {
                bufferedReader.close();
            } catch (IOException unused) {
            }
            return str2;
        } catch (Throwable th3) {
            str = str2;
            bufferedReader2 = bufferedReader;
            th = th3;
            try {
                l0.a(th);
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused2) {
                    }
                }
                return str;
            } catch (Throwable th4) {
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th4;
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.e2
    public boolean a(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder(16);
        if (a()) {
            sb.append("MIUI-");
        } else if (b()) {
            sb.append("FLYME-");
        } else {
            String c = c();
            if (i.a(c)) {
                sb.append("EMUI-");
            }
            if (!TextUtils.isEmpty(c)) {
                sb.append(c);
                sb.append("-");
            }
        }
        sb.append(Build.VERSION.INCREMENTAL);
        jSONObject.put("rom", sb.toString());
        return true;
    }

    private boolean a() {
        try {
            return Class.forName("miui.os.Build").getName().length() > 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
