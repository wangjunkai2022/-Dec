package com.ss.android.socialbase.downloader.impls;

import androidx.appcompat.widget.TooltipCompatHandler;
import com.ss.android.socialbase.downloader.downloader.s;

/* loaded from: classes7.dex */
public class j implements s {
    @Override // com.ss.android.socialbase.downloader.downloader.s
    public long a(int i, int i2) {
        if (i == 1) {
            return TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS;
        }
        if (i == 2) {
            return TooltipCompatHandler.HOVER_HIDE_TIMEOUT_MS;
        }
        if (i == 3) {
            return 30000L;
        }
        return i > 3 ? 300000L : 0L;
    }
}
