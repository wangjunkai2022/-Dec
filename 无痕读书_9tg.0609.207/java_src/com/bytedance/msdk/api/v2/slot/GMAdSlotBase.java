package com.bytedance.msdk.api.v2.slot;

import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.s;
import com.bytedance.msdk.api.TTRequestExtraParams;
import com.bytedance.msdk.api.TTVideoOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotBaiduOption;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes8.dex */
public abstract class GMAdSlotBase {

    /* renamed from: break  reason: not valid java name */
    public String f9259break;

    /* renamed from: case  reason: not valid java name */
    public Map<String, Object> f9260case;

    /* renamed from: catch  reason: not valid java name */
    public int f9261catch;

    /* renamed from: do  reason: not valid java name */
    public boolean f9262do;

    /* renamed from: else  reason: not valid java name */
    public String f9263else;

    /* renamed from: for  reason: not valid java name */
    public boolean f9264for;

    /* renamed from: goto  reason: not valid java name */
    public int f9265goto;

    /* renamed from: if  reason: not valid java name */
    public float f9266if;

    /* renamed from: new  reason: not valid java name */
    public GMAdSlotGDTOption f9267new;

    /* renamed from: this  reason: not valid java name */
    public boolean f9268this;

    /* renamed from: try  reason: not valid java name */
    public GMAdSlotBaiduOption f9269try;

    /* loaded from: classes8.dex */
    public static abstract class Builder {

        /* renamed from: break  reason: not valid java name */
        public String f9270break;

        /* renamed from: do  reason: not valid java name */
        public boolean f9272do;

        /* renamed from: else  reason: not valid java name */
        public String f9273else;

        /* renamed from: for  reason: not valid java name */
        public boolean f9274for;

        /* renamed from: if  reason: not valid java name */
        public float f9276if;

        /* renamed from: new  reason: not valid java name */
        public GMAdSlotGDTOption f9277new;

        /* renamed from: this  reason: not valid java name */
        public boolean f9278this;

        /* renamed from: try  reason: not valid java name */
        public GMAdSlotBaiduOption f9279try;

        /* renamed from: case  reason: not valid java name */
        public Map<String, Object> f9271case = new HashMap();

        /* renamed from: goto  reason: not valid java name */
        public int f9275goto = 0;
    }

    public GMAdSlotBase(Builder builder) {
        this.f9262do = builder.f9272do;
        float f = builder.f9276if;
        if (f > 1.0f) {
            builder.f9276if = 1.0f;
        } else if (f < 0.0f) {
            builder.f9276if = 0.0f;
        }
        this.f9266if = builder.f9276if;
        this.f9264for = builder.f9274for;
        GMAdSlotGDTOption gMAdSlotGDTOption = builder.f9277new;
        if (gMAdSlotGDTOption != null) {
            this.f9267new = gMAdSlotGDTOption;
        } else {
            this.f9267new = new GMAdSlotGDTOption.Builder().build();
        }
        GMAdSlotBaiduOption gMAdSlotBaiduOption = builder.f9279try;
        if (gMAdSlotBaiduOption != null) {
            this.f9269try = gMAdSlotBaiduOption;
        } else {
            this.f9269try = new GMAdSlotBaiduOption.Builder().build();
        }
        this.f9260case = builder.f9271case;
        this.f9263else = builder.f9273else;
        this.f9265goto = builder.f9275goto;
        this.f9268this = builder.f9278this;
        this.f9259break = builder.f9270break;
    }

    public TTVideoOption createTTVideoOption(boolean z) {
        TTVideoOption.Builder builder = new TTVideoOption.Builder();
        builder.setMuted(isMuted());
        builder.setAdmobAppVolume(getVolume());
        builder.useSurfaceView(isUseSurfaceView());
        GMAdSlotGDTOption gMAdSlotGDTOption = getGMAdSlotGDTOption();
        if (gMAdSlotGDTOption != null) {
            builder.setGDTExtraOption(gMAdSlotGDTOption.getGDTExtraOption(z));
        }
        GMAdSlotBaiduOption gMAdSlotBaiduOption = getGMAdSlotBaiduOption();
        if (gMAdSlotGDTOption != null) {
            builder.setBaiduExtraOption(gMAdSlotBaiduOption.getBaiduExtra());
        }
        return builder.build();
    }

    @Deprecated
    public int getDownloadType() {
        return this.f9265goto;
    }

    public GMAdSlotBaiduOption getGMAdSlotBaiduOption() {
        return this.f9269try;
    }

    public GMAdSlotGDTOption getGMAdSlotGDTOption() {
        return this.f9267new;
    }

    @Deprecated
    public int getNetWorkNum() {
        return this.f9261catch;
    }

    @Nullable
    public Map<String, Object> getParams() {
        return this.f9260case;
    }

    public String getScenarioId() {
        return this.f9259break;
    }

    public TTRequestExtraParams getTTRequestExtraParams() {
        TTRequestExtraParams tTRequestExtraParams = new TTRequestExtraParams();
        if (getParams() != null && getParams().size() > 0) {
            tTRequestExtraParams.getExtraObject().putAll(getParams());
        }
        return tTRequestExtraParams;
    }

    public String getTestSlotId() {
        return this.f9263else;
    }

    public float getVolume() {
        return this.f9266if;
    }

    public boolean isBidNotify() {
        return this.f9268this;
    }

    public boolean isMuted() {
        return this.f9262do;
    }

    public boolean isUseSurfaceView() {
        return this.f9264for;
    }

    @Deprecated
    public void setNetWorkNum(String str) {
        this.f9261catch = s.a(str);
    }
}
