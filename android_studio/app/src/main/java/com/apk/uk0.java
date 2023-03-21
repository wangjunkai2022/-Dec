package com.apk;

import java.io.Serializable;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ByteString.kt */
/* loaded from: classes7.dex */
public class uk0 implements Serializable, Comparable<uk0> {

    /* renamed from: do  reason: not valid java name */
    public transient int f4914do;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final byte[] f4915for;
    @Nullable

    /* renamed from: if  reason: not valid java name */
    public transient String f4916if;

    /* renamed from: try  reason: not valid java name */
    public static final Cdo f4913try = new Cdo(null);
    @JvmField
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public static final uk0 f4912new = new uk0(new byte[0]);

    /* compiled from: ByteString.kt */
    /* renamed from: com.apk.uk0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        /* renamed from: for  reason: not valid java name */
        public static uk0 m2715for(Cdo cdo, byte[] bArr, int i, int i2, int i3) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = bArr.length;
            }
            nd0.m1875new(bArr, "$this$toByteString");
            sb0.m2433throw(bArr.length, i, i2);
            return new uk0(uc0.m2699new(bArr, i, i2 + i));
        }

        @JvmStatic
        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final uk0 m2716do(@NotNull String str) {
            nd0.m1875new(str, "$this$decodeHex");
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) (ol0.m1973do(str.charAt(i2 + 1)) + (ol0.m1973do(str.charAt(i2)) << 4));
                }
                return new uk0(bArr);
            }
            throw new IllegalArgumentException(Cgoto.m989case("Unexpected hex string: ", str).toString());
        }

        @JvmStatic
        @NotNull
        /* renamed from: if  reason: not valid java name */
        public final uk0 m2717if(@NotNull String str) {
            nd0.m1875new(str, "$this$encodeUtf8");
            nd0.m1875new(str, "$this$asUtf8ToByteArray");
            byte[] bytes = str.getBytes(ee0.f1037do);
            nd0.m1872for(bytes, "(this as java.lang.String).getBytes(charset)");
            uk0 uk0Var = new uk0(bytes);
            uk0Var.f4916if = str;
            return uk0Var;
        }
    }

    public uk0(@NotNull byte[] bArr) {
        nd0.m1875new(bArr, "data");
        this.f4915for = bArr;
    }

    @NotNull
    /* renamed from: break  reason: not valid java name */
    public String m2714break() {
        String str = this.f4916if;
        if (str == null) {
            byte[] mo1244try = mo1244try();
            nd0.m1875new(mo1244try, "$this$toUtf8String");
            String str2 = new String(mo1244try, ee0.f1037do);
            this.f4916if = str2;
            return str2;
        }
        return str;
    }

    /* renamed from: case */
    public byte mo1233case(int i) {
        return this.f4915for[i];
    }

    /* renamed from: catch */
    public void mo1234catch(@NotNull rk0 rk0Var, int i, int i2) {
        nd0.m1875new(rk0Var, "buffer");
        nd0.m1875new(this, "$this$commonWrite");
        nd0.m1875new(rk0Var, "buffer");
        rk0Var.m2293instanceof(this.f4915for, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int compareTo(com.apk.uk0 r8) {
        /*
            r7 = this;
            com.apk.uk0 r8 = (com.apk.uk0) r8
            java.lang.String r0 = "other"
            com.apk.nd0.m1875new(r8, r0)
            int r0 = r7.mo1239for()
            int r1 = r8.mo1239for()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L15:
            if (r4 >= r2) goto L2b
            byte r5 = r7.mo1233case(r4)
            r5 = r5 & 255(0xff, float:3.57E-43)
            byte r6 = r8.mo1233case(r4)
            r6 = r6 & 255(0xff, float:3.57E-43)
            if (r5 != r6) goto L28
            int r4 = r4 + 1
            goto L15
        L28:
            if (r5 >= r6) goto L32
            goto L30
        L2b:
            if (r0 != r1) goto L2e
            goto L33
        L2e:
            if (r0 >= r1) goto L32
        L30:
            r3 = -1
            goto L33
        L32:
            r3 = 1
        L33:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.uk0.compareTo(java.lang.Object):int");
    }

    @NotNull
    /* renamed from: do */
    public String mo1237do() {
        return nk0.m1886do(this.f4915for, null, 1);
    }

    /* renamed from: else */
    public boolean mo1238else(int i, @NotNull uk0 uk0Var, int i2, int i3) {
        nd0.m1875new(uk0Var, "other");
        return uk0Var.mo1240goto(i2, this.f4915for, i, i3);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof uk0) {
            uk0 uk0Var = (uk0) obj;
            int mo1239for = uk0Var.mo1239for();
            byte[] bArr = this.f4915for;
            if (mo1239for == bArr.length && uk0Var.mo1240goto(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: for */
    public int mo1239for() {
        return this.f4915for.length;
    }

    /* renamed from: goto */
    public boolean mo1240goto(int i, @NotNull byte[] bArr, int i2, int i3) {
        nd0.m1875new(bArr, "other");
        if (i >= 0) {
            byte[] bArr2 = this.f4915for;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && sb0.m2414goto(bArr2, i, bArr, i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.f4914do;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f4915for);
        this.f4914do = hashCode;
        return hashCode;
    }

    @NotNull
    /* renamed from: if */
    public uk0 mo1241if(@NotNull String str) {
        nd0.m1875new(str, "algorithm");
        byte[] digest = MessageDigest.getInstance(str).digest(this.f4915for);
        nd0.m1872for(digest, "MessageDigest.getInstance(algorithm).digest(data)");
        return new uk0(digest);
    }

    @NotNull
    /* renamed from: new */
    public String mo1242new() {
        byte[] bArr = this.f4915for;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = ol0.f3457do;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & com.umeng.analytics.pro.bz.m];
        }
        return new String(cArr);
    }

    @NotNull
    /* renamed from: this */
    public uk0 mo1243this() {
        byte b;
        int i = 0;
        while (true) {
            byte[] bArr = this.f4915for;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            byte b3 = (byte) 65;
            if (b2 >= b3 && b2 <= (b = (byte) 90)) {
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                nd0.m1872for(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b4 = copyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        copyOf[i2] = (byte) (b4 + 32);
                    }
                }
                return new uk0(copyOf);
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x00f8, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0107, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0119, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0122, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0160, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0173, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0184, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0193, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x01a9, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x01b1, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x01b8, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x01ed, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x01f0, code lost:
        r5 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x008b, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x009c, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00a7, code lost:
        if (r4 == 64) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00e5, code lost:
        if (r4 == 64) goto L42;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 714
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.uk0.toString():java.lang.String");
    }

    @NotNull
    /* renamed from: try */
    public byte[] mo1244try() {
        return this.f4915for;
    }
}
