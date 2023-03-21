package com.baidu.tts.chainofresponsibility.logger;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import com.apk.Cgoto;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes8.dex */
public class LogcatHelper {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11162a = "com.baidu.tts.chainofresponsibility.logger.LogcatHelper";
    public static LogcatHelper b;
    public static String c;
    public a d = null;
    public int e;

    /* loaded from: classes8.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public String f11163a;
        public Process c;
        public BufferedReader d = null;
        public boolean e = true;
        public String f;
        public FileOutputStream g;

        public a(String str, String str2) {
            this.f11163a = null;
            this.g = null;
            this.f = str;
            try {
                this.g = new FileOutputStream(new File(str2, "TTSLog-" + LogcatHelper.getFileName() + ".txt"), true);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
            this.f11163a = Cgoto.m991class(Cgoto.m1016super("logcat -v time | grep \"("), this.f, ")\"");
        }

        public void a() {
            this.e = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            FileOutputStream fileOutputStream;
            String readLine;
            try {
                try {
                    this.c = Runtime.getRuntime().exec(this.f11163a);
                    this.d = new BufferedReader(new InputStreamReader(this.c.getInputStream()), 1024);
                    while (this.e && (readLine = this.d.readLine()) != null && this.e) {
                        if (readLine.length() != 0 && this.g != null && readLine.contains(this.f) && readLine.contains("bdtts-")) {
                            FileOutputStream fileOutputStream2 = this.g;
                            fileOutputStream2.write((" " + readLine + "\n").getBytes());
                        }
                    }
                    Process process = this.c;
                    if (process != null) {
                        process.destroy();
                        this.c = null;
                    }
                    BufferedReader bufferedReader = this.d;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                            this.d = null;
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    fileOutputStream = this.g;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    Process process2 = this.c;
                    if (process2 != null) {
                        process2.destroy();
                        this.c = null;
                    }
                    BufferedReader bufferedReader2 = this.d;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                            this.d = null;
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    FileOutputStream fileOutputStream3 = this.g;
                    if (fileOutputStream3 == null) {
                        return;
                    }
                    try {
                        fileOutputStream3.close();
                    } catch (IOException e4) {
                        e = e4;
                        e.printStackTrace();
                        this.g = null;
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e5) {
                        e = e5;
                        e.printStackTrace();
                        this.g = null;
                    }
                    this.g = null;
                }
            } catch (Throwable th) {
                Process process3 = this.c;
                if (process3 != null) {
                    process3.destroy();
                    this.c = null;
                }
                BufferedReader bufferedReader3 = this.d;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                        this.d = null;
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                FileOutputStream fileOutputStream4 = this.g;
                if (fileOutputStream4 != null) {
                    try {
                        fileOutputStream4.close();
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                    this.g = null;
                }
                throw th;
            }
        }
    }

    public LogcatHelper(Context context) {
        init(context);
        this.e = Process.myPid();
    }

    public static String getFileName() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
    }

    public static LogcatHelper getInstance(Context context) {
        if (b == null) {
            b = new LogcatHelper(context);
        }
        return b;
    }

    public void init(Context context) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
            c = Cgoto.m991class(sb, File.separator, "baidu/ttsSDK/");
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(context.getFilesDir().getAbsolutePath());
            c = Cgoto.m991class(sb2, File.separator, "baidu/ttsSDK/");
        }
        File file = new File(c);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public void start() {
        stop();
        a aVar = new a(String.valueOf(this.e), c);
        this.d = aVar;
        aVar.start();
        String str = f11162a;
        StringBuilder m1016super = Cgoto.m1016super(" mPID=");
        m1016super.append(this.e);
        m1016super.append(" SavePath=");
        m1016super.append(c);
        LoggerProxy.i(str, m1016super.toString());
    }

    public void stop() {
        a aVar = this.d;
        if (aVar != null) {
            aVar.a();
            this.d = null;
        }
    }
}
