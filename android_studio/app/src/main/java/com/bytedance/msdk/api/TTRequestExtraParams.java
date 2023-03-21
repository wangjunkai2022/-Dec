package com.bytedance.msdk.api;

import java.util.HashMap;
import java.util.Map;

@Deprecated
/* loaded from: classes8.dex */
public class TTRequestExtraParams {
    public static final int AD_VIDEO_PLAY_MUTE = 1;
    public static final int AD_VIDEO_PLAY_NOT_MUTE = 2;
    public static final String PARAM_AD_HEIGHT = "ad_height";
    public static final String PARAM_AD_LOAD_TIMEOUT = "ad_load_timeout";
    public static final String PARAM_AD_MUTE = "ad_mute";
    public static final String PARAM_AD_TYPE = "ad_type";
    public static final String PARAM_AD_WIDTH = "ad_width";
    public static final String PARAM_BANNER_ALLOW_SHOW_CLOSE_BTN = "allow_show_close_btn";

    /* renamed from: do  reason: not valid java name */
    public Map<String, Object> f8949do;

    public TTRequestExtraParams() {
        this.f8949do = null;
        this.f8949do = new HashMap();
    }

    public Map<String, Object> getExtraObject() {
        Map<String, Object> map = this.f8949do;
        if (map == null) {
            HashMap hashMap = new HashMap();
            this.f8949do = hashMap;
            return hashMap;
        }
        return map;
    }

    public TTRequestExtraParams setExtraObject(String str, Object obj) {
        Map<String, Object> map = this.f8949do;
        if (map != null) {
            map.put(str, obj);
        }
        return this;
    }
}
