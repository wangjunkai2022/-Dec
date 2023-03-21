package com.apk;

import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.comm.util.AdError;
import java.util.Map;

/* compiled from: GdtProviderReward.java */
/* loaded from: classes7.dex */
public class l70 implements RewardVideoADListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2764do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ m70 f2765for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ z60 f2766if;

    public l70(m70 m70Var, String str, z60 z60Var) {
        this.f2765for = m70Var;
        this.f2764do = str;
        this.f2766if = z60Var;
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADClick() {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for) {
            return;
        }
        m70Var.m545catch(this.f2764do, this.f2766if);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADClose() {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for) {
            return;
        }
        m70Var.m559import(this.f2764do, this.f2766if);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADExpose() {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for) {
            return;
        }
        String str = this.f2764do;
        z60 z60Var = this.f2766if;
        if (m70Var != null) {
            Cgoto.m997extends("激励视频_", str, "_onExpose");
            if (z60Var != null) {
                z60Var.mo524do();
                return;
            }
            return;
        }
        throw null;
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADLoad() {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for) {
            return;
        }
        m70Var.f();
        this.f2765for.m554finally(this.f2764do, this.f2766if);
        this.f2765for.h(this.f2764do, 8000L, true, this.f2766if);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onADShow() {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for) {
            return;
        }
        m70Var.l();
        this.f2765for.m579volatile(this.f2764do, this.f2766if);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onError(AdError adError) {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for) {
            return;
        }
        m70Var.f();
        this.f2765for.m563new(adError.getErrorCode(), adError.getErrorMsg(), this.f2764do, this.f2766if);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onReward(Map<String, Object> map) {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for) {
            return;
        }
        m70Var.a(this.f2764do, this.f2766if);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onVideoCached() {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for || m70Var.f1244new) {
            return;
        }
        m70Var.f();
        this.f2765for.c(this.f2764do, this.f2766if);
    }

    @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
    public void onVideoComplete() {
        m70 m70Var = this.f2765for;
        if (m70Var.f1242for) {
            return;
        }
        m70Var.d(this.f2764do);
    }
}
