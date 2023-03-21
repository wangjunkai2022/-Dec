package com.apk;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.flexbox.FlexboxHelper;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
/* compiled from: HeaderReader.java */
/* loaded from: classes7.dex */
public class qe0 {

    /* renamed from: do  reason: not valid java name */
    public RandomAccessFile f3842do;

    /* renamed from: if  reason: not valid java name */
    public of0 f3843if;

    public qe0(RandomAccessFile randomAccessFile) {
        this.f3842do = null;
        this.f3842do = randomAccessFile;
    }

    /* renamed from: case  reason: not valid java name */
    public final byte[] m2121case(RandomAccessFile randomAccessFile, byte[] bArr) throws af0 {
        try {
            if (randomAccessFile.read(bArr, 0, bArr.length) != -1) {
                return bArr;
            }
            throw new af0("unexpected end of file when reading short buff");
        } catch (IOException e) {
            throw new af0("IOException when reading short buff", e);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final byte[] m2122do(byte[] bArr) throws af0 {
        if (bArr.length == 4) {
            return new byte[]{bArr[0], bArr[1], bArr[2], bArr[3], 0, 0, 0, 0};
        }
        throw new af0("invalid byte length, cannot expand to 8 bytes");
    }

    /* renamed from: else  reason: not valid java name */
    public jf0 m2123else(if0 if0Var) throws af0 {
        ef0 m2126if;
        nf0 m2125goto;
        if (if0Var != null && this.f3842do != null) {
            long j = if0Var.f2075break;
            nf0 nf0Var = if0Var.f2091throw;
            if (j >= 0) {
                try {
                    this.f3842do.seek(j);
                    jf0 jf0Var = new jf0();
                    byte[] bArr = new byte[2];
                    byte[] bArr2 = new byte[4];
                    m2121case(this.f3842do, bArr2);
                    if (sb0.f(bArr2, 0) == 67324752) {
                        m2121case(this.f3842do, bArr);
                        sb0.i(bArr, 0);
                        m2121case(this.f3842do, bArr);
                        jf0Var.f2319const = (sb0.i(bArr, 0) & 2048) != 0;
                        byte b = bArr[0];
                        if ((b & 1) != 0) {
                            jf0Var.f2323goto = true;
                        }
                        String binaryString = Integer.toBinaryString(b);
                        if (binaryString.length() >= 4) {
                            binaryString.charAt(3);
                        }
                        m2121case(this.f3842do, bArr);
                        jf0Var.f2320do = sb0.i(bArr, 0);
                        m2121case(this.f3842do, bArr2);
                        sb0.f(bArr2, 0);
                        m2121case(this.f3842do, bArr2);
                        jf0Var.f2324if = sb0.f(bArr2, 0);
                        byte[] bArr3 = (byte[]) bArr2.clone();
                        m2121case(this.f3842do, bArr2);
                        jf0Var.f2322for = sb0.h(m2122do(bArr2), 0);
                        m2121case(this.f3842do, bArr2);
                        jf0Var.f2325new = sb0.h(m2122do(bArr2), 0);
                        m2121case(this.f3842do, bArr);
                        int i = sb0.i(bArr, 0);
                        m2121case(this.f3842do, bArr);
                        int i2 = sb0.i(bArr, 0);
                        jf0Var.f2327try = i2;
                        int i3 = 30;
                        if (i > 0) {
                            byte[] bArr4 = new byte[i];
                            m2121case(this.f3842do, bArr4);
                            String m2426return = sb0.m2426return(bArr4, jf0Var.f2319const);
                            if (m2426return.indexOf(":" + System.getProperty("file.separator")) >= 0) {
                                m2426return = m2426return.substring(m2426return.indexOf(":" + System.getProperty("file.separator")) + 2);
                            }
                            jf0Var.f2316case = m2426return;
                            i3 = 30 + i;
                        } else {
                            jf0Var.f2316case = null;
                        }
                        if (this.f3842do != null) {
                            int i4 = jf0Var.f2327try;
                            if (i4 > 0) {
                                jf0Var.f2317catch = m2128try(i4);
                            }
                            jf0Var.f2321else = j + i3 + i2;
                            jf0Var.f2315break = if0Var.f2089super;
                            ArrayList arrayList = jf0Var.f2317catch;
                            if (arrayList != null && arrayList.size() > 0 && (m2125goto = m2125goto(jf0Var.f2317catch, jf0Var.f2325new, jf0Var.f2322for, -1L, -1)) != null) {
                                long j2 = m2125goto.f3211if;
                                if (j2 != -1) {
                                    jf0Var.f2325new = j2;
                                }
                                long j3 = m2125goto.f3209do;
                                if (j3 != -1) {
                                    jf0Var.f2322for = j3;
                                }
                            }
                            ArrayList arrayList2 = jf0Var.f2317catch;
                            if (arrayList2 != null && arrayList2.size() > 0 && (m2126if = m2126if(jf0Var.f2317catch)) != null) {
                                jf0Var.f2318class = m2126if;
                                jf0Var.f2326this = 99;
                            }
                            if (jf0Var.f2323goto && jf0Var.f2326this != 99) {
                                if ((b & 64) == 64) {
                                    jf0Var.f2326this = 1;
                                } else {
                                    jf0Var.f2326this = 0;
                                }
                            }
                            if (jf0Var.f2324if <= 0) {
                                jf0Var.f2324if = if0Var.f2083for & FlexboxHelper.MEASURE_SPEC_WIDTH_MASK;
                            }
                            if (jf0Var.f2322for <= 0) {
                                jf0Var.f2322for = if0Var.f2092try;
                            }
                            if (jf0Var.f2325new <= 0) {
                                jf0Var.f2325new = if0Var.f2076case;
                            }
                            return jf0Var;
                        }
                        throw new af0("invalid file handler when trying to read extra data record");
                    }
                    throw new af0("invalid local header signature for file: " + if0Var.f2077catch);
                } catch (IOException e) {
                    throw new af0(e);
                }
            }
            throw new af0("invalid local header offset");
        }
        throw new af0("invalid read parameters for local header");
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x03cf, code lost:
        r3 = new byte[r15];
        m2121case(r21.f3842do, r3);
        new java.lang.String(r3);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.apk.of0 m2124for(java.lang.String r22) throws com.apk.af0 {
        /*
            Method dump skipped, instructions count: 1160
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.qe0.m2124for(java.lang.String):com.apk.of0");
    }

    /* renamed from: goto  reason: not valid java name */
    public final nf0 m2125goto(ArrayList arrayList, long j, long j2, long j3, int i) throws af0 {
        int i2;
        boolean z;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            hf0 hf0Var = (hf0) arrayList.get(i3);
            if (hf0Var != null && hf0Var.f1839do == 1) {
                nf0 nf0Var = new nf0();
                byte[] bArr = hf0Var.f1840for;
                int i4 = hf0Var.f1841if;
                if (i4 <= 0) {
                    return null;
                }
                byte[] bArr2 = new byte[8];
                byte[] bArr3 = new byte[4];
                boolean z2 = true;
                if ((j & 65535) != 65535 || i4 <= 0) {
                    i2 = 0;
                    z = false;
                } else {
                    System.arraycopy(bArr, 0, bArr2, 0, 8);
                    nf0Var.f3211if = sb0.h(bArr2, 0);
                    i2 = 8;
                    z = true;
                }
                if ((j2 & 65535) == 65535 && i2 < hf0Var.f1841if) {
                    System.arraycopy(bArr, i2, bArr2, 0, 8);
                    nf0Var.f3209do = sb0.h(bArr2, 0);
                    i2 += 8;
                    z = true;
                }
                if ((j3 & 65535) == 65535 && i2 < hf0Var.f1841if) {
                    System.arraycopy(bArr, i2, bArr2, 0, 8);
                    nf0Var.f3210for = sb0.h(bArr2, 0);
                    i2 += 8;
                    z = true;
                }
                if ((i & 65535) != 65535 || i2 >= hf0Var.f1841if) {
                    z2 = z;
                } else {
                    System.arraycopy(bArr, i2, bArr3, 0, 4);
                    nf0Var.f3212new = sb0.f(bArr3, 0);
                }
                if (z2) {
                    return nf0Var;
                }
                return null;
            }
        }
        return null;
    }

    /* renamed from: if  reason: not valid java name */
    public final ef0 m2126if(ArrayList arrayList) throws af0 {
        if (arrayList == null) {
            return null;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            hf0 hf0Var = (hf0) arrayList.get(i);
            if (hf0Var != null && hf0Var.f1839do == 39169) {
                if (hf0Var.f1840for != null) {
                    ef0 ef0Var = new ef0();
                    byte[] bArr = hf0Var.f1840for;
                    sb0.i(bArr, 0);
                    byte[] bArr2 = new byte[2];
                    System.arraycopy(bArr, 2, bArr2, 0, 2);
                    new String(bArr2);
                    ef0Var.f1041do = bArr[4] & ExifInterface.MARKER;
                    ef0Var.f1042if = sb0.i(bArr, 5);
                    return ef0Var;
                }
                throw new af0("corrput AES extra data records");
            }
        }
        return null;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m2127new(if0 if0Var) throws af0 {
        nf0 m2125goto;
        ArrayList arrayList = if0Var.f2086import;
        if (arrayList == null || arrayList.size() <= 0 || (m2125goto = m2125goto(if0Var.f2086import, if0Var.f2076case, if0Var.f2092try, if0Var.f2075break, if0Var.f2084goto)) == null) {
            return;
        }
        if0Var.f2091throw = m2125goto;
        long j = m2125goto.f3211if;
        if (j != -1) {
            if0Var.f2076case = j;
        }
        long j2 = m2125goto.f3209do;
        if (j2 != -1) {
            if0Var.f2092try = j2;
        }
        long j3 = m2125goto.f3210for;
        if (j3 != -1) {
            if0Var.f2075break = j3;
        }
        int i = m2125goto.f3212new;
        if (i != -1) {
            if0Var.f2084goto = i;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final ArrayList m2128try(int i) throws af0 {
        if (i <= 0) {
            return null;
        }
        try {
            byte[] bArr = new byte[i];
            this.f3842do.read(bArr);
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < i) {
                hf0 hf0Var = new hf0();
                hf0Var.f1839do = sb0.i(bArr, i2);
                int i3 = i2 + 2;
                int i4 = sb0.i(bArr, i3);
                if (i4 + 2 > i) {
                    i4 = (short) (((short) (((short) ((bArr[i3] & ExifInterface.MARKER) | 0)) << 8)) | (bArr[i3 + 1] & ExifInterface.MARKER));
                    if (i4 + 2 > i) {
                        break;
                    }
                }
                hf0Var.f1841if = i4;
                int i5 = i3 + 2;
                if (i4 > 0) {
                    byte[] bArr2 = new byte[i4];
                    System.arraycopy(bArr, i5, bArr2, 0, i4);
                    hf0Var.f1840for = bArr2;
                }
                i2 = i5 + i4;
                arrayList.add(hf0Var);
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        } catch (IOException e) {
            throw new af0(e);
        }
    }
}
