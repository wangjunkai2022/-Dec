package com.qq.e.ads.cfg;

import com.apk.Cgoto;
import com.qq.e.comm.util.GDTLogger;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class VideoOption {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11501a;
    public final int b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final int h;
    public final int i;

    /* loaded from: classes8.dex */
    public static final class AutoPlayPolicy {
        public static final int ALWAYS = 1;
        public static final int NEVER = 2;
        public static final int WIFI = 0;
    }

    /* loaded from: classes8.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        public boolean f11502a = true;
        public int b = 1;
        public boolean c = true;
        public boolean d = true;
        public boolean e = true;
        public boolean f = false;
        public boolean g = false;
        public int h;
        public int i;

        public VideoOption build() {
            return new VideoOption(this);
        }

        public Builder setAutoPlayMuted(boolean z) {
            this.f11502a = z;
            return this;
        }

        public Builder setAutoPlayPolicy(int i) {
            if (i < 0 || i > 2) {
                i = 1;
                GDTLogger.e("setAutoPlayPolicy 设置失败，值只能为0到2之间的数值, 重置为 : 1");
            }
            this.b = i;
            return this;
        }

        public Builder setDetailPageMuted(boolean z) {
            this.g = z;
            return this;
        }

        public Builder setEnableDetailPage(boolean z) {
            this.e = z;
            return this;
        }

        public Builder setEnableUserControl(boolean z) {
            this.f = z;
            return this;
        }

        public Builder setMaxVideoDuration(int i) {
            this.h = i;
            return this;
        }

        public Builder setMinVideoDuration(int i) {
            this.i = i;
            return this;
        }

        public Builder setNeedCoverImage(boolean z) {
            this.d = z;
            return this;
        }

        public Builder setNeedProgressBar(boolean z) {
            this.c = z;
            return this;
        }
    }

    public VideoOption(Builder builder) {
        this.f11501a = builder.f11502a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
    }

    public boolean getAutoPlayMuted() {
        return this.f11501a;
    }

    public int getAutoPlayPolicy() {
        return this.b;
    }

    public int getMaxVideoDuration() {
        return this.h;
    }

    public int getMinVideoDuration() {
        return this.i;
    }

    public JSONObject getOptions() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("autoPlayMuted", Boolean.valueOf(this.f11501a));
            jSONObject.putOpt("autoPlayPolicy", Integer.valueOf(this.b));
            jSONObject.putOpt("detailPageMuted", Boolean.valueOf(this.g));
        } catch (Exception e) {
            StringBuilder m1016super = Cgoto.m1016super("Get video options error: ");
            m1016super.append(e.getMessage());
            GDTLogger.d(m1016super.toString());
        }
        return jSONObject;
    }

    public boolean isDetailPageMuted() {
        return this.g;
    }

    public boolean isEnableDetailPage() {
        return this.e;
    }

    public boolean isEnableUserControl() {
        return this.f;
    }

    public boolean isNeedCoverImage() {
        return this.d;
    }

    public boolean isNeedProgressBar() {
        return this.c;
    }
}
