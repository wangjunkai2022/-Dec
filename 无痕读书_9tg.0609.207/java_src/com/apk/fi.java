package com.apk;

import android.net.Uri;
import android.text.TextUtils;
import com.apk.di;
import com.biquge.ebook.app.bean.CollectBook;
import com.google.zxing.qrcode.encoder.Encoder;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map;
/* compiled from: SimpleFileServer.java */
/* loaded from: classes8.dex */
public class fi extends di {

    /* renamed from: else  reason: not valid java name */
    public static fi f1295else;

    public fi(int i) {
        super(i);
    }

    @Override // com.apk.di
    /* renamed from: if */
    public di.Cthis mo462if(String str, di.Cgoto cgoto, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        String str2;
        String str3;
        String str4;
        Iterator<String> it;
        FileInputStream fileInputStream;
        di.Cthis.Cdo cdo = di.Cthis.Cdo.OK;
        ei.f1069if = true;
        int i = 0;
        String str5 = ".";
        if (di.Cgoto.GET.equals(cgoto)) {
            try {
                str2 = str;
            } catch (UnsupportedEncodingException unused) {
                str2 = str;
            }
            try {
                str3 = new String(str2.getBytes(Encoder.DEFAULT_BYTE_MODE_ENCODING), "UTF-8");
            } catch (UnsupportedEncodingException unused2) {
                str3 = str2;
                if (str3.contains("index.html")) {
                }
                return new di.Cthis(cdo, "text/html", new String(ze.T("/index.html")));
            }
            if (str3.contains("index.html") && !str3.equals("/")) {
                if (str3.startsWith("/files/") && str3.endsWith(".txt")) {
                    File file = new File(a6.m17do() + str3.substring(7, str3.lastIndexOf(".")) + File.separator + "1.txt");
                    if (!file.exists()) {
                        ze.m3161const(file);
                    }
                    byte[] bArr = null;
                    try {
                        FileInputStream fileInputStream2 = new FileInputStream(file);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1000);
                        byte[] bArr2 = new byte[1000];
                        while (true) {
                            int read = fileInputStream2.read(bArr2);
                            if (read == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr2, 0, read);
                        }
                        fileInputStream2.close();
                        byteArrayOutputStream.close();
                        bArr = byteArrayOutputStream.toByteArray();
                    } catch (IOException unused3) {
                    }
                    return new di.Cthis(cdo, "file", new String(bArr));
                }
                String str6 = ci.f632do.get(str3.substring(str3.lastIndexOf(".") + 1));
                if (TextUtils.isEmpty(str6)) {
                    return new di.Cthis(cdo, "text/html", "");
                }
                byte[] T = ze.T(str3);
                if (T != null && T.length >= 1) {
                    return new di.Cthis(cdo, str6, new ByteArrayInputStream(T));
                }
                return new di.Cthis(cdo, "text/html", "");
            }
            return new di.Cthis(cdo, "text/html", new String(ze.T("/index.html")));
        }
        Iterator<String> it2 = map3.keySet().iterator();
        while (it2.hasNext()) {
            try {
                try {
                    fileInputStream = new FileInputStream(map3.get(it2.next()));
                } catch (FileNotFoundException e) {
                    e = e;
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (FileNotFoundException e3) {
                e = e3;
            } catch (Exception e4) {
                e = e4;
            }
            try {
                String decode = Uri.decode(map2.get("fileName"));
                if (decode.lastIndexOf(str5) > 0) {
                    decode = decode.substring(i, decode.lastIndexOf(str5));
                }
                File m3185super = ze.m3185super();
                FileOutputStream fileOutputStream = new FileOutputStream(m3185super);
                byte[] bArr3 = new byte[1024];
                str4 = str5;
                while (true) {
                    try {
                        int read2 = fileInputStream.read(bArr3);
                        it = it2;
                        if (read2 == -1) {
                            try {
                                break;
                            } catch (FileNotFoundException e5) {
                                e = e5;
                            } catch (Exception e6) {
                                e = e6;
                            }
                        } else {
                            fileOutputStream.write(bArr3, 0, read2);
                            it2 = it;
                        }
                    } catch (FileNotFoundException e7) {
                        e = e7;
                        it = it2;
                        e.printStackTrace();
                        it2 = it;
                        str5 = str4;
                        i = 0;
                    } catch (Exception e8) {
                        e = e8;
                        it = it2;
                        e.printStackTrace();
                        it2 = it;
                        str5 = str4;
                        i = 0;
                    }
                }
                fileOutputStream.close();
                File file2 = new File(a6.m17do() + "/" + decode + "/" + decode + ".txt");
                if (file2.exists()) {
                    try {
                        file2 = new File(a6.m17do() + "/" + decode + "/" + (decode + "(1)") + ".txt");
                        int i2 = 1;
                        while (file2.exists()) {
                            i2++;
                            try {
                                file2 = new File(a6.m17do() + "/" + decode + "/" + (decode + "(" + i2 + ")") + ".txt");
                            } catch (FileNotFoundException e9) {
                                e = e9;
                                e.printStackTrace();
                                it2 = it;
                                str5 = str4;
                                i = 0;
                            } catch (Exception e10) {
                                e = e10;
                                e.printStackTrace();
                                it2 = it;
                                str5 = str4;
                                i = 0;
                            }
                        }
                    } catch (FileNotFoundException e11) {
                        e = e11;
                        e.printStackTrace();
                        it2 = it;
                        str5 = str4;
                        i = 0;
                    } catch (Exception e12) {
                        e = e12;
                        e.printStackTrace();
                        it2 = it;
                        str5 = str4;
                        i = 0;
                    }
                }
                try {
                    if (!file2.exists()) {
                        ze.m3161const(file2);
                    }
                    ze.m3183static(m3185super, file2);
                    m782new(file2);
                    m3185super.delete();
                } catch (FileNotFoundException e13) {
                    e = e13;
                    e.printStackTrace();
                    it2 = it;
                    str5 = str4;
                    i = 0;
                } catch (Exception e14) {
                    e = e14;
                    e.printStackTrace();
                    it2 = it;
                    str5 = str4;
                    i = 0;
                }
            } catch (FileNotFoundException e15) {
                e = e15;
                str4 = str5;
                it = it2;
                e.printStackTrace();
                it2 = it;
                str5 = str4;
                i = 0;
            } catch (Exception e16) {
                e = e16;
                str4 = str5;
                it = it2;
                e.printStackTrace();
                it2 = it;
                str5 = str4;
                i = 0;
            }
            it2 = it;
            str5 = str4;
            i = 0;
        }
        ei.f1069if = false;
        return new di.Cthis(cdo, "text/html", "");
    }

    /* renamed from: new  reason: not valid java name */
    public final void m782new(File file) {
        CollectBook w = n2.w(String.valueOf(file.getPath().hashCode()), file.getName(), file.getAbsolutePath(), 1);
        ze.Y(true);
        mf.m1712do("WIFI_TRANSFER_FILE_KEY", w.getName());
    }
}
