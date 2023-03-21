package com.qq.e.comm.managers.plugin;

import android.content.Context;
import com.qq.e.comm.util.GDTLogger;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;

/* loaded from: classes8.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static String f11541a = b.a("e_qq_com_plugin");
    public static String b = b.a("e_qq_com_dex");

    public static File a(Context context) {
        return context.getDir(b, 0);
    }

    public static String a() {
        return "gdt_plugin";
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void a(String str, File file) throws IOException {
        OutputStreamWriter outputStreamWriter;
        if (file == null) {
            throw new IOException("Target File Can not be null in StringUtil.writeTo");
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        OutputStreamWriter outputStreamWriter2 = null;
        try {
            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
        } catch (Throwable th) {
            th = th;
        }
        try {
            outputStreamWriter.write(str);
            a(outputStreamWriter);
        } catch (Throwable th2) {
            th = th2;
            outputStreamWriter2 = outputStreamWriter;
            a(outputStreamWriter2);
            throw th;
        }
    }

    public static boolean a(File file, File file2) {
        if (file == null || !file.exists()) {
            return false;
        }
        if (file.renameTo(file2)) {
            return true;
        }
        return a((InputStream) null, file2);
    }

    public static boolean a(InputStream inputStream, File file) {
        if (inputStream == null || file == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            File parentFile = file.getParentFile();
            if (parentFile == null || parentFile.exists() || parentFile.mkdirs()) {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[16384];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read <= 0) {
                            a(inputStream);
                            a(fileOutputStream2);
                            return true;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    }
                } catch (Throwable unused) {
                    fileOutputStream = fileOutputStream2;
                    try {
                        GDTLogger.d(String.format("Exception while copy from InputStream to File %s", file.getAbsolutePath()));
                        return false;
                    } finally {
                        a(inputStream);
                        a(fileOutputStream);
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return false;
    }

    public static File b(Context context) {
        return new File(context.getDir(f11541a, 0), "update_lc");
    }

    public static File c(Context context) {
        return new File(context.getDir(f11541a, 0), "gdt_plugin.next");
    }

    public static File d(Context context) {
        return new File(context.getDir(f11541a, 0), "gdt_plugin.next.sig");
    }

    public static File e(Context context) {
        return new File(context.getDir(f11541a, 0), "gdt_plugin.jar");
    }

    public static File f(Context context) {
        return new File(context.getDir(f11541a, 0), "gdt_plugin.jar.sig");
    }
}
