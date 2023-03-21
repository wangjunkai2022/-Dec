package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12;

import com.baidu.tts.loopj.HttpDelete;
import com.baidu.tts.loopj.HttpPatch;

/* compiled from: HttpMethod.java */
/* loaded from: classes8.dex */
public final class f {
    public static boolean a(String str) {
        return str.equals("POST") || str.equals(HttpPatch.METHOD_NAME) || str.equals("PUT") || str.equals(HttpDelete.METHOD_NAME) || str.equals("MOVE");
    }

    public static boolean b(String str) {
        return e(str) || str.equals("OPTIONS") || str.equals(HttpDelete.METHOD_NAME) || str.equals("PROPFIND") || str.equals("MKCOL") || str.equals("LOCK");
    }

    public static boolean c(String str) {
        return !str.equals("PROPFIND");
    }

    public static boolean d(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean e(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals(HttpPatch.METHOD_NAME) || str.equals("PROPPATCH") || str.equals("REPORT");
    }
}
