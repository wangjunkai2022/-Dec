package com.apk;

import com.baidu.tts.loopj.SimpleMultipartEntity;
import com.biquge.ebook.app.app.AppContext;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
/* compiled from: CrashHandler.java */
/* loaded from: classes8.dex */
public class s implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Throwable f4221do;

    public s(t tVar, Throwable th) {
        this.f4221do = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th = this.f4221do;
        StringBuffer stringBuffer = new StringBuffer();
        AppContext appContext = AppContext.f6392case;
        StringBuilder sb = new StringBuilder();
        a6 m18else = a6.m18else();
        if (m18else.f33case == null) {
            m18else.f33case = m18else.m21goto("log");
        }
        sb.append(m18else.f33case);
        sb.append("/");
        sb.append(appContext.getPackageName());
        sb.append("-");
        sb.append(new SimpleDateFormat("yyyyMMdd").format(new Date()));
        sb.append(".txt");
        String sb2 = sb.toString();
        File file = new File(sb2);
        try {
            if (!file.exists()) {
                file.getParentFile().mkdirs();
                file.createNewFile();
                stringBuffer.append(eg.m613super());
            }
            stringBuffer.append("\r\n\r\n\r\n\r\ncrash==================================================\r\n");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("\r\n user: ");
            sb3.append(v0.m2736try().m2743else() != null ? v0.m2736try().m2743else().getName() : "");
            sb3.append(" \r\n");
            stringBuffer.append(sb3.toString());
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            stringBuffer.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + ":\r\n\r\n");
            stringBuffer.append(stringWriter.toString().replace("\n", SimpleMultipartEntity.STR_CR_LF));
            stringBuffer.append("\r\n\r\n");
            FileWriter fileWriter = new FileWriter(sb2, true);
            fileWriter.write(stringBuffer.toString());
            printWriter.close();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
