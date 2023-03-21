package com.bytedance.msdk.adapter.gdt;

import android.content.Context;
import com.bytedance.msdk.api.GDTExtraOption;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.comm.constants.BiddingLossReason;

/* loaded from: classes8.dex */
public class GDTAdapterUtils {
    public static final double CPM_DEFLAUT_VALUE = 0.0d;

    /* renamed from: com.bytedance.msdk.adapter.gdt.GDTAdapterUtils$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: do  reason: not valid java name */
        public static final /* synthetic */ int[] f8459do;

        static {
            int[] iArr = new int[GMAdConstant.BiddingLossReason.values().length];
            f8459do = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8459do[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8459do[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8459do[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8459do[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int getBiddingLossReason(GMAdConstant.BiddingLossReason biddingLossReason) {
        if (biddingLossReason == null) {
            return BiddingLossReason.OTHER;
        }
        int i = AnonymousClass1.f8459do[biddingLossReason.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return BiddingLossReason.OTHER;
                    }
                    return 4;
                }
                return 3;
            }
            return 2;
        }
        return 1;
    }

    public static VideoOption getGMVideoOption(GMAdSlotGDTOption gMAdSlotGDTOption) {
        VideoOption.Builder builder = new VideoOption.Builder();
        if (gMAdSlotGDTOption != null) {
            builder.setAutoPlayPolicy(gMAdSlotGDTOption.getGDTAutoPlayPolicy());
            builder.setAutoPlayMuted(gMAdSlotGDTOption.isGDTAutoPlayMuted());
            builder.setDetailPageMuted(gMAdSlotGDTOption.isGDTDetailPageMuted());
            builder.setEnableDetailPage(gMAdSlotGDTOption.isGDTEnableDetailPage());
            builder.setEnableUserControl(gMAdSlotGDTOption.isGDTEnableUserControl());
        }
        return builder.build();
    }

    public static VideoOption getVideoOption(GDTExtraOption gDTExtraOption) {
        VideoOption.Builder builder = new VideoOption.Builder();
        if (gDTExtraOption != null) {
            builder.setAutoPlayPolicy(gDTExtraOption.getGDTAutoPlayPolicy());
            builder.setAutoPlayMuted(gDTExtraOption.isGDTAutoPlayMuted());
            builder.setDetailPageMuted(gDTExtraOption.isGDTDetailPageMuted());
            builder.setEnableDetailPage(gDTExtraOption.isGDTEnableDetailPage());
            builder.setEnableUserControl(gDTExtraOption.isGDTEnableUserControl());
        }
        return builder.build();
    }
}
