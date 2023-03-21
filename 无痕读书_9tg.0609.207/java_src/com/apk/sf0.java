package com.apk;

import com.google.android.flexbox.FlexboxHelper;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.zip.CRC32;
/* compiled from: UnzipEngine.java */
/* loaded from: classes7.dex */
public class sf0 {

    /* renamed from: case  reason: not valid java name */
    public CRC32 f4340case;

    /* renamed from: do  reason: not valid java name */
    public of0 f4341do;

    /* renamed from: for  reason: not valid java name */
    public int f4342for = 0;

    /* renamed from: if  reason: not valid java name */
    public if0 f4343if;

    /* renamed from: new  reason: not valid java name */
    public jf0 f4344new;

    /* renamed from: try  reason: not valid java name */
    public te0 f4345try;

    public sf0(of0 of0Var, if0 if0Var) throws af0 {
        if (of0Var != null) {
            this.f4341do = of0Var;
            this.f4343if = if0Var;
            this.f4340case = new CRC32();
            return;
        }
        throw new af0("Invalid parameters passed to StoreUnzip. One or more of the parameters were null");
    }

    /* renamed from: break  reason: not valid java name */
    public final void m2440break(RandomAccessFile randomAccessFile) throws af0 {
        byte[] bArr;
        jf0 jf0Var = this.f4344new;
        if (jf0Var != null) {
            if (jf0Var.f2323goto) {
                int i = jf0Var.f2326this;
                int i2 = 12;
                if (i == 0) {
                    if0 if0Var = this.f4343if;
                    try {
                        byte[] bArr2 = new byte[12];
                        randomAccessFile.seek(jf0Var.f2321else);
                        randomAccessFile.read(bArr2, 0, 12);
                        this.f4345try = new xe0(if0Var, bArr2);
                        return;
                    } catch (IOException e) {
                        throw new af0(e);
                    } catch (Exception e2) {
                        throw new af0(e2);
                    }
                } else if (i == 99) {
                    ef0 ef0Var = jf0Var.f2318class;
                    if (ef0Var == null) {
                        bArr = null;
                    } else {
                        try {
                            int i3 = ef0Var.f1041do;
                            if (i3 == 1) {
                                i2 = 8;
                            } else if (i3 != 2) {
                                if (i3 != 3) {
                                    throw new af0("unable to determine salt length: invalid aes key strength");
                                }
                                i2 = 16;
                            }
                            bArr = new byte[i2];
                            randomAccessFile.seek(this.f4344new.f2321else);
                            randomAccessFile.read(bArr);
                        } catch (IOException e3) {
                            throw new af0(e3);
                        }
                    }
                    try {
                        byte[] bArr3 = new byte[2];
                        randomAccessFile.read(bArr3);
                        this.f4345try = new se0(jf0Var, bArr, bArr3);
                        return;
                    } catch (IOException e4) {
                        throw new af0(e4);
                    }
                } else {
                    throw new af0("unsupported encryption method");
                }
            }
            return;
        }
        throw new af0("local file header is null, cannot init decrypter");
    }

