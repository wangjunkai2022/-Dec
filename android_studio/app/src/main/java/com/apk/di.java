package com.apk;

import androidx.recyclerview.widget.RecyclerView;
import com.baidu.tts.loopj.SimpleMultipartEntity;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.qq.e.comm.adevent.AdEventType;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TimeZone;

/* compiled from: NanoHTTPD.java */
/* loaded from: classes8.dex */
public abstract class di {

    /* renamed from: for  reason: not valid java name */
    public ServerSocket f869for;

    /* renamed from: if  reason: not valid java name */
    public final int f870if;

    /* renamed from: new  reason: not valid java name */
    public Thread f871new;

    /* renamed from: do  reason: not valid java name */
    public final String f868do = null;

    /* renamed from: try  reason: not valid java name */
    public Cclass f872try = new Ccase(this, null);

    /* renamed from: case  reason: not valid java name */
    public Cif f867case = new Cfor(this, null);

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cbreak {
        void delete() throws Exception;
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements Cclass {
        public Ccase(di diVar, Cdo cdo) {
        }
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$catch  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Ccatch {
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$class  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cclass {
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* compiled from: NanoHTTPD.java */
        /* renamed from: com.apk.di$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0063do implements Runnable {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ Celse f874do;

            /* renamed from: if  reason: not valid java name */
            public final /* synthetic */ Socket f875if;

            public RunnableC0063do(Cdo cdo, Celse celse, Socket socket) {
                this.f874do = celse;
                this.f875if = socket;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f874do.run();
                Socket socket = this.f875if;
                if (socket != null) {
                    try {
                        socket.close();
                    } catch (IOException unused) {
                    }
                }
            }
        }

        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Socket accept;
            InputStream inputStream;
            OutputStream outputStream;
            do {
                try {
                    accept = di.this.f869for.accept();
                    String str = "accept request from " + accept.getInetAddress();
                    inputStream = accept.getInputStream();
                    outputStream = accept.getOutputStream();
                } catch (IOException unused) {
                }
                if (((Ccase) di.this.f872try) != null) {
                    ((Cfor) di.this.f867case).m469do(new RunnableC0063do(this, new Celse(new Ctry(), inputStream, outputStream), accept));
                } else {
                    throw null;
                    break;
                }
            } while (!di.this.f869for.isClosed());
        }
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final Ccatch f876do;

        /* renamed from: for  reason: not valid java name */
        public OutputStream f877for;

        /* renamed from: if  reason: not valid java name */
        public InputStream f878if;

        public Celse(Ccatch ccatch, InputStream inputStream, OutputStream outputStream) {
            this.f876do = ccatch;
            this.f878if = inputStream;
            this.f877for = outputStream;
        }

        /* renamed from: case  reason: not valid java name */
        public final String m463case(ByteBuffer byteBuffer, int i, int i2) {
            if (i2 > 0) {
                try {
                    Ctry ctry = (Ctry) this.f876do;
                    Cnew cnew = new Cnew(ctry.f906do);
                    ctry.f907if.add(cnew);
                    ByteBuffer duplicate = byteBuffer.duplicate();
                    FileChannel channel = new FileOutputStream(cnew.m471do()).getChannel();
                    duplicate.position(i).limit(i + i2);
                    channel.write(duplicate.slice());
                    return cnew.m471do();
                } catch (Exception e) {
                    PrintStream printStream = System.err;
                    StringBuilder m1016super = com.apk.Cgoto.m1016super("Error: ");
                    m1016super.append(e.getMessage());
                    printStream.println(m1016super.toString());
                }
            }
            return "";
        }

        /* renamed from: do  reason: not valid java name */
        public final void m464do(BufferedReader bufferedReader, Map<String, String> map, Map<String, String> map2, Map<String, String> map3) throws InterruptedException {
            String m460do;
            Cthis.Cdo cdo = Cthis.Cdo.BAD_REQUEST;
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(readLine);
                if (stringTokenizer.hasMoreTokens()) {
                    map.put("method", stringTokenizer.nextToken());
                    if (stringTokenizer.hasMoreTokens()) {
                        String nextToken = stringTokenizer.nextToken();
                        int indexOf = nextToken.indexOf(63);
                        if (indexOf >= 0) {
                            m465for(nextToken.substring(indexOf + 1), map2);
                            m460do = di.this.m460do(nextToken.substring(0, indexOf));
                        } else {
                            m460do = di.this.m460do(nextToken);
                        }
                        if (stringTokenizer.hasMoreTokens()) {
                            String readLine2 = bufferedReader.readLine();
                            while (readLine2 != null && readLine2.trim().length() > 0) {
                                int indexOf2 = readLine2.indexOf(58);
                                if (indexOf2 >= 0) {
                                    map3.put(readLine2.substring(0, indexOf2).trim().toLowerCase(), readLine2.substring(indexOf2 + 1).trim());
                                }
                                readLine2 = bufferedReader.readLine();
                            }
                        }
                        map.put("uri", m460do);
                        return;
                    }
                    Cthis.m472do(this.f877for, cdo, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
                    throw new InterruptedException();
                }
                Cthis.m472do(this.f877for, cdo, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
                throw new InterruptedException();
            } catch (IOException e) {
                OutputStream outputStream = this.f877for;
                Cthis.Cdo cdo2 = Cthis.Cdo.INTERNAL_ERROR;
                StringBuilder m1016super = com.apk.Cgoto.m1016super("SERVER INTERNAL ERROR: IOException: ");
                m1016super.append(e.getMessage());
                Cthis.m472do(outputStream, cdo2, m1016super.toString());
                throw new InterruptedException();
            }
        }

        /* renamed from: for  reason: not valid java name */
        public final void m465for(String str, Map<String, String> map) throws InterruptedException {
            if (str == null) {
                map.put("NanoHttpd.QUERY_STRING", "");
                return;
            }
            map.put("NanoHttpd.QUERY_STRING", str);
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                try {
                    String nextToken = stringTokenizer.nextToken();
                    int indexOf = nextToken.indexOf(61);
                    if (indexOf >= 0) {
                        map.put(di.this.m460do(nextToken.substring(0, indexOf)).trim(), di.this.m460do(nextToken.substring(indexOf + 1)));
                    } else {
                        map.put(di.this.m460do(nextToken).trim(), "");
                    }
                } catch (InterruptedException unused) {
                    Cthis.m472do(this.f877for, Cthis.Cdo.BAD_REQUEST, "BAD REQUEST: Bad percent-encoding.");
                    return;
                }
            }
        }

        /* renamed from: if  reason: not valid java name */
        public final void m466if(String str, ByteBuffer byteBuffer, BufferedReader bufferedReader, Map<String, String> map, Map<String, String> map2) throws InterruptedException {
            int i;
            int i2;
            String substring;
            Map<String, String> map3;
            int indexOf;
            Cthis.Cdo cdo = Cthis.Cdo.BAD_REQUEST;
            Cthis.Cdo cdo2 = Cthis.Cdo.INTERNAL_ERROR;
            try {
                byte[] bytes = str.getBytes();
                ArrayList arrayList = new ArrayList();
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = -1;
                while (true) {
                    i = 1;
                    if (i4 >= byteBuffer.limit()) {
                        break;
                    }
                    if (byteBuffer.get(i4) == bytes[i5]) {
                        if (i5 == 0) {
                            i6 = i4;
                        }
                        i5++;
                        if (i5 == bytes.length) {
                            arrayList.add(Integer.valueOf(i6));
                        } else {
                            i4++;
                        }
                    } else {
                        i4 -= i5;
                    }
                    i5 = 0;
                    i6 = -1;
                    i4++;
                }
                int size = arrayList.size();
                int[] iArr = new int[size];
                for (int i7 = 0; i7 < size; i7++) {
                    iArr[i7] = ((Integer) arrayList.get(i7)).intValue();
                }
                String readLine = bufferedReader.readLine();
                int i8 = 1;
                while (readLine != null) {
                    if (readLine.contains(str)) {
                        i8 += i;
                        HashMap hashMap = new HashMap();
                        String readLine2 = bufferedReader.readLine();
                        while (readLine2 != null && readLine2.trim().length() > 0) {
                            int indexOf2 = readLine2.indexOf(58);
                            if (indexOf2 != -1) {
                                hashMap.put(readLine2.substring(i3, indexOf2).trim().toLowerCase(), readLine2.substring(indexOf2 + 1).trim());
                            }
                            readLine2 = bufferedReader.readLine();
                        }
                        if (readLine2 != null) {
                            String str2 = (String) hashMap.get("content-disposition");
                            if (str2 != null) {
                                StringTokenizer stringTokenizer = new StringTokenizer(str2, "; ");
                                HashMap hashMap2 = new HashMap();
                                while (stringTokenizer.hasMoreTokens()) {
                                    String nextToken = stringTokenizer.nextToken();
                                    int indexOf3 = nextToken.indexOf(61);
                                    if (indexOf3 != -1) {
                                        hashMap2.put(nextToken.substring(i3, indexOf3).trim().toLowerCase(), nextToken.substring(indexOf3 + 1).trim());
                                    }
                                    i3 = 0;
                                }
                                String str3 = (String) hashMap2.get("name");
                                String substring2 = str3.substring(1, str3.length() - 1);
                                String str4 = "";
                                if (hashMap.get("content-type") == null) {
                                    while (readLine2 != null && !readLine2.contains(str)) {
                                        readLine2 = bufferedReader.readLine();
                                        if (readLine2 != null) {
                                            str4 = readLine2.indexOf(str) == -1 ? str4 + readLine2 : str4 + readLine2.substring(0, indexOf - 2);
                                        }
                                    }
                                    map3 = map;
                                    substring = str4;
                                } else if (i8 <= size) {
                                    int i9 = iArr[i8 - 2];
                                    while (i9 < byteBuffer.limit()) {
                                        if (byteBuffer.get(i9) == 13) {
                                            i9++;
                                            if (byteBuffer.get(i9) == 10) {
                                                i9++;
                                                if (byteBuffer.get(i9) == 13) {
                                                    i9++;
                                                    if (byteBuffer.get(i9) == 10) {
                                                        break;
                                                    }
                                                } else {
                                                    continue;
                                                }
                                            } else {
                                                continue;
                                            }
                                        }
                                        i9++;
                                    }
                                    map2.put(substring2, m463case(byteBuffer, i9 + 1, (iArr[i8 - 1] - i2) - 4));
                                    String str5 = (String) hashMap2.get("filename");
                                    substring = str5.substring(1, str5.length() - 1);
                                    do {
                                        readLine2 = bufferedReader.readLine();
                                        if (readLine2 == null) {
                                            break;
                                        }
                                    } while (!readLine2.contains(str));
                                    map3 = map;
                                } else {
                                    Cthis.m472do(this.f877for, cdo2, "Error processing request");
                                    throw new InterruptedException();
                                }
                                map3.put(substring2, substring);
                            } else {
                                Cthis.m472do(this.f877for, cdo, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html");
                                throw new InterruptedException();
                            }
                        }
                        readLine = readLine2;
                        i3 = 0;
                        i = 1;
                    } else {
                        Cthis.m472do(this.f877for, cdo, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html");
                        throw new InterruptedException();
                    }
                }
            } catch (IOException e) {
                OutputStream outputStream = this.f877for;
                StringBuilder m1016super = com.apk.Cgoto.m1016super("SERVER INTERNAL ERROR: IOException: ");
                m1016super.append(e.getMessage());
                Cthis.m472do(outputStream, cdo2, m1016super.toString());
                throw new InterruptedException();
            }
        }

        /* renamed from: new  reason: not valid java name */
        public final long m467new(Map<String, String> map) {
            String str = map.get("content-length");
            if (str != null) {
                try {
                    return Integer.parseInt(str);
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                }
            }
            return RecyclerView.FOREVER_NS;
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x012d A[Catch: IOException -> 0x0043, all -> 0x01da, all -> 0x01e3, TryCatch #2 {IOException -> 0x0043, all -> 0x01e3, all -> 0x01da, blocks: (B:3:0x0006, B:8:0x0014, B:10:0x0021, B:11:0x0023, B:13:0x0027, B:15:0x002d, B:17:0x0035, B:19:0x003b, B:21:0x003f, B:28:0x004d, B:24:0x0046, B:29:0x0056, B:31:0x008a, B:33:0x009d, B:36:0x00a7, B:41:0x00b9, B:45:0x00c3, B:47:0x00ce, B:49:0x00d5, B:51:0x0105, B:54:0x0112, B:56:0x011f, B:58:0x0125, B:60:0x012d, B:62:0x0133, B:64:0x0149, B:66:0x014f, B:68:0x015c, B:69:0x0166, B:70:0x0172, B:71:0x0173, B:73:0x017b, B:75:0x0183, B:76:0x019c, B:77:0x01a3, B:79:0x01ab, B:80:0x01b9, B:81:0x01cd, B:82:0x01d9), top: B:91:0x0006 }] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0173 A[Catch: IOException -> 0x0043, all -> 0x01da, all -> 0x01e3, TryCatch #2 {IOException -> 0x0043, all -> 0x01e3, all -> 0x01da, blocks: (B:3:0x0006, B:8:0x0014, B:10:0x0021, B:11:0x0023, B:13:0x0027, B:15:0x002d, B:17:0x0035, B:19:0x003b, B:21:0x003f, B:28:0x004d, B:24:0x0046, B:29:0x0056, B:31:0x008a, B:33:0x009d, B:36:0x00a7, B:41:0x00b9, B:45:0x00c3, B:47:0x00ce, B:49:0x00d5, B:51:0x0105, B:54:0x0112, B:56:0x011f, B:58:0x0125, B:60:0x012d, B:62:0x0133, B:64:0x0149, B:66:0x014f, B:68:0x015c, B:69:0x0166, B:70:0x0172, B:71:0x0173, B:73:0x017b, B:75:0x0183, B:76:0x019c, B:77:0x01a3, B:79:0x01ab, B:80:0x01b9, B:81:0x01cd, B:82:0x01d9), top: B:91:0x0006 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 526
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.di.Celse.run():void");
        }

        /* renamed from: try  reason: not valid java name */
        public final RandomAccessFile m468try() throws IOException {
            try {
                Ctry ctry = (Ctry) this.f876do;
                Cnew cnew = new Cnew(ctry.f906do);
                ctry.f907if.add(cnew);
                return new RandomAccessFile(cnew.m471do(), "rw");
            } catch (Exception e) {
                PrintStream printStream = System.err;
                StringBuilder m1016super = com.apk.Cgoto.m1016super("Error: ");
                m1016super.append(e.getMessage());
                printStream.println(m1016super.toString());
                return null;
            }
        }
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Cif {

        /* renamed from: do  reason: not valid java name */
        public long f880do;

        public Cfor(di diVar, Cdo cdo) {
        }

        /* renamed from: do  reason: not valid java name */
        public void m469do(Runnable runnable) {
            this.f880do++;
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            StringBuilder m1016super = com.apk.Cgoto.m1016super("NanoHttpd Request Processor (#");
            m1016super.append(this.f880do);
            m1016super.append(")");
            thread.setName(m1016super.toString());
            thread.start();
        }
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cgoto {
        GET,
        PUT,
        POST,
        DELETE;

        /* renamed from: do  reason: not valid java name */
        public static Cgoto m470do(String str) {
            Cgoto[] values;
            for (Cgoto cgoto : values()) {
                if (cgoto.toString().equalsIgnoreCase(str)) {
                    return cgoto;
                }
            }
            return null;
        }
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew implements Cbreak {

        /* renamed from: do  reason: not valid java name */
        public File f886do;

        public Cnew(String str) throws IOException {
            this.f886do = File.createTempFile("NanoHTTPD-", "", new File(str));
            new FileOutputStream(this.f886do);
        }

        @Override // com.apk.di.Cbreak
        public void delete() throws Exception {
            this.f886do.delete();
        }

        /* renamed from: do  reason: not valid java name */
        public String m471do() {
            return this.f886do.getAbsolutePath();
        }
    }

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry implements Ccatch {

        /* renamed from: do  reason: not valid java name */
        public final String f906do = System.getProperty("java.io.tmpdir");

        /* renamed from: if  reason: not valid java name */
        public final List<Cbreak> f907if = new ArrayList();

        /* renamed from: do  reason: not valid java name */
        public void m474do() {
            for (Cbreak cbreak : this.f907if) {
                try {
                    cbreak.delete();
                } catch (Exception unused) {
                }
            }
            this.f907if.clear();
        }
    }

    public di(int i) {
        this.f870if = i;
    }

    /* renamed from: do  reason: not valid java name */
    public String m460do(String str) throws InterruptedException {
        try {
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (i < str.length()) {
                char charAt = str.charAt(i);
                if (charAt == '%') {
                    sb.append((char) Integer.parseInt(str.substring(i + 1, i + 3), 16));
                    i += 2;
                } else if (charAt != '+') {
                    sb.append(charAt);
                } else {
                    sb.append(' ');
                }
                i++;
            }
            return sb.toString();
        } catch (Exception unused) {
            throw new InterruptedException();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m461for() throws IOException {
        ServerSocket serverSocket = new ServerSocket();
        this.f869for = serverSocket;
        serverSocket.bind(this.f868do != null ? new InetSocketAddress(this.f868do, this.f870if) : new InetSocketAddress(this.f870if));
        Thread thread = new Thread(new Cdo());
        this.f871new = thread;
        thread.setDaemon(true);
        this.f871new.setName("NanoHttpd Main Listener");
        this.f871new.start();
    }

    /* renamed from: if  reason: not valid java name */
    public abstract Cthis mo462if(String str, Cgoto cgoto, Map<String, String> map, Map<String, String> map2, Map<String, String> map3);

    /* compiled from: NanoHTTPD.java */
    /* renamed from: com.apk.di$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cthis {

        /* renamed from: do  reason: not valid java name */
        public Cdo f887do;

        /* renamed from: for  reason: not valid java name */
        public InputStream f888for;

        /* renamed from: if  reason: not valid java name */
        public String f889if;

        /* renamed from: new  reason: not valid java name */
        public Map<String, String> f890new = new HashMap();

        /* compiled from: NanoHTTPD.java */
        /* renamed from: com.apk.di$this$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public enum Cdo {
            OK(200, "OK"),
            CREATED(AdEventType.VIDEO_CACHE, "Created"),
            NO_CONTENT(AdEventType.VIDEO_PAUSE, "No Content"),
            PARTIAL_CONTENT(AdEventType.VIDEO_COMPLETE, "Partial Content"),
            REDIRECT(301, "Moved Permanently"),
            NOT_MODIFIED(AdEventType.COMPLAIN_SUCCESS, "Not Modified"),
            BAD_REQUEST(400, "Bad Request"),
            UNAUTHORIZED(401, "Unauthorized"),
            FORBIDDEN(403, "Forbidden"),
            NOT_FOUND(404, "Not Found"),
            RANGE_NOT_SATISFIABLE(TTAdConstant.LIVE_AD_CODE, "Requested Range Not Satisfiable"),
            INTERNAL_ERROR(500, "Internal Server Error");
            

            /* renamed from: do  reason: not valid java name */
            public int f904do;

            /* renamed from: if  reason: not valid java name */
            public String f905if;

            Cdo(int i, String str) {
                this.f904do = i;
                this.f905if = str;
            }
        }

        public Cthis(Cdo cdo, String str, InputStream inputStream) {
            this.f887do = cdo;
            this.f889if = str;
            this.f888for = inputStream;
        }

        /* renamed from: do  reason: not valid java name */
        public static void m472do(OutputStream outputStream, Cdo cdo, String str) {
            new Cthis(cdo, "text/plain", str).m473if(outputStream);
        }

        /* renamed from: if  reason: not valid java name */
        public final void m473if(OutputStream outputStream) {
            String str = this.f889if;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            try {
                if (this.f887do != null) {
                    PrintWriter printWriter = new PrintWriter(outputStream);
                    StringBuilder sb = new StringBuilder();
                    sb.append("HTTP/1.0 ");
                    Cdo cdo = this.f887do;
                    if (cdo != null) {
                        sb.append("" + cdo.f904do + " " + cdo.f905if);
                        sb.append(" \r\n");
                        printWriter.print(sb.toString());
                        if (str != null) {
                            printWriter.print("Content-Type: " + str + SimpleMultipartEntity.STR_CR_LF);
                        }
                        if (this.f890new == null || this.f890new.get("Date") == null) {
                            printWriter.print("Date: " + simpleDateFormat.format(new Date()) + SimpleMultipartEntity.STR_CR_LF);
                        }
                        if (this.f890new != null) {
                            for (String str2 : this.f890new.keySet()) {
                                printWriter.print(str2 + ": " + this.f890new.get(str2) + SimpleMultipartEntity.STR_CR_LF);
                            }
                        }
                        printWriter.print(SimpleMultipartEntity.STR_CR_LF);
                        printWriter.flush();
                        if (this.f888for != null) {
                            int available = this.f888for.available();
                            byte[] bArr = new byte[16384];
                            while (available > 0) {
                                int read = this.f888for.read(bArr, 0, available > 16384 ? 16384 : available);
                                if (read <= 0) {
                                    break;
                                }
                                outputStream.write(bArr, 0, read);
                                available -= read;
                            }
                        }
                        outputStream.flush();
                        outputStream.close();
                        if (this.f888for != null) {
                            this.f888for.close();
                            return;
                        }
                        return;
                    }
                    throw null;
                }
                throw new Error("sendResponse(): Status can't be null.");
            } catch (IOException unused) {
            }
        }

        public Cthis(Cdo cdo, String str, String str2) {
            this.f887do = cdo;
            this.f889if = str;
            try {
                this.f888for = new ByteArrayInputStream(str2.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }
}
