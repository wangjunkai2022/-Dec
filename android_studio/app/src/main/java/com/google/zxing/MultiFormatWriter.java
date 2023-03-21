package com.google.zxing;

import com.google.zxing.aztec.AztecWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.DataMatrixWriter;
import com.google.zxing.oned.CodaBarWriter;
import com.google.zxing.oned.Code128Writer;
import com.google.zxing.oned.Code39Writer;
import com.google.zxing.oned.Code93Writer;
import com.google.zxing.oned.EAN13Writer;
import com.google.zxing.oned.EAN8Writer;
import com.google.zxing.oned.ITFWriter;
import com.google.zxing.oned.UPCAWriter;
import com.google.zxing.oned.UPCEWriter;
import com.google.zxing.pdf417.PDF417Writer;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.Map;

/* loaded from: classes8.dex */
public final class MultiFormatWriter implements Writer {

    /* renamed from: com.google.zxing.MultiFormatWriter$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$zxing$BarcodeFormat;

        static {
            int[] iArr = new int[BarcodeFormat.values().length];
            $SwitchMap$com$google$zxing$BarcodeFormat = iArr;
            try {
                BarcodeFormat barcodeFormat = BarcodeFormat.EAN_8;
                iArr[6] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat2 = BarcodeFormat.UPC_E;
                iArr2[15] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat3 = BarcodeFormat.EAN_13;
                iArr3[7] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat4 = BarcodeFormat.UPC_A;
                iArr4[14] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat5 = BarcodeFormat.QR_CODE;
                iArr5[11] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat6 = BarcodeFormat.CODE_39;
                iArr6[2] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat7 = BarcodeFormat.CODE_93;
                iArr7[3] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat8 = BarcodeFormat.CODE_128;
                iArr8[4] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat9 = BarcodeFormat.ITF;
                iArr9[8] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                int[] iArr10 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat10 = BarcodeFormat.PDF_417;
                iArr10[10] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                int[] iArr11 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat11 = BarcodeFormat.CODABAR;
                iArr11[1] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat12 = BarcodeFormat.DATA_MATRIX;
                iArr12[5] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                int[] iArr13 = $SwitchMap$com$google$zxing$BarcodeFormat;
                BarcodeFormat barcodeFormat13 = BarcodeFormat.AZTEC;
                iArr13[0] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        Writer eAN8Writer;
        switch (barcodeFormat.ordinal()) {
            case 0:
                eAN8Writer = new AztecWriter();
                break;
            case 1:
                eAN8Writer = new CodaBarWriter();
                break;
            case 2:
                eAN8Writer = new Code39Writer();
                break;
            case 3:
                eAN8Writer = new Code93Writer();
                break;
            case 4:
                eAN8Writer = new Code128Writer();
                break;
            case 5:
                eAN8Writer = new DataMatrixWriter();
                break;
            case 6:
                eAN8Writer = new EAN8Writer();
                break;
            case 7:
                eAN8Writer = new EAN13Writer();
                break;
            case 8:
                eAN8Writer = new ITFWriter();
                break;
            case 9:
            case 12:
            case 13:
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(barcodeFormat)));
            case 10:
                eAN8Writer = new PDF417Writer();
                break;
            case 11:
                eAN8Writer = new QRCodeWriter();
                break;
            case 14:
                eAN8Writer = new UPCAWriter();
                break;
            case 15:
                eAN8Writer = new UPCEWriter();
                break;
        }
        return eAN8Writer.encode(str, barcodeFormat, i, i2, map);
    }
}
