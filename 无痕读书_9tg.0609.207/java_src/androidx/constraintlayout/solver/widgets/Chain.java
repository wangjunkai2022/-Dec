package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
/* loaded from: classes8.dex */
public class Chain {
    public static final boolean DEBUG = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        int i3;
        ChainHead[] chainHeadArr;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = i4;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (constraintWidgetContainer.optimizeFor(4)) {
                if (!Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i, i2, chainHead)) {
                    applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
                }
            } else {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
        if (r2.mHorizontalChainStyle == 2) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0044, code lost:
        if (r2.mVerticalChainStyle == 2) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0046, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0048, code lost:
        r5 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x036c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r37, androidx.constraintlayout.solver.LinearSystem r38, int r39, int r40, androidx.constraintlayout.solver.widgets.ChainHead r41) {
        /*
            Method dump skipped, instructions count: 1282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Chain.applyChainConstraints(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.LinearSystem, int, int, androidx.constraintlayout.solver.widgets.ChainHead):void");
    }
}
