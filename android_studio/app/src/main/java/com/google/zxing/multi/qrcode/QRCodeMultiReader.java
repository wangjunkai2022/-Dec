package com.google.zxing.multi.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.multi.MultipleBarcodeReader;
import com.google.zxing.multi.qrcode.detector.MultiDetector;
import com.google.zxing.qrcode.QRCodeReader;
import com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes8.dex */
public final class QRCodeMultiReader extends QRCodeReader implements MultipleBarcodeReader {
    public static final Result[] EMPTY_RESULT_ARRAY = new Result[0];
    public static final ResultPoint[] NO_POINTS = new ResultPoint[0];

    /* loaded from: classes8.dex */
    public static final class SAComparator implements Serializable, Comparator<Result> {
        public SAComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Result result, Result result2) {
            return Integer.compare(((Integer) result.getResultMetadata().get(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)).intValue(), ((Integer) result2.getResultMetadata().get(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)).intValue());
        }
    }

    public static List<Result> processStructuredAppend(List<Result> list) {
        boolean z;
        Iterator<Result> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().getResultMetadata().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Result result : list) {
                arrayList.add(result);
                if (result.getResultMetadata().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)) {
                    arrayList2.add(result);
                }
            }
            Collections.sort(arrayList2, new SAComparator());
            StringBuilder sb = new StringBuilder();
            Iterator it2 = arrayList2.iterator();
            int i = 0;
            int i2 = 0;
            while (it2.hasNext()) {
                Result result2 = (Result) it2.next();
                sb.append(result2.getText());
                i += result2.getRawBytes().length;
                if (result2.getResultMetadata().containsKey(ResultMetadataType.BYTE_SEGMENTS)) {
                    for (byte[] bArr : (Iterable) result2.getResultMetadata().get(ResultMetadataType.BYTE_SEGMENTS)) {
                        i2 += bArr.length;
                    }
                }
            }
            byte[] bArr2 = new byte[i];
            byte[] bArr3 = new byte[i2];
            Iterator it3 = arrayList2.iterator();
            int i3 = 0;
            int i4 = 0;
            while (it3.hasNext()) {
                Result result3 = (Result) it3.next();
                System.arraycopy(result3.getRawBytes(), 0, bArr2, i3, result3.getRawBytes().length);
                i3 += result3.getRawBytes().length;
                if (result3.getResultMetadata().containsKey(ResultMetadataType.BYTE_SEGMENTS)) {
                    for (byte[] bArr4 : (Iterable) result3.getResultMetadata().get(ResultMetadataType.BYTE_SEGMENTS)) {
                        System.arraycopy(bArr4, 0, bArr3, i4, bArr4.length);
                        i4 += bArr4.length;
                    }
                }
            }
            Result result4 = new Result(sb.toString(), bArr2, NO_POINTS, BarcodeFormat.QR_CODE);
            if (i2 > 0) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(bArr3);
                result4.putMetadata(ResultMetadataType.BYTE_SEGMENTS, arrayList3);
            }
            arrayList.add(result4);
            return arrayList;
        }
        return list;
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap) throws NotFoundException {
        return decodeMultiple(binaryBitmap, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        DetectorResult[] detectMulti;
        ArrayList arrayList = new ArrayList();
        for (DetectorResult detectorResult : new MultiDetector(binaryBitmap.getBlackMatrix()).detectMulti(map)) {
            try {
                DecoderResult decode = getDecoder().decode(detectorResult.getBits(), map);
                ResultPoint[] points = detectorResult.getPoints();
                if (decode.getOther() instanceof QRCodeDecoderMetaData) {
                    ((QRCodeDecoderMetaData) decode.getOther()).applyMirroredCorrection(points);
                }
                Result result = new Result(decode.getText(), decode.getRawBytes(), points, BarcodeFormat.QR_CODE);
                List<byte[]> byteSegments = decode.getByteSegments();
                if (byteSegments != null) {
                    result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
                }
                String eCLevel = decode.getECLevel();
                if (eCLevel != null) {
                    result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
                }
                if (decode.hasStructuredAppend()) {
                    result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(decode.getStructuredAppendSequenceNumber()));
                    result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decode.getStructuredAppendParity()));
                }
                arrayList.add(result);
            } catch (ReaderException unused) {
            }
        }
        if (arrayList.isEmpty()) {
            return EMPTY_RESULT_ARRAY;
        }
        List<Result> processStructuredAppend = processStructuredAppend(arrayList);
        return (Result[]) processStructuredAppend.toArray(new Result[processStructuredAppend.size()]);
    }
}
