package com.google.zxing.oned;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.maxicode.decoder.DecodedBitStreamParser;
import com.qq.e.comm.adevent.AdEventType;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes8.dex */
public final class Code93Reader extends OneDReader {
    public static final int ASTERISK_ENCODING;
    public static final int[] CHARACTER_ENCODINGS;
    public static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    public static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    public final StringBuilder decodeRowResult = new StringBuilder(20);
    public final int[] counters = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, TTAdConstant.DEEPLINK_FALL_BACK_CODE, 404, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, 406, TTAdConstant.IMAGE_LIST_SIZE_CODE, 364, 358, 310, 314, AdEventType.VIDEO_PAGE_CLOSE, 468, 466, 458, 366, 374, 430, 294, 474, FloatingActionButton.AUTO_MINI_LARGEST_SCREEN_WIDTH, 306, 350};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[47];
    }

    public static void checkChecksums(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        checkOneChecksum(charSequence, length - 2, 20);
        checkOneChecksum(charSequence, length - 1, 15);
    }

    public static void checkOneChecksum(CharSequence charSequence, int i, int i2) throws ChecksumException {
        int i3 = 0;
        int i4 = 1;
        for (int i5 = i - 1; i5 >= 0; i5--) {
            i3 += ALPHABET_STRING.indexOf(charSequence.charAt(i5)) * i4;
            i4++;
            if (i4 > i2) {
                i4 = 1;
            }
        }
        if (charSequence.charAt(i) != ALPHABET[i3 % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public static String decodeExtended(CharSequence charSequence) throws FormatException {
        int i;
        char c;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt < 'a' || charAt > 'd') {
                sb.append(charAt);
            } else if (i2 < length - 1) {
                i2++;
                char charAt2 = charSequence.charAt(i2);
                switch (charAt) {
                    case 'a':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i = charAt2 - '@';
                            c = (char) i;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        break;
                    case 'b':
                        if (charAt2 >= 'A' && charAt2 <= 'E') {
                            i = charAt2 - '&';
                        } else if (charAt2 >= 'F' && charAt2 <= 'J') {
                            i = charAt2 + DecodedBitStreamParser.TWOSHIFTA;
                        } else if (charAt2 >= 'K' && charAt2 <= 'O') {
                            i = charAt2 + 16;
                        } else if (charAt2 >= 'P' && charAt2 <= 'S') {
                            i = charAt2 + '+';
                        } else if (charAt2 >= 'T' && charAt2 <= 'Z') {
                            c = 127;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                        c = (char) i;
                        break;
                    case 'c':
                        if (charAt2 >= 'A' && charAt2 <= 'O') {
                            i = charAt2 - ' ';
                            c = (char) i;
                            break;
                        } else if (charAt2 == 'Z') {
                            c = ':';
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    case 'd':
                        if (charAt2 >= 'A' && charAt2 <= 'Z') {
                            i = charAt2 + ' ';
                            c = (char) i;
                            break;
                        } else {
                            throw FormatException.getFormatInstance();
                        }
                    default:
                        c = 0;
                        break;
                }
                sb.append(c);
            } else {
                throw FormatException.getFormatInstance();
            }
            i2++;
        }
        return sb.toString();
    }

    private int[] findAsteriskPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        Arrays.fill(this.counters, 0);
        int[] iArr = this.counters;
        int length = iArr.length;
        int i = nextSet;
        boolean z = false;
        int i2 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) != z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                if (i2 != length - 1) {
                    i2++;
                } else if (toPattern(iArr) == ASTERISK_ENCODING) {
                    return new int[]{i, nextSet};
                } else {
                    i += iArr[0] + iArr[1];
                    int i3 = i2 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i3);
                    iArr[i3] = 0;
                    iArr[i2] = 0;
                    i2--;
                }
                iArr[i2] = 1;
                z = !z;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static char patternToChar(int i) throws NotFoundException {
        int i2 = 0;
        while (true) {
            int[] iArr = CHARACTER_ENCODINGS;
            if (i2 < iArr.length) {
                if (iArr[i2] == i) {
                    return ALPHABET[i2];
                }
                i2++;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    public static int toPattern(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int round = Math.round((iArr[i4] * 9.0f) / i);
            if (round <= 0 || round > 4) {
                return -1;
            }
            if ((i4 & 1) == 0) {
                for (int i5 = 0; i5 < round; i5++) {
                    i3 = (i3 << 1) | 1;
                }
            } else {
                i3 <<= round;
            }
        }
        return i3;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] findAsteriskPattern;
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray)[1]);
        int size = bitArray.getSize();
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.decodeRowResult;
        sb.setLength(0);
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int pattern = toPattern(iArr);
            if (pattern >= 0) {
                char patternToChar = patternToChar(pattern);
                sb.append(patternToChar);
                int i2 = nextSet;
                for (int i3 : iArr) {
                    i2 += i3;
                }
                int nextSet2 = bitArray.getNextSet(i2);
                if (patternToChar == '*') {
                    sb.deleteCharAt(sb.length() - 1);
                    int i4 = 0;
                    for (int i5 : iArr) {
                        i4 += i5;
                    }
                    if (nextSet2 != size && bitArray.get(nextSet2)) {
                        if (sb.length() >= 2) {
                            checkChecksums(sb);
                            sb.setLength(sb.length() - 2);
                            float f = i;
                            return new Result(decodeExtended(sb), null, new ResultPoint[]{new ResultPoint((findAsteriskPattern[1] + findAsteriskPattern[0]) / 2.0f, f), new ResultPoint((i4 / 2.0f) + nextSet, f)}, BarcodeFormat.CODE_93);
                        }
                        throw NotFoundException.getNotFoundInstance();
                    }
                    throw NotFoundException.getNotFoundInstance();
                }
                nextSet = nextSet2;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }
}