    /* renamed from: case  reason: not valid java name */
    public df0 m2441case() throws af0 {
        long j;
        if (this.f4343if != null) {
            RandomAccessFile randomAccessFile = null;
            try {
                RandomAccessFile m2451try = m2451try("r");
                try {
                    if (m2448if()) {
                        m2450this(m2451try);
                        long j2 = this.f4344new.f2322for;
                        long j3 = this.f4344new.f2321else;
                        if (this.f4344new.f2323goto) {
                            if (this.f4344new.f2326this == 99) {
                                if (this.f4345try instanceof se0) {
                                    int i = ((se0) this.f4345try).f4327case;
                                    if (((se0) this.f4345try) != null) {
                                        j2 -= (i + 2) + 10;
                                        int i2 = ((se0) this.f4345try).f4327case;
                                        if (((se0) this.f4345try) == null) {
                                            throw null;
                                        }
                                        j = i2 + 2;
                                    } else {
                                        throw null;
                                    }
                                } else {
                                    throw new af0("invalid decryptor when trying to calculate compressed size for AES encrypted file: " + this.f4343if.f2077catch);
                                }
                            } else if (this.f4344new.f2326this == 0) {
                                j = 12;
                                j2 -= 12;
                            }
                            j3 += j;
                        }
                        long j4 = j2;
                        int i3 = this.f4343if.f2080do;
                        if (this.f4343if.f2082final == 99) {
                            if (this.f4343if.f2093while != null) {
                                i3 = this.f4343if.f2093while.f1042if;
                            } else {
                                throw new af0("AESExtraDataRecord does not exist for AES encrypted file: " + this.f4343if.f2077catch);
                            }
                        }
                        m2451try.seek(j3);
                        if (i3 != 0) {
                            if (i3 == 8) {
                                return new df0(new bf0(m2451try, j3, j4, this));
                            }
                            throw new af0("compression type not supported");
                        }
                        return new df0(new cf0(m2451try, j4, this));
                    }
                    throw new af0("local header and file header do not match");
                } catch (af0 e) {
                    e = e;
                    randomAccessFile = m2451try;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw e;
                } catch (Exception e2) {
                    e = e2;
                    randomAccessFile = m2451try;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw new af0(e);
                }
            } catch (af0 e3) {
                e = e3;
            } catch (Exception e4) {
                e = e4;
            }
        } else {
            throw new af0("file header is null, cannot get inputstream");
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public RandomAccessFile m2442catch() throws IOException, FileNotFoundException {
        of0 of0Var = this.f4341do;
        String str = of0Var.f3404case;
        int i = this.f4342for;
        if (i != of0Var.f3409if.f1559do) {
            if (i >= 9) {
                str = str.substring(0, str.lastIndexOf(".")) + ".z" + (this.f4342for + 1);
            } else {
                str = str.substring(0, str.lastIndexOf(".")) + ".z0" + (this.f4342for + 1);
            }
        }
        this.f4342for++;
        try {
            if (sb0.m2429super(str)) {
                return new RandomAccessFile(str, "r");
            }
            throw new IOException("zip split file does not exist: " + str);
        } catch (af0 e) {
            throw new IOException(e.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.apk.sf0] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* renamed from: class  reason: not valid java name */
    public void m2443class(pf0 pf0Var, String str, String str2, kf0 kf0Var) throws af0 {
        byte[] bArr;
        df0 m2441case;
        if (this.f4341do != null && this.f4343if != null && sb0.m2412finally(str)) {
            df0 df0Var = null;
            r0 = null;
            r0 = null;
            FileOutputStream fileOutputStream = null;
            df0Var = null;
            try {
                try {
                    bArr = new byte[4096];
                    m2441case = m2441case();
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    fileOutputStream = m2447goto(str, str2);
                    while (true) {
                        int read = m2441case.read(bArr);
                        if (read != -1) {
                            fileOutputStream.write(bArr, 0, read);
                            pf0Var.m2034if(read);
                        } else {
                            m2449new(m2441case, fileOutputStream);
                            sb0.m2409else(this.f4343if, new File(m2445else(str, str2)));
                            m2449new(m2441case, fileOutputStream);
                            return;
                        }
                    }
                } catch (IOException e) {
                    e = e;
                    throw new af0(e);
                } catch (Exception e2) {
                    e = e2;
                    throw new af0(e);
                } catch (Throwable th2) {
                    th = th2;
                    str = fileOutputStream;
                    df0Var = m2441case;
                    m2449new(df0Var, str);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (Exception e4) {
                e = e4;
            } catch (Throwable th3) {
                th = th3;
                str = 0;
            }
        } else {
            throw new af0("Invalid parameters passed during unzipping file. One or more of the parameters were null");
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m2444do() throws af0 {
        if0 if0Var = this.f4343if;
        if (if0Var != null) {
            if (if0Var.f2082final == 99) {
                te0 te0Var = this.f4345try;
                if (te0Var == null || !(te0Var instanceof se0)) {
                    return;
                }
                byte[] doFinal = ((se0) te0Var).f4334for.f4874do.doFinal();
                byte[] bArr = ((se0) this.f4345try).f4326break;
                byte[] bArr2 = new byte[10];
                if (bArr != null) {
                    System.arraycopy(doFinal, 0, bArr2, 0, 10);
                    if (Arrays.equals(bArr2, bArr)) {
                        return;
                    }
                    StringBuilder m1016super = Cgoto.m1016super("invalid CRC (MAC) for file: ");
                    m1016super.append(this.f4343if.f2077catch);
                    throw new af0(m1016super.toString());
                }
                StringBuilder m1016super2 = Cgoto.m1016super("CRC (MAC) check failed for ");
                m1016super2.append(this.f4343if.f2077catch);
                throw new af0(m1016super2.toString());
            } else if ((this.f4340case.getValue() & FlexboxHelper.MEASURE_SPEC_WIDTH_MASK) != (FlexboxHelper.MEASURE_SPEC_WIDTH_MASK & this.f4343if.f2083for)) {
                StringBuilder m1016super3 = Cgoto.m1016super("invalid CRC for file: ");
                m1016super3.append(this.f4343if.f2077catch);
                String sb = m1016super3.toString();
                jf0 jf0Var = this.f4344new;
                if (jf0Var.f2323goto && jf0Var.f2326this == 0) {
                    sb = Cgoto.m989case(sb, " - Wrong Password?");
                }
                throw new af0(sb);
            }
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final String m2445else(String str, String str2) throws af0 {
        if (!sb0.m2412finally(str2)) {
            str2 = this.f4343if.f2077catch;
        }
        StringBuilder m1016super = Cgoto.m1016super(str);
        m1016super.append(System.getProperty("file.separator"));
        m1016super.append(str2);
        return m1016super.toString();
    }

    /* renamed from: for  reason: not valid java name */
    public final RandomAccessFile m2446for() throws af0 {
        byte[] bArr;
        of0 of0Var = this.f4341do;
        if (of0Var.f3411try) {
            int i = this.f4343if.f2084goto;
            int i2 = i + 1;
            this.f4342for = i2;
            String str = of0Var.f3404case;
            if (i != of0Var.f3409if.f1559do) {
                if (i >= 9) {
                    str = str.substring(0, str.lastIndexOf(".")) + ".z" + i2;
                } else {
                    str = str.substring(0, str.lastIndexOf(".")) + ".z0" + i2;
                }
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
                if (this.f4342for == 1) {
                    randomAccessFile.read(new byte[4]);
                    if (sb0.f(bArr, 0) != 134695760) {
                        throw new af0("invalid first part split file signature");
                    }
                }
                return randomAccessFile;
            } catch (FileNotFoundException e) {
                throw new af0(e);
            } catch (IOException e2) {
                throw new af0(e2);
            }
        }
        return null;
    }

    /* renamed from: goto  reason: not valid java name */
    public final FileOutputStream m2447goto(String str, String str2) throws af0 {
        if (sb0.m2412finally(str)) {
            try {
                File file = new File(m2445else(str, str2));
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (file.exists()) {
                    file.delete();
                }
                return new FileOutputStream(file);
            } catch (FileNotFoundException e) {
                throw new af0(e);
            }
        }
        throw new af0("invalid output path");
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m2448if() throws af0 {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                randomAccessFile = m2446for();
                if (randomAccessFile == null) {
                    randomAccessFile = new RandomAccessFile(new File(this.f4341do.f3404case), "r");
                }
                jf0 m2123else = new qe0(randomAccessFile).m2123else(this.f4343if);
                this.f4344new = m2123else;
                if (m2123else.f2320do != this.f4343if.f2080do) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException | Exception unused) {
                    }
                    return false;
                }
                try {
                    randomAccessFile.close();
                } catch (IOException | Exception unused2) {
                }
                return true;
            } catch (FileNotFoundException e) {
                throw new af0(e);
            }
        } catch (Throwable th) {
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException | Exception unused3) {
                }
            }
            throw th;
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m2449new(InputStream inputStream, OutputStream outputStream) throws af0 {
        if (inputStream != null) {
            try {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    if (sb0.m2412finally(e.getMessage()) && e.getMessage().indexOf(" - Wrong Password?") >= 0) {
                        throw new af0(e.getMessage());
                    }
                    return;
                }
            } catch (Throwable th) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        }
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.close();
        } catch (IOException unused2) {
        }
    }

    /* renamed from: this  reason: not valid java name */
    public final void m2450this(RandomAccessFile randomAccessFile) throws af0 {
        if (this.f4344new != null) {
            try {
                m2440break(randomAccessFile);
                return;
            } catch (af0 e) {
                throw e;
            } catch (Exception e2) {
                throw new af0(e2);
            }
        }
        throw new af0("local file header is null, cannot initialize input stream");
    }

    /* renamed from: try  reason: not valid java name */
    public final RandomAccessFile m2451try(String str) throws af0 {
        of0 of0Var = this.f4341do;
        if (of0Var != null && sb0.m2412finally(of0Var.f3404case)) {
            try {
                if (this.f4341do.f3411try) {
                    return m2446for();
                }
                return new RandomAccessFile(new File(this.f4341do.f3404case), str);
            } catch (FileNotFoundException e) {
                throw new af0(e);
            } catch (Exception e2) {
                throw new af0(e2);
            }
        }
        throw new af0("input parameter is null in getFilePointer");
    }
}
