package com.bytedance.pangle.d;

import com.bytedance.pangle.c.e;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* loaded from: classes8.dex */
public final class a {
    public static boolean a(String[] strArr) {
        if (strArr.length <= 0) {
            return false;
        }
        try {
            Process exec = Runtime.getRuntime().exec(strArr);
            InputStream errorStream = exec.getErrorStream();
            InputStream inputStream = exec.getInputStream();
            a(errorStream);
            a(inputStream);
            if (exec.waitFor() != 0) {
                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "exec dex2oat failed : " + strArr.toString());
                return false;
            }
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void a(final InputStream inputStream) {
        e.f11300a.execute(new Runnable() { // from class: com.bytedance.pangle.d.a.1
            @Override // java.lang.Runnable
            public final void run() {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            return;
                        }
                        ZeusLogger.d(ZeusLogger.TAG_INSTALL, "exec cmd info : ".concat(readLine));
                    } catch (IOException e) {
                        ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "execCmd consumeInputStream failed : ".concat(String.valueOf(e)));
                        return;
                    } finally {
                        f.a(bufferedReader);
                    }
                }
            }
        });
    }
}
