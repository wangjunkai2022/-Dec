package com.baidu.tts.tools;

import com.umeng.analytics.pro.bz;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class MD5 {

    /* renamed from: a  reason: collision with root package name */
    public static volatile MD5 f11263a;
    public char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static MD5 getInstance() {
        if (f11263a == null) {
            synchronized (MD5.class) {
                if (f11263a == null) {
                    f11263a = new MD5();
                }
            }
        }
        return f11263a;
    }

    public String getBigFileMd5(File file) {
        FileInputStream fileInputStream;
        MessageDigest messageDigest;
        FileInputStream fileInputStream2 = null;
        if (file != null) {
            try {
                messageDigest = MessageDigest.getInstance(LitePalSupport.MD5);
                fileInputStream = new FileInputStream(file);
            } catch (Exception unused) {
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                String a2 = a(messageDigest.digest());
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return a2;
            } catch (Exception unused2) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
        }
        return null;
    }

    public String getFileMd5(String str) {
        FileChannel fileChannel;
        Throwable th;
        FileInputStream fileInputStream;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(LitePalSupport.MD5);
            File file = new File(str);
            fileInputStream = new FileInputStream(file);
            try {
                fileChannel = fileInputStream.getChannel();
                try {
                    messageDigest.update(fileChannel.map(FileChannel.MapMode.READ_ONLY, 0L, file.length()));
                    String a2 = a(messageDigest.digest());
                    try {
                        fileChannel.close();
                        fileInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return a2;
                } catch (Exception unused) {
                    if (fileChannel != null) {
                        try {
                            fileChannel.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            return null;
                        }
                    }
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileChannel != null) {
                        try {
                            fileChannel.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            throw th;
                        }
                    }
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                fileChannel = null;
            } catch (Throwable th3) {
                fileChannel = null;
                th = th3;
            }
        } catch (Exception unused3) {
            fileInputStream = null;
            fileChannel = null;
        } catch (Throwable th4) {
            fileChannel = null;
            th = th4;
            fileInputStream = null;
        }
    }

    public String getMD5(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(LitePalSupport.MD5);
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            int length = digest.length;
            char[] cArr = new char[length * 2];
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i + 1;
                cArr[i] = this.b[(digest[i2] >>> 4) & 15];
                i = i3 + 1;
                cArr[i3] = this.b[digest[i2] & bz.m];
            }
            return new String(cArr);
        } catch (Exception unused) {
            return null;
        }
    }

    private String a(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer(i2 * 2);
        int i3 = i2 + i;
        while (i < i3) {
            a(bArr[i], stringBuffer);
            i++;
        }
        return stringBuffer.toString();
    }

    private void a(byte b, StringBuffer stringBuffer) {
        char[] cArr = this.b;
        char c = cArr[(b & 240) >> 4];
        char c2 = cArr[b & bz.m];
        stringBuffer.append(c);
        stringBuffer.append(c2);
    }

    public String getBigFileMd5(String str) {
        return getBigFileMd5(new File(str));
    }
}
