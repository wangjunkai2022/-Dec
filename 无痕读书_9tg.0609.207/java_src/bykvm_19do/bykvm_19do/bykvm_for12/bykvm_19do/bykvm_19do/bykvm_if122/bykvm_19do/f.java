package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import androidx.exifinterface.media.ExifInterface;
import com.apk.Cgoto;
import com.umeng.analytics.pro.bz;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import org.litepal.util.cipher.AESCrypt;
/* compiled from: ByteString.java */
/* loaded from: classes8.dex */
public class f implements Serializable, Comparable<f> {
    public static final char[] d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final f e = a(new byte[0]);

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f10687a;
    public transient int b;
    public transient String c;

    public f(byte[] bArr) {
        this.f10687a = bArr;
    }

    public static f a(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private f b(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f10687a));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public static f c(String str) {
        if (str != null) {
            f fVar = new f(str.getBytes(u.f10700a));
            fVar.c = str;
            return fVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public f d() {
        return b(AESCrypt.HASH_ALGORITHM);
    }

    public int e() {
        return this.f10687a.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int e2 = fVar.e();
            byte[] bArr = this.f10687a;
            if (e2 == bArr.length && fVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public f f() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f10687a;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b >= 65 && b <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b + 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b2 = bArr2[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        bArr2[i2] = (byte) (b2 + 32);
                    }
                }
                return new f(bArr2);
            }
            i++;
        }
    }

    public byte[] g() {
        return (byte[]) this.f10687a.clone();
    }

    public String h() {
        String str = this.c;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f10687a, u.f10700a);
        this.c = str2;
        return str2;
    }

    public int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f10687a);
        this.b = hashCode;
        return hashCode;
    }

    public String toString() {
        StringBuilder sb;
        if (this.f10687a.length == 0) {
            return "[size=0]";
        }
        String h = h();
        int a2 = a(h, 64);
        if (a2 == -1) {
            if (this.f10687a.length <= 64) {
                StringBuilder m1016super = Cgoto.m1016super("[hex=");
                m1016super.append(b());
                m1016super.append("]");
                return m1016super.toString();
            }
            StringBuilder m1016super2 = Cgoto.m1016super("[size=");
            m1016super2.append(this.f10687a.length);
            m1016super2.append(" hex=");
            m1016super2.append(a(0, 64).b());
            m1016super2.append("…]");
            return m1016super2.toString();
        }
        String replace = h.substring(0, a2).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (a2 < h.length()) {
            sb = Cgoto.m1016super("[size=");
            sb.append(this.f10687a.length);
            sb.append(" text=");
            sb.append(replace);
            sb.append("…]");
        } else {
            sb = new StringBuilder();
            sb.append("[text=");
            sb.append(replace);
            sb.append("]");
        }
        return sb.toString();
    }

    public String a() {
        return b.a(this.f10687a);
    }

    public String b() {
        byte[] bArr = this.f10687a;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = d;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & bz.m];
        }
        return new String(cArr);
    }

    public static f a(String str) {
        if (str != null) {
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) (a(str.charAt(i2 + 1)) + (a(str.charAt(i2)) << 4));
                }
                return a(bArr);
            }
            throw new IllegalArgumentException(Cgoto.m989case("Unexpected hex string: ", str));
        }
        throw new IllegalArgumentException("hex == null");
    }

    public f c() {
        return b("SHA-1");
    }

    public final boolean b(f fVar) {
        return a(0, fVar, 0, fVar.e());
    }

    public static int a(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    throw new IllegalArgumentException("Unexpected hex digit: " + c);
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    public f a(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f10687a;
            if (i2 <= bArr.length) {
                int i3 = i2 - i;
                if (i3 >= 0) {
                    if (i == 0 && i2 == bArr.length) {
                        return this;
                    }
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(this.f10687a, i, bArr2, 0, i3);
                    return new f(bArr2);
                }
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            throw new IllegalArgumentException(Cgoto.m1019this(Cgoto.m1016super("endIndex > length("), this.f10687a.length, ")"));
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public byte a(int i) {
        return this.f10687a[i];
    }

    public void a(c cVar) {
        byte[] bArr = this.f10687a;
        cVar.write(bArr, 0, bArr.length);
    }

    public boolean a(int i, f fVar, int i2, int i3) {
        return fVar.a(i2, this.f10687a, i, i3);
    }

    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.f10687a;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && u.a(bArr2, i, bArr, i2, i3)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(f fVar) {
        int e2 = e();
        int e3 = fVar.e();
        int min = Math.min(e2, e3);
        for (int i = 0; i < min; i++) {
            int a2 = a(i) & ExifInterface.MARKER;
            int a3 = fVar.a(i) & ExifInterface.MARKER;
            if (a2 != a3) {
                return a2 < a3 ? -1 : 1;
            }
        }
        if (e2 == e3) {
            return 0;
        }
        return e2 < e3 ? -1 : 1;
    }

    public static int a(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 == i) {
                return i2;
            }
            int codePointAt = str.codePointAt(i2);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i3++;
            i2 += Character.charCount(codePointAt);
        }
        return str.length();
    }
}
