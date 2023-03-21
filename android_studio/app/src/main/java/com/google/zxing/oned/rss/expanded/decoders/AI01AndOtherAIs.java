package com.google.zxing.oned.rss.expanded.decoders;

import com.apk.Cgoto;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* loaded from: classes8.dex */
public final class AI01AndOtherAIs extends AI01decoder {
    public static final int HEADER_SIZE = 4;

    public AI01AndOtherAIs(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException, FormatException {
        StringBuilder m1016super = Cgoto.m1016super("(01)");
        int length = m1016super.length();
        m1016super.append(getGeneralDecoder().extractNumericValueFromBitArray(4, 4));
        encodeCompressedGtinWithoutAI(m1016super, 8, length);
        return getGeneralDecoder().decodeAllCodes(m1016super, 48);
    }
}
