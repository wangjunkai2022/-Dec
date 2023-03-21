package com.apk;

import java.security.MessageDigest;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SegmentedByteString.kt */
/* loaded from: classes7.dex */
public final class il0 extends uk0 {
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public final transient byte[][] f2149case;
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public final transient int[] f2150else;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public il0(@NotNull byte[][] bArr, @NotNull int[] iArr) {
        super(uk0.f4912new.f4915for);
        nd0.m1875new(bArr, "segments");
        nd0.m1875new(iArr, "directory");
        this.f2149case = bArr;
        this.f2150else = iArr;
    }

    @Override // com.apk.uk0
    /* renamed from: case  reason: not valid java name */
    public byte mo1233case(int i) {
        sb0.m2433throw(this.f2150else[this.f2149case.length - 1], i, 1L);
        int j = sb0.j(this, i);
        int i2 = j == 0 ? 0 : this.f2150else[j - 1];
        int[] iArr = this.f2150else;
        byte[][] bArr = this.f2149case;
        return bArr[j][(i - i2) + iArr[bArr.length + j]];
    }

    @Override // com.apk.uk0
    /* renamed from: catch  reason: not valid java name */
    public void mo1234catch(@NotNull rk0 rk0Var, int i, int i2) {
        nd0.m1875new(rk0Var, "buffer");
        int i3 = i2 + i;
        int j = sb0.j(this, i);
        while (i < i3) {
            int i4 = j == 0 ? 0 : this.f2150else[j - 1];
            int[] iArr = this.f2150else;
            int i5 = iArr[this.f2149case.length + j];
            int min = Math.min(i3, (iArr[j] - i4) + i4) - i;
            int i6 = (i - i4) + i5;
            gl0 gl0Var = new gl0(this.f2149case[j], i6, i6 + min, true, false);
            gl0 gl0Var2 = rk0Var.f4107do;
            if (gl0Var2 == null) {
                gl0Var.f1604else = gl0Var;
                gl0Var.f1602case = gl0Var;
                rk0Var.f4107do = gl0Var;
            } else {
                nd0.m1874if(gl0Var2);
                gl0 gl0Var3 = gl0Var2.f1604else;
                nd0.m1874if(gl0Var3);
                gl0Var3.m979if(gl0Var);
            }
            i += min;
            j++;
        }
        rk0Var.f4108if += mo1239for();
    }

    @NotNull
    /* renamed from: class  reason: not valid java name */
    public byte[] m1235class() {
        byte[] bArr = new byte[mo1239for()];
        int length = this.f2149case.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.f2150else;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            uc0.m2698if(this.f2149case[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    /* renamed from: const  reason: not valid java name */
    public final uk0 m1236const() {
        return new uk0(m1235class());
    }

    @Override // com.apk.uk0
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public String mo1237do() {
        return m1236const().mo1237do();
    }

    @Override // com.apk.uk0
    /* renamed from: else  reason: not valid java name */
    public boolean mo1238else(int i, @NotNull uk0 uk0Var, int i2, int i3) {
        nd0.m1875new(uk0Var, "other");
        if (i < 0 || i > mo1239for() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int j = sb0.j(this, i);
        while (i < i4) {
            int i5 = j == 0 ? 0 : this.f2150else[j - 1];
            int[] iArr = this.f2150else;
            int i6 = iArr[this.f2149case.length + j];
            int min = Math.min(i4, (iArr[j] - i5) + i5) - i;
            if (!uk0Var.mo1240goto(i2, this.f2149case[j], (i - i5) + i6, min)) {
                return false;
            }
            i2 += min;
            i += min;
            j++;
        }
        return true;
    }

    @Override // com.apk.uk0
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof uk0) {
            uk0 uk0Var = (uk0) obj;
            if (uk0Var.mo1239for() == mo1239for() && mo1238else(0, uk0Var, 0, mo1239for())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.apk.uk0
    /* renamed from: for  reason: not valid java name */
    public int mo1239for() {
        return this.f2150else[this.f2149case.length - 1];
    }

    @Override // com.apk.uk0
    /* renamed from: goto  reason: not valid java name */
    public boolean mo1240goto(int i, @NotNull byte[] bArr, int i2, int i3) {
        nd0.m1875new(bArr, "other");
        if (i < 0 || i > mo1239for() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int j = sb0.j(this, i);
        while (i < i4) {
            int i5 = j == 0 ? 0 : this.f2150else[j - 1];
            int[] iArr = this.f2150else;
            int i6 = iArr[this.f2149case.length + j];
            int min = Math.min(i4, (iArr[j] - i5) + i5) - i;
            if (!sb0.m2414goto(this.f2149case[j], (i - i5) + i6, bArr, i2, min)) {
                return false;
            }
            i2 += min;
            i += min;
            j++;
        }
        return true;
    }

    @Override // com.apk.uk0
    public int hashCode() {
        int i = this.f4914do;
        if (i != 0) {
            return i;
        }
        int length = this.f2149case.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.f2150else;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr = this.f2149case[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.f4914do = i3;
        return i3;
    }

    @Override // com.apk.uk0
    @NotNull
    /* renamed from: if  reason: not valid java name */
    public uk0 mo1241if(@NotNull String str) {
        nd0.m1875new(str, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        int length = this.f2149case.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f2150else;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(this.f2149case[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digest = messageDigest.digest();
        nd0.m1872for(digest, "digest.digest()");
        return new uk0(digest);
    }

    @Override // com.apk.uk0
    @NotNull
    /* renamed from: new  reason: not valid java name */
    public String mo1242new() {
        return m1236const().mo1242new();
    }

    @Override // com.apk.uk0
    @NotNull
    /* renamed from: this  reason: not valid java name */
    public uk0 mo1243this() {
        return m1236const().mo1243this();
    }

    @Override // com.apk.uk0
    @NotNull
    public String toString() {
        return m1236const().toString();
    }

    @Override // com.apk.uk0
    @NotNull
    /* renamed from: try  reason: not valid java name */
    public byte[] mo1244try() {
        return m1235class();
    }
}
