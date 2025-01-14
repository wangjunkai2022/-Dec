package com.google.zxing.oned;

import com.apk.Cgoto;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* loaded from: classes8.dex */
public class Code93Writer extends OneDimensionalCodeWriter {
    @Deprecated
    public static int appendPattern(boolean[] zArr, int i, int[] iArr, boolean z) {
        return appendPattern(zArr, i, iArr);
    }

    public static int computeChecksumIndex(String str, int i) {
        int i2 = 0;
        int i3 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            i2 += Code93Reader.ALPHABET_STRING.indexOf(str.charAt(length)) * i3;
            i3++;
            if (i3 > i) {
                i3 = 1;
            }
        }
        return i2 % 47;
    }

    public static void toIntArray(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_93) {
            return super.encode(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(barcodeFormat)));
    }

    public static int appendPattern(boolean[] zArr, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            zArr[i] = iArr[i2] != 0;
            i2++;
            i = i3;
        }
        return 9;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length <= 80) {
            int[] iArr = new int[9];
            toIntArray(Code93Reader.CHARACTER_ENCODINGS[47], iArr);
            boolean[] zArr = new boolean[((str.length() + 2 + 2) * 9) + 1];
            int appendPattern = appendPattern(zArr, 0, iArr);
            for (int i = 0; i < length; i++) {
                toIntArray(Code93Reader.CHARACTER_ENCODINGS[Code93Reader.ALPHABET_STRING.indexOf(str.charAt(i))], iArr);
                appendPattern += appendPattern(zArr, appendPattern, iArr);
            }
            int computeChecksumIndex = computeChecksumIndex(str, 20);
            toIntArray(Code93Reader.CHARACTER_ENCODINGS[computeChecksumIndex], iArr);
            int appendPattern2 = appendPattern(zArr, appendPattern, iArr) + appendPattern;
            StringBuilder m1016super = Cgoto.m1016super(str);
            m1016super.append(Code93Reader.ALPHABET_STRING.charAt(computeChecksumIndex));
            toIntArray(Code93Reader.CHARACTER_ENCODINGS[computeChecksumIndex(m1016super.toString(), 15)], iArr);
            int appendPattern3 = appendPattern(zArr, appendPattern2, iArr) + appendPattern2;
            toIntArray(Code93Reader.CHARACTER_ENCODINGS[47], iArr);
            zArr[appendPattern(zArr, appendPattern3, iArr) + appendPattern3] = true;
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
