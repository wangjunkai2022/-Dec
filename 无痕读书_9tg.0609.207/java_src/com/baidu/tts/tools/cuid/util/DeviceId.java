package com.baidu.tts.tools.cuid.util;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.system.ErrnoException;
import android.system.Os;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;
import com.baidu.tts.loopj.SimpleMultipartEntity;
import com.baidu.tts.tools.cuid.security.AESUtil;
import com.baidu.tts.tools.cuid.security.Base64;
import com.baidu.tts.tools.cuid.security.MD5Util;
import com.baidu.tts.tools.cuid.security.SHA1Util;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import javax.crypto.Cipher;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public final class DeviceId {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11266a = Cgoto.m989case(new String(Base64.decode(new byte[]{77, 122, 65, 121, 77, 84, 73, 120, 77, 68, 73, 61})), new String(Base64.decode(new byte[]{90, 71, 108, 106, 100, 87, 82, 112, 89, 87, 73, 61})));
    public static b e = null;
    public static boolean f = true;
    public final Context b;
    public int c = 0;
    public PublicKey d;

    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public ApplicationInfo f11269a;
        public int b;
        public boolean c;
        public boolean d;

        public a() {
            this.b = 0;
            this.c = false;
            this.d = false;
        }
    }

    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f11270a;
        public String b;
        public int c;
        public int d;

        public b() {
            this.c = 2;
            this.d = 0;
        }

        public static boolean a(int i) {
            return i >= 14;
        }

        public boolean b() {
            return a(this.d);
        }

        public String c() {
            try {
                return new JSONObject().put(DeviceId.m("ZGV2aWNlaWQ="), this.f11270a).put(DeviceId.m("aW1laQ=="), this.b).put(DeviceId.m("dmVy"), this.c).toString();
            } catch (JSONException e) {
                DeviceId.b(e);
                return null;
            }
        }

        public String d() {
            String str = this.b;
            if (TextUtils.isEmpty(str)) {
                str = SpeechSynthesizer.REQUEST_DNS_OFF;
            }
            return Cgoto.m998final(new StringBuilder(), this.f11270a, "|", str);
        }

        public static b b(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> keys = jSONObject.keys();
                String str2 = SpeechSynthesizer.REQUEST_DNS_OFF;
                String str3 = SpeechSynthesizer.REQUEST_DNS_OFF;
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!DeviceId.m("ZGV2aWNlaWQ=").equals(next) && !DeviceId.m("dmVy").equals(next)) {
                        str3 = jSONObject.optString(next, SpeechSynthesizer.REQUEST_DNS_OFF);
                    }
                }
                String string = jSONObject.getString(DeviceId.m("ZGV2aWNlaWQ="));
                int i = jSONObject.getInt(DeviceId.m("dmVy"));
                int length = TextUtils.isEmpty(str3) ? 0 : str3.length();
                if (!TextUtils.isEmpty(string)) {
                    b bVar = new b();
                    bVar.f11270a = string;
                    bVar.c = i;
                    bVar.d = length;
                    if (length < 14) {
                        if (!TextUtils.isEmpty(str3)) {
                            str2 = str3;
                        }
                        bVar.b = str2;
                    }
                    return bVar;
                }
            } catch (JSONException e) {
                DeviceId.b(e);
            }
            return null;
        }

        public boolean a() {
            return a(this.b);
        }

        public static boolean a(String str) {
            return TextUtils.isEmpty(str);
        }

        public static b b(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            b bVar = new b();
            bVar.f11270a = str;
            int length = TextUtils.isEmpty(str2) ? 0 : str2.length();
            bVar.d = length;
            if (length < 14) {
                if (TextUtils.isEmpty(str2)) {
                    str2 = SpeechSynthesizer.REQUEST_DNS_OFF;
                }
                bVar.b = str2;
            }
            return bVar;
        }
    }

    /* loaded from: classes8.dex */
    public static class c {
        public static boolean a(String str, int i) {
            try {
                Os.chmod(str, i);
                return true;
            } catch (ErrnoException e) {
                DeviceId.b(e);
                return false;
            } catch (Exception e2) {
                DeviceId.b(e2);
                return false;
            }
        }
    }

    public DeviceId(Context context) {
        this.b = context.getApplicationContext();
        a();
    }

    public static void b(Throwable th) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(String str) {
        try {
            return Settings.System.getString(this.b.getContentResolver(), str);
        } catch (Exception e2) {
            b(e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(String str) {
        return this.b.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    public static String getCUID(Context context) {
        return a(context).d();
    }

    public static String getDeviceID(Context context) {
        return a(context).f11270a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b h(String str) {
        String str2;
        String[] split;
        String str3 = "";
        File file = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
        if (!file.exists()) {
            file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid");
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append(SimpleMultipartEntity.STR_CR_LF);
            }
            bufferedReader.close();
            split = new String(AESUtil.decrypt(f11266a, f11266a, Base64.decode(sb.toString().getBytes()))).split("=");
        } catch (FileNotFoundException | IOException | Exception unused) {
        }
        if (split != null && split.length == 2) {
            str2 = split[0];
            try {
                str3 = split[1];
            } catch (FileNotFoundException | IOException | Exception unused2) {
            }
            return b.b(str3, str2);
        }
        str2 = "";
        return b.b(str3, str2);
    }

    public static String i(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Base64.encode(AESUtil.encrypt(f11266a, f11266a, str.getBytes()), "utf-8");
        } catch (UnsupportedEncodingException e2) {
            b(e2);
            return "";
        } catch (Exception e3) {
            b(e3);
            return "";
        }
    }

    public static String j(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new String(AESUtil.decrypt(f11266a, f11266a, Base64.decode(str.getBytes())));
        } catch (Exception e2) {
            b(e2);
            return "";
        }
    }

    public static void k(String str) {
        File file;
        File file2 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
        File file3 = new File(file2, ".cuid2");
        try {
            if (file2.exists() && !file2.isDirectory()) {
                Random random = new Random();
                File parentFile = file2.getParentFile();
                String name = file2.getName();
                do {
                    file = new File(parentFile, name + random.nextInt() + ".tmp");
                } while (file.exists());
                file2.renameTo(file);
                file.delete();
            }
            file2.mkdirs();
            FileWriter fileWriter = new FileWriter(file3, false);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException | Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String l(String str) {
        return SpeechSynthesizer.REQUEST_DNS_OFF;
    }

    public static String m(String str) {
        return new String(Base64.decode(str.getBytes()));
    }

    public static void setCuidDataShable(Context context, boolean z) {
        File file = new File(context.getApplicationContext().getFilesDir(), "libcuid.so");
        Context applicationContext = context.getApplicationContext();
        if (file.exists()) {
            if (e == null) {
                a(applicationContext, z);
            } else if (f != z) {
                a(applicationContext, z);
            }
        }
        f = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public boolean e(String str) {
        int i = (!f || Build.VERSION.SDK_INT >= 24) ? 0 : 1;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                fileOutputStream = this.b.openFileOutput("libcuid.so", i);
                fileOutputStream.write(str.getBytes());
                fileOutputStream.flush();
                try {
                    fileOutputStream.close();
                } catch (Exception e2) {
                    b(e2);
                }
                if (i == 0 && f) {
                    return c.a(new File(this.b.getFilesDir(), "libcuid.so").getAbsolutePath(), 436);
                }
                if (f) {
                    return true;
                }
                return c.a(new File(this.b.getFilesDir(), "libcuid.so").getAbsolutePath(), 432);
            } catch (Throwable th) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception e3) {
                        b(e3);
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            b(e4);
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception e5) {
                    b(e5);
                }
            }
            return false;
        }
    }

    private b d() {
        return b.b(f("com.baidu.deviceid"), f("bd_setting_i"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str, String str2) {
        try {
            return Settings.System.putString(this.b.getContentResolver(), str, str2);
        } catch (Exception e2) {
            b(e2);
            return false;
        }
    }

    private Runnable c(final b bVar) {
        return new Runnable() { // from class: com.baidu.tts.tools.cuid.util.DeviceId.2
            @Override // java.lang.Runnable
            public void run() {
                b bVar2 = new b();
                b bVar3 = bVar;
                bVar2.b = bVar3.b;
                bVar2.f11270a = bVar3.f11270a;
                File file = new File(DeviceId.this.b.getFilesDir(), "libcuid.so");
                String i = DeviceId.i(bVar2.c());
                if (file.exists()) {
                    b b2 = b.b(DeviceId.j(DeviceId.b(file)));
                    if (b2 != null) {
                        if (DeviceId.this.b(b2)) {
                            DeviceId.this.e(DeviceId.i(b2.c()));
                        }
                    } else if (b2 == null) {
                        DeviceId.this.e(i);
                    }
                } else {
                    DeviceId.this.e(i);
                }
                boolean c2 = DeviceId.this.c();
                if (c2) {
                    String f2 = DeviceId.this.f("com.baidu.deviceid.v2");
                    if (!TextUtils.isEmpty(f2)) {
                        b b3 = b.b(DeviceId.j(f2));
                        if (b3 != null) {
                            if (DeviceId.this.b(b3)) {
                                DeviceId.this.b("com.baidu.deviceid.v2", DeviceId.i(b3.c()));
                            }
                        } else if (b3 == null) {
                            DeviceId.this.b("com.baidu.deviceid.v2", i);
                        }
                    } else {
                        DeviceId.this.b("com.baidu.deviceid.v2", i);
                    }
                }
                boolean g = DeviceId.this.g(UMUtils.SD_PERMISSION);
                if (g) {
                    if (new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2").exists()) {
                        b e2 = DeviceId.this.e();
                        if (e2 != null) {
                            if (DeviceId.this.b(e2)) {
                                DeviceId.k(DeviceId.i(e2.c()));
                            }
                        } else if (e2 == null) {
                            DeviceId.k(i);
                        }
                    } else {
                        DeviceId.k(i);
                    }
                }
                if (c2) {
                    String f3 = DeviceId.this.f("bd_setting_i");
                    if (b.a(TextUtils.isEmpty(f3) ? 0 : f3.length())) {
                        DeviceId.this.b("bd_setting_i", "O");
                    } else if (b.a(f3)) {
                        DeviceId.this.b("bd_setting_i", SpeechSynthesizer.REQUEST_DNS_OFF);
                    }
                }
                if (g && new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid").exists()) {
                    b h = DeviceId.this.h(DeviceId.this.l(""));
                    if (h == null || !DeviceId.this.b(h)) {
                        return;
                    }
                    DeviceId.c(h.b, h.f11270a);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return g("android.permission.WRITE_SETTINGS");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x003f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(java.io.File r5) {
        /*
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            r1.<init>(r5)     // Catch: java.lang.Throwable -> L29 java.lang.Exception -> L2b
            r5 = 8192(0x2000, float:1.14794E-41)
            char[] r5 = new char[r5]     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3b
            java.io.CharArrayWriter r2 = new java.io.CharArrayWriter     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3b
            r2.<init>()     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3b
        Lf:
            int r3 = r1.read(r5)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3b
            if (r3 <= 0) goto L1a
            r4 = 0
            r2.write(r5, r4, r3)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3b
            goto Lf
        L1a:
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3b
            r1.close()     // Catch: java.lang.Exception -> L22
            goto L26
        L22:
            r0 = move-exception
            b(r0)
        L26:
            return r5
        L27:
            r5 = move-exception
            goto L2d
        L29:
            r5 = move-exception
            goto L3d
        L2b:
            r5 = move-exception
            r1 = r0
        L2d:
            b(r5)     // Catch: java.lang.Throwable -> L3b
            if (r1 == 0) goto L3a
            r1.close()     // Catch: java.lang.Exception -> L36
            goto L3a
        L36:
            r5 = move-exception
            b(r5)
        L3a:
            return r0
        L3b:
            r5 = move-exception
            r0 = r1
        L3d:
            if (r0 == 0) goto L47
            r0.close()     // Catch: java.lang.Exception -> L43
            goto L47
        L43:
            r0 = move-exception
            b(r0)
        L47:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.tools.cuid.util.DeviceId.b(java.io.File):java.lang.String");
    }

    public static void c(String str, String str2) {
        File file;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        File file2 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
        File file3 = new File(file2, ".cuid");
        try {
            if (file2.exists() && !file2.isDirectory()) {
                Random random = new Random();
                File parentFile = file2.getParentFile();
                String name = file2.getName();
                do {
                    file = new File(parentFile, name + random.nextInt() + ".tmp");
                } while (file.exists());
                file2.renameTo(file);
                file.delete();
            }
            file2.mkdirs();
            FileWriter fileWriter = new FileWriter(file3, false);
            fileWriter.write(Base64.encode(AESUtil.encrypt(f11266a, f11266a, (str + "=" + str2).getBytes()), "utf-8"));
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException | Exception unused) {
        }
    }

    public static String a(byte[] bArr) {
        if (bArr != null) {
            String str = "";
            for (byte b2 : bArr) {
                String hexString = Integer.toHexString(b2 & ExifInterface.MARKER);
                if (hexString.length() == 1) {
                    str = Cgoto.m996else(str, SpeechSynthesizer.REQUEST_DNS_OFF, hexString);
                } else {
                    str = Cgoto.m989case(str, hexString);
                }
            }
            return str.toLowerCase();
        }
        throw new IllegalArgumentException("Argument b ( byte array ) is null! ");
    }

    private String[] a(Signature[] signatureArr) {
        int length = signatureArr.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = a(SHA1Util.sha1(signatureArr[i].toByteArray()));
        }
        return strArr;
    }

    public static byte[] a(byte[] bArr, PublicKey publicKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(2, publicKey);
        return cipher.doFinal(bArr);
    }

    public static String b(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.f12304a);
        return TextUtils.isEmpty(string) ? "" : string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e() {
        File file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
        if (file.exists()) {
            String b2 = b(file);
            if (TextUtils.isEmpty(b2)) {
                return null;
            }
            try {
                return b.b(new String(AESUtil.decrypt(f11266a, f11266a, Base64.decode(b2.getBytes()))));
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private void a() {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(com.baidu.tts.tools.cuid.util.a.a());
                try {
                    this.d = CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream).getPublicKey();
                    byteArrayInputStream.close();
                } catch (Exception unused) {
                    byteArrayInputStream2 = byteArrayInputStream;
                    if (byteArrayInputStream2 != null) {
                        byteArrayInputStream2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (Exception e2) {
                            b(e2);
                        }
                    }
                    throw th;
                }
            } catch (Exception e3) {
                b(e3);
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            byteArrayInputStream = null;
            th = th3;
        }
    }

    private b b() {
        boolean z;
        String str;
        String m989case;
        List<a> a2 = a(new Intent("com.baidu.intent.action.GALAXY").setPackage(this.b.getPackageName()), true);
        boolean z2 = false;
        if (a2 == null || a2.size() == 0) {
            for (int i = 0; i < 3; i++) {
            }
            z = false;
        } else {
            z = a2.get(0).c;
            if (!z) {
                for (int i2 = 0; i2 < 3; i2++) {
                }
            }
        }
        File file = new File(this.b.getFilesDir(), "libcuid.so");
        b b2 = file.exists() ? b.b(j(b(file))) : null;
        if (b2 == null) {
            this.c |= 16;
            List<a> a3 = a(new Intent("com.baidu.intent.action.GALAXY"), z);
            if (a3 != null) {
                String str2 = "files";
                File filesDir = this.b.getFilesDir();
                if (!"files".equals(filesDir.getName())) {
                    filesDir.getAbsolutePath();
                    str2 = filesDir.getName();
                }
                for (a aVar : a3) {
                    if (!aVar.d) {
                        File file2 = new File(new File(aVar.f11269a.dataDir, str2), "libcuid.so");
                        if (file2.exists() && (b2 = b.b(j(b(file2)))) != null) {
                            break;
                        }
                    }
                }
            }
        }
        if (b2 == null) {
            b2 = b.b(j(f("com.baidu.deviceid.v2")));
        }
        boolean g = g("android.permission.READ_EXTERNAL_STORAGE");
        if (b2 == null && g) {
            this.c |= 2;
            b2 = e();
        }
        if (b2 == null) {
            this.c |= 8;
            b2 = d();
        }
        if (b2 == null && g) {
            this.c |= 1;
            str = l("");
            b2 = h(str);
            z2 = true;
        } else {
            str = null;
        }
        if (b2 == null) {
            this.c |= 4;
            if (!z2) {
                str = l("");
            }
            b2 = new b();
            String b3 = b(this.b);
            if (Build.VERSION.SDK_INT < 23) {
                m989case = Cgoto.m996else(str, b3, UUID.randomUUID().toString());
            } else {
                m989case = Cgoto.m989case("com.baidu", b3);
            }
            b2.f11270a = MD5Util.toMd5(m989case.getBytes(), true);
            b2.b = str;
        }
        b(b2);
        a(b2);
        return b2;
    }

    private List<a> a(Intent intent, boolean z) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = this.b.getPackageManager();
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers != null) {
            for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (activityInfo != null && activityInfo.applicationInfo != null) {
                    try {
                        Bundle bundle = packageManager.getReceiverInfo(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), 128).metaData;
                        if (bundle != null) {
                            String string = bundle.getString("galaxy_data");
                            if (!TextUtils.isEmpty(string)) {
                                byte[] decode = Base64.decode(string.getBytes("utf-8"));
                                JSONObject jSONObject = new JSONObject(new String(decode));
                                a aVar = new a();
                                aVar.b = jSONObject.getInt("priority");
                                aVar.f11269a = resolveInfo.activityInfo.applicationInfo;
                                if (this.b.getPackageName().equals(resolveInfo.activityInfo.applicationInfo.packageName)) {
                                    aVar.d = true;
                                }
                                if (z) {
                                    String string2 = bundle.getString("galaxy_sf");
                                    if (!TextUtils.isEmpty(string2)) {
                                        PackageInfo packageInfo = packageManager.getPackageInfo(resolveInfo.activityInfo.applicationInfo.packageName, 64);
                                        JSONArray jSONArray = jSONObject.getJSONArray("sigs");
                                        int length = jSONArray.length();
                                        String[] strArr = new String[length];
                                        for (int i = 0; i < length; i++) {
                                            strArr[i] = jSONArray.getString(i);
                                        }
                                        if (a(strArr, a(packageInfo.signatures))) {
                                            byte[] a2 = a(Base64.decode(string2.getBytes()), this.d);
                                            if (a2 != null && Arrays.equals(a2, SHA1Util.sha1(decode))) {
                                                aVar.c = true;
                                            }
                                        }
                                    }
                                }
                                arrayList.add(aVar);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        Collections.sort(arrayList, new Comparator<a>() { // from class: com.baidu.tts.tools.cuid.util.DeviceId.1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(a aVar2, a aVar3) {
                int i2 = aVar3.b - aVar2.b;
                if (i2 == 0) {
                    if (aVar2.d && aVar3.d) {
                        return 0;
                    }
                    if (aVar2.d) {
                        return -1;
                    }
                    if (aVar3.d) {
                        return 1;
                    }
                }
                return i2;
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(b bVar) {
        if (bVar.b()) {
            bVar.b = "O";
            return true;
        } else if (bVar.a()) {
            bVar.b = SpeechSynthesizer.REQUEST_DNS_OFF;
            return true;
        } else {
            return false;
        }
    }

    private boolean a(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length) {
            return false;
        }
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            hashSet.add(str);
        }
        HashSet hashSet2 = new HashSet();
        for (String str2 : strArr2) {
            hashSet2.add(str2);
        }
        return hashSet.equals(hashSet2);
    }

    @SuppressLint({"NewApi"})
    public static boolean a(Context context, boolean z) {
        File file = new File(context.getApplicationContext().getFilesDir(), "libcuid.so");
        if (file.exists()) {
            return c.a(file.getAbsolutePath(), z ? 436 : 432);
        }
        return false;
    }

    public static b a(Context context) {
        if (e == null) {
            synchronized (b.class) {
                if (e == null) {
                    SystemClock.uptimeMillis();
                    e = new DeviceId(context).b();
                    SystemClock.uptimeMillis();
                }
            }
        }
        return e;
    }

    private synchronized void a(b bVar) {
        new Thread(c(bVar)).start();
    }
}
