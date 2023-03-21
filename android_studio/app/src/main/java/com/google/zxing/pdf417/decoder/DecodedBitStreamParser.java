package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.pdf417.PDF417ResultMetadata;
import java.math.BigInteger;
import java.util.Arrays;

/* loaded from: classes8.dex */
public final class DecodedBitStreamParser {
    public static final int AL = 28;
    public static final int AS = 27;
    public static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
    public static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
    public static final int BYTE_COMPACTION_MODE_LATCH = 901;
    public static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
    public static final int ECI_CHARSET = 927;
    public static final int ECI_GENERAL_PURPOSE = 926;
    public static final int ECI_USER_DEFINED = 925;
    public static final BigInteger[] EXP900;
    public static final int LL = 27;
    public static final int MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE = 4;
    public static final int MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM = 6;
    public static final int MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME = 0;
    public static final int MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE = 5;
    public static final int MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT = 1;
    public static final int MACRO_PDF417_OPTIONAL_FIELD_SENDER = 3;
    public static final int MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP = 2;
    public static final int MACRO_PDF417_TERMINATOR = 922;
    public static final int MAX_NUMERIC_CODEWORDS = 15;
    public static final int ML = 28;
    public static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
    public static final int NUMBER_OF_SEQUENCE_CODEWORDS = 2;
    public static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
    public static final int PAL = 29;
    public static final int PL = 25;
    public static final int PS = 29;
    public static final int TEXT_COMPACTION_MODE_LATCH = 900;
    public static final char[] PUNCT_CHARS = ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}'".toCharArray();
    public static final char[] MIXED_CHARS = "0123456789&\r\t,:#-.$/+%*=^".toCharArray();

    /* renamed from: com.google.zxing.pdf417.decoder.DecodedBitStreamParser$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                Mode mode = Mode.ALPHA;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;
                Mode mode2 = Mode.LOWER;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;
                Mode mode3 = Mode.MIXED;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;
                Mode mode4 = Mode.PUNCT;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;
                Mode mode5 = Mode.ALPHA_SHIFT;
                iArr5[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode;
                Mode mode6 = Mode.PUNCT_SHIFT;
                iArr6[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes8.dex */
    public enum Mode {
        ALPHA,
        LOWER,
        MIXED,
        PUNCT,
        ALPHA_SHIFT,
        PUNCT_SHIFT
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[16];
        EXP900 = bigIntegerArr;
        bigIntegerArr[0] = BigInteger.ONE;
        BigInteger valueOf = BigInteger.valueOf(900L);
        EXP900[1] = valueOf;
        int i = 2;
        while (true) {
            BigInteger[] bigIntegerArr2 = EXP900;
            if (i >= bigIntegerArr2.length) {
                return;
            }
            bigIntegerArr2[i] = bigIntegerArr2[i - 1].multiply(valueOf);
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0021 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int byteCompaction(int r16, int[] r17, java.nio.charset.Charset r18, int r19, java.lang.StringBuilder r20) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.byteCompaction(int, int[], java.nio.charset.Charset, int, java.lang.StringBuilder):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.zxing.common.DecoderResult decode(int[] r6, java.lang.String r7) throws com.google.zxing.FormatException {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r1 = r6.length
            r2 = 1
            int r1 = r1 << r2
            r0.<init>(r1)
            java.nio.charset.Charset r1 = java.nio.charset.StandardCharsets.ISO_8859_1
            r2 = r6[r2]
            com.google.zxing.pdf417.PDF417ResultMetadata r3 = new com.google.zxing.pdf417.PDF417ResultMetadata
            r3.<init>()
            r4 = 2
        L12:
            r5 = 0
            r5 = r6[r5]
            if (r4 >= r5) goto L6d
            r5 = 913(0x391, float:1.28E-42)
            if (r2 == r5) goto L58
            switch(r2) {
                case 900: goto L53;
                case 901: goto L4e;
                case 902: goto L49;
                default: goto L1e;
            }
        L1e:
            switch(r2) {
                case 922: goto L44;
                case 923: goto L44;
                case 924: goto L4e;
                case 925: goto L41;
                case 926: goto L3e;
                case 927: goto L2d;
                case 928: goto L28;
                default: goto L21;
            }
        L21:
            int r4 = r4 + (-1)
            int r2 = textCompaction(r6, r4, r0)
            goto L60
        L28:
            int r2 = decodeMacroBlock(r6, r4, r3)
            goto L60
        L2d:
            int r2 = r4 + 1
            r1 = r6[r4]
            com.google.zxing.common.CharacterSetECI r1 = com.google.zxing.common.CharacterSetECI.getCharacterSetECIByValue(r1)
            java.lang.String r1 = r1.name()
            java.nio.charset.Charset r1 = java.nio.charset.Charset.forName(r1)
            goto L60
        L3e:
            int r2 = r4 + 2
            goto L60
        L41:
            int r2 = r4 + 1
            goto L60
        L44:
            com.google.zxing.FormatException r6 = com.google.zxing.FormatException.getFormatInstance()
            throw r6
        L49:
            int r2 = numericCompaction(r6, r4, r0)
            goto L60
        L4e:
            int r2 = byteCompaction(r2, r6, r1, r4, r0)
            goto L60
        L53:
            int r2 = textCompaction(r6, r4, r0)
            goto L60
        L58:
            int r2 = r4 + 1
            r4 = r6[r4]
            char r4 = (char) r4
            r0.append(r4)
        L60:
            int r4 = r6.length
            if (r2 >= r4) goto L68
            int r4 = r2 + 1
            r2 = r6[r2]
            goto L12
        L68:
            com.google.zxing.FormatException r6 = com.google.zxing.FormatException.getFormatInstance()
            throw r6
        L6d:
            int r6 = r0.length()
            if (r6 == 0) goto L81
            com.google.zxing.common.DecoderResult r6 = new com.google.zxing.common.DecoderResult
            java.lang.String r0 = r0.toString()
            r1 = 0
            r6.<init>(r1, r0, r1, r7)
            r6.setOther(r3)
            return r6
        L81:
            com.google.zxing.FormatException r6 = com.google.zxing.FormatException.getFormatInstance()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.DecodedBitStreamParser.decode(int[], java.lang.String):com.google.zxing.common.DecoderResult");
    }

    public static String decodeBase900toBase10(int[] iArr, int i) throws FormatException {
        BigInteger bigInteger = BigInteger.ZERO;
        for (int i2 = 0; i2 < i; i2++) {
            bigInteger = bigInteger.add(EXP900[(i - i2) - 1].multiply(BigInteger.valueOf(iArr[i2])));
        }
        String bigInteger2 = bigInteger.toString();
        if (bigInteger2.charAt(0) == '1') {
            return bigInteger2.substring(1);
        }
        throw FormatException.getFormatInstance();
    }

    public static int decodeMacroBlock(int[] iArr, int i, PDF417ResultMetadata pDF417ResultMetadata) throws FormatException {
        if (i + 2 <= iArr[0]) {
            int[] iArr2 = new int[2];
            int i2 = 0;
            while (i2 < 2) {
                iArr2[i2] = iArr[i];
                i2++;
                i++;
            }
            pDF417ResultMetadata.setSegmentIndex(Integer.parseInt(decodeBase900toBase10(iArr2, 2)));
            StringBuilder sb = new StringBuilder();
            int textCompaction = textCompaction(iArr, i, sb);
            pDF417ResultMetadata.setFileId(sb.toString());
            int i3 = iArr[textCompaction] == 923 ? textCompaction + 1 : -1;
            while (textCompaction < iArr[0]) {
                int i4 = iArr[textCompaction];
                if (i4 == 922) {
                    textCompaction++;
                    pDF417ResultMetadata.setLastSegment(true);
                } else if (i4 == 923) {
                    int i5 = textCompaction + 1;
                    switch (iArr[i5]) {
                        case 0:
                            StringBuilder sb2 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i5 + 1, sb2);
                            pDF417ResultMetadata.setFileName(sb2.toString());
                            continue;
                        case 1:
                            StringBuilder sb3 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i5 + 1, sb3);
                            pDF417ResultMetadata.setSegmentCount(Integer.parseInt(sb3.toString()));
                            continue;
                        case 2:
                            StringBuilder sb4 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i5 + 1, sb4);
                            pDF417ResultMetadata.setTimestamp(Long.parseLong(sb4.toString()));
                            continue;
                        case 3:
                            StringBuilder sb5 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i5 + 1, sb5);
                            pDF417ResultMetadata.setSender(sb5.toString());
                            continue;
                        case 4:
                            StringBuilder sb6 = new StringBuilder();
                            textCompaction = textCompaction(iArr, i5 + 1, sb6);
                            pDF417ResultMetadata.setAddressee(sb6.toString());
                            continue;
                        case 5:
                            StringBuilder sb7 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i5 + 1, sb7);
                            pDF417ResultMetadata.setFileSize(Long.parseLong(sb7.toString()));
                            continue;
                        case 6:
                            StringBuilder sb8 = new StringBuilder();
                            textCompaction = numericCompaction(iArr, i5 + 1, sb8);
                            pDF417ResultMetadata.setChecksum(Integer.parseInt(sb8.toString()));
                            continue;
                        default:
                            throw FormatException.getFormatInstance();
                    }
                } else {
                    throw FormatException.getFormatInstance();
                }
            }
            if (i3 != -1) {
                int i6 = textCompaction - i3;
                if (pDF417ResultMetadata.isLastSegment()) {
                    i6--;
                }
                pDF417ResultMetadata.setOptionalData(Arrays.copyOfRange(iArr, i3, i6 + i3));
            }
            return textCompaction;
        }
        throw FormatException.getFormatInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void decodeTextCompaction(int[] iArr, int[] iArr2, int i, StringBuilder sb) {
        Mode mode;
        int i2;
        Mode mode2 = Mode.ALPHA;
        Mode mode3 = mode2;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            int ordinal = mode2.ordinal();
            char c = ' ';
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                if (ordinal == 5) {
                                    if (i4 < 29) {
                                        c = PUNCT_CHARS[i4];
                                        mode2 = mode3;
                                    } else if (i4 == 29) {
                                        mode2 = Mode.ALPHA;
                                    } else if (i4 != 900) {
                                        if (i4 == 913) {
                                            sb.append((char) iArr2[i3]);
                                        }
                                        mode2 = mode3;
                                    } else {
                                        mode2 = Mode.ALPHA;
                                    }
                                }
                                c = 0;
                            } else {
                                if (i4 < 26) {
                                    c = (char) (i4 + 65);
                                } else if (i4 != 26) {
                                    if (i4 == 900) {
                                        mode2 = Mode.ALPHA;
                                        c = 0;
                                    }
                                    mode2 = mode3;
                                    c = 0;
                                }
                                mode2 = mode3;
                            }
                        } else if (i4 < 29) {
                            c = PUNCT_CHARS[i4];
                        } else {
                            if (i4 == 29) {
                                mode2 = Mode.ALPHA;
                            } else if (i4 == 900) {
                                mode2 = Mode.ALPHA;
                            } else if (i4 == 913) {
                                sb.append((char) iArr2[i3]);
                            }
                            c = 0;
                        }
                    } else if (i4 < 25) {
                        c = MIXED_CHARS[i4];
                    } else {
                        if (i4 == 900) {
                            mode2 = Mode.ALPHA;
                        } else if (i4 != 913) {
                            switch (i4) {
                                case 25:
                                    mode2 = Mode.PUNCT;
                                    break;
                                case 27:
                                    mode2 = Mode.LOWER;
                                    break;
                                case 28:
                                    mode2 = Mode.ALPHA;
                                    break;
                                case 29:
                                    mode = Mode.PUNCT_SHIFT;
                                    c = 0;
                                    Mode mode4 = mode;
                                    mode3 = mode2;
                                    mode2 = mode4;
                                    break;
                            }
                        } else {
                            sb.append((char) iArr2[i3]);
                        }
                        c = 0;
                    }
                } else if (i4 < 26) {
                    i2 = i4 + 97;
                    c = (char) i2;
                } else {
                    if (i4 == 900) {
                        mode2 = Mode.ALPHA;
                    } else if (i4 != 913) {
                        switch (i4) {
                            case 27:
                                mode = Mode.ALPHA_SHIFT;
                                c = 0;
                                Mode mode42 = mode;
                                mode3 = mode2;
                                mode2 = mode42;
                                break;
                            case 28:
                                mode2 = Mode.MIXED;
                                break;
                            case 29:
                                mode = Mode.PUNCT_SHIFT;
                                c = 0;
                                Mode mode422 = mode;
                                mode3 = mode2;
                                mode2 = mode422;
                                break;
                        }
                    } else {
                        sb.append((char) iArr2[i3]);
                    }
                    c = 0;
                }
            } else if (i4 < 26) {
                i2 = i4 + 65;
                c = (char) i2;
            } else {
                if (i4 == 900) {
                    mode2 = Mode.ALPHA;
                } else if (i4 != 913) {
                    switch (i4) {
                        case 27:
                            mode2 = Mode.LOWER;
                            break;
                        case 28:
                            mode2 = Mode.MIXED;
                            break;
                        case 29:
                            mode = Mode.PUNCT_SHIFT;
                            c = 0;
                            Mode mode4222 = mode;
                            mode3 = mode2;
                            mode2 = mode4222;
                            break;
                    }
                } else {
                    sb.append((char) iArr2[i3]);
                }
                c = 0;
            }
            if (c != 0) {
                sb.append(c);
            }
        }
    }

    public static int numericCompaction(int[] iArr, int i, StringBuilder sb) throws FormatException {
        int[] iArr2 = new int[15];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i3 == iArr[0]) {
                z = true;
            }
            if (i4 < 900) {
                iArr2[i2] = i4;
                i2++;
            } else {
                if (i4 != 900 && i4 != 901 && i4 != 928) {
                    switch (i4) {
                    }
                }
                i3--;
                z = true;
            }
            if ((i2 % 15 == 0 || i4 == 902 || z) && i2 > 0) {
                sb.append(decodeBase900toBase10(iArr2, i2));
                i2 = 0;
            }
            i = i3;
        }
        return i;
    }

    public static int textCompaction(int[] iArr, int i, StringBuilder sb) {
        int[] iArr2 = new int[(iArr[0] - i) << 1];
        int[] iArr3 = new int[(iArr[0] - i) << 1];
        boolean z = false;
        int i2 = 0;
        while (i < iArr[0] && !z) {
            int i3 = i + 1;
            int i4 = iArr[i];
            if (i4 < 900) {
                iArr2[i2] = i4 / 30;
                iArr2[i2 + 1] = i4 % 30;
                i2 += 2;
            } else if (i4 != 913) {
                if (i4 != 928) {
                    switch (i4) {
                        case 900:
                            iArr2[i2] = 900;
                            i2++;
                            break;
                        case 901:
                        case 902:
                            break;
                        default:
                            switch (i4) {
                            }
                    }
                }
                i = i3 - 1;
                z = true;
            } else {
                iArr2[i2] = 913;
                i = i3 + 1;
                iArr3[i2] = iArr[i3];
                i2++;
            }
            i = i3;
        }
        decodeTextCompaction(iArr2, iArr3, i2, sb);
        return i;
    }
}
