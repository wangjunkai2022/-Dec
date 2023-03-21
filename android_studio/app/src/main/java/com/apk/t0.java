package com.apk;

import java.util.Timer;
import java.util.TimerTask;

/* compiled from: ReadTimerHelper.java */
/* loaded from: classes8.dex */
public class t0 extends TimerTask {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ s0 f4624do;

    public t0(s0 s0Var) {
        this.f4624do = s0Var;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        s0 s0Var = this.f4624do;
        if (s0Var.f4237new) {
            if (s0Var.f4226class) {
                long a2 = ze.a("SP_TTS_TIME_SAVE_KEY", 0L);
                if (a2 == 0) {
                    a2 = System.currentTimeMillis();
                    tt.f4763do.putLong("SP_TTS_TIME_SAVE_KEY", a2);
                }
                if (Math.abs(System.currentTimeMillis() - a2) > s0Var.f4233goto * 60 * 1000) {
                    mf.m1712do("SP_TTS_SHOW_REWARD_DIALOG_KEY", null);
                    s0Var.f4237new = false;
                    Timer timer = s0Var.f4231final;
                    if (timer != null) {
                        timer.cancel();
                        s0Var.f4231final = null;
                        return;
                    }
                    return;
                }
                return;
            }
            int i = s0Var.f4233goto;
            int i2 = s0Var.f4243this;
            if (i2 > 0) {
                i -= i2;
            }
            int m3174instanceof = ze.m3174instanceof("SP_TTS_USE_TIME_KEY", i) + 1;
            tt.f4763do.putInt("SP_TTS_USE_TIME_KEY", m3174instanceof);
            if (m3174instanceof >= s0Var.f4233goto) {
                mf.m1712do("SP_TTS_SHOW_REWARD_DIALOG_KEY", null);
                s0Var.f4237new = false;
                Timer timer2 = s0Var.f4231final;
                if (timer2 != null) {
                    timer2.cancel();
                    s0Var.f4231final = null;
                }
            }
        }
    }
}
