package com.baidu.tts.f;

import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.swl.gg.ggs.SwlAdSplashView;
/* compiled from: TimeOutEnum.java */
/* loaded from: classes8.dex */
public enum l {
    DEFAULT(6, 6000),
    TWO_SECOND(2, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS),
    THREE_SECOND(3, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS),
    FOUR_SECOND(4, SwlAdSplashView.SPLASH_AD_TIMEOUT);
    
    public final long e;
    public final long f;

    l(long j, long j2) {
        this.e = j;
        this.f = j2;
    }

    public long a() {
        return this.f;
    }

    public int b() {
        return (int) a();
    }
}
