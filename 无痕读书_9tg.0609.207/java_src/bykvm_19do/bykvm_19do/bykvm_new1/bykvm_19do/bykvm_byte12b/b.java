package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.f;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i;
import com.apk.Cgoto;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.bytedance.mapplog.util.TTEncryptUtils;
import com.qq.e.comm.adevent.AdEventType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CrashUploader.java */
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11052a;
    public static c b;

    /* compiled from: CrashUploader.java */
    /* loaded from: classes8.dex */
    public enum a {
        NONE(0),
        GZIP(1),
        DEFLATER(2);

        a(int i) {
        }
    }

    /* compiled from: CrashUploader.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public enum EnumC0054b {
        NONE(0),
        MOBILE(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        WIFI(4),
        MOBILE_4G(5);

        EnumC0054b(int i) {
        }
    }

    public static e a(long j, String str, byte[] bArr, a aVar, String str2, boolean z) throws IOException {
        if (str == null) {
            return new e(AdEventType.VIDEO_CACHE);
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        int length = bArr.length;
        String str3 = null;
        if (a.GZIP == aVar && length > 128) {
            bArr = c(bArr);
            str3 = AsyncHttpClient.ENCODING_GZIP;
        } else if (a.DEFLATER == aVar && length > 128) {
            bArr = b(bArr);
            str3 = "deflate";
        }
        String str4 = str3;
        byte[] bArr2 = bArr;
        if (bArr2 == null) {
            return new e(AdEventType.VIDEO_START);
        }
        if (z) {
            byte[] m3552do = TTEncryptUtils.m3552do(bArr2, bArr2.length);
            if (m3552do != null) {
                if (TextUtils.isEmpty(new URL(str).getQuery())) {
                    if (!str.endsWith("?")) {
                        str = Cgoto.m989case(str, "?");
                    }
                } else if (!str.endsWith("&")) {
                    str = Cgoto.m989case(str, "&");
                }
                str = Cgoto.m989case(str, "tt_data=a");
                str2 = "application/octet-stream;tt-data=a";
                bArr2 = m3552do;
            }
            return a(str, bArr2, str2, str4, "POST", true, true);
        }
        return a(str, bArr2, str2, str4, "POST", true, false);
    }

    public static boolean a() {
        return true;
    }

    public static boolean b() {
        return true;
    }

    public static byte[] b(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        while (!deflater.finished()) {
            byteArrayOutputStream.write(bArr2, 0, deflater.deflate(bArr2));
        }
        deflater.end();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] c(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        try {
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                j.b(th);
                gZIPOutputStream.close();
                return null;
            } catch (Throwable th2) {
                gZIPOutputStream.close();
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x010e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.e a(java.lang.String r5, byte[] r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.b.a(java.lang.String, byte[], java.lang.String, java.lang.String, java.lang.String, boolean, boolean):bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.e");
    }

    public static e a(byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            String str = new String(bArr, Charset.forName("utf-8"));
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.length() > 0) {
                    return new e(0, jSONObject);
                }
                return new e((int) AdEventType.VIDEO_PAUSE, str);
            } catch (JSONException unused) {
                return new e((int) AdEventType.VIDEO_PAUSE, str);
            }
        }
        return new e(AdEventType.VIDEO_RESUME);
    }

    public static e a(String str, String str2) {
        return a(str, str2, a());
    }

    public static String a(Map map) {
        return i.f().a();
    }

    public static e a(String str, String str2, boolean z) {
        try {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                return a(2097152L, str, str2.getBytes(), a.GZIP, "application/json; charset=utf-8", z);
            }
            return new e(AdEventType.VIDEO_CACHE);
        } catch (Throwable th) {
            j.b(th);
            return new e((int) AdEventType.VIDEO_ERROR, th);
        }
    }

    public static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 != read) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                inputStream.close();
                try {
                    return byteArrayOutputStream.toByteArray();
                } finally {
                    f.a(byteArrayOutputStream);
                }
            }
        }
    }
}
