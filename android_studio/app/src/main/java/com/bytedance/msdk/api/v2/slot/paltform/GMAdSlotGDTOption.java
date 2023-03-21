package com.bytedance.msdk.api.v2.slot.paltform;

import android.widget.FrameLayout;
import com.bytedance.msdk.api.GDTExtraOption;

/* loaded from: classes8.dex */
public class GMAdSlotGDTOption {

    /* renamed from: case  reason: not valid java name */
    public final int f9368case;

    /* renamed from: do  reason: not valid java name */
    public boolean f9369do;

    /* renamed from: else  reason: not valid java name */
    public final int f9370else;

    /* renamed from: for  reason: not valid java name */
    public boolean f9371for;

    /* renamed from: goto  reason: not valid java name */
    public final int f9372goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f9373if;

    /* renamed from: new  reason: not valid java name */
    public boolean f9374new;

    /* renamed from: this  reason: not valid java name */
    public FrameLayout.LayoutParams f9375this;

    /* renamed from: try  reason: not valid java name */
    public int f9376try;

    /* loaded from: classes8.dex */
    public static final class AutoPlayPolicy {
        public static final int ALWAYS = 1;
        public static final int NEVER = 2;
        public static final int WIFI = 0;
    }

    /* loaded from: classes8.dex */
    public static final class BrowserType {
        public static final int TYPE_DEFAULT = 0;
        public static final int TYPE_INNER = 1;
        public static final int TYPE_SYS = 2;
    }

    /* loaded from: classes8.dex */
    public static final class Builder {

        /* renamed from: case  reason: not valid java name */
        public int f9377case;

        /* renamed from: do  reason: not valid java name */
        public boolean f9378do;

        /* renamed from: else  reason: not valid java name */
        public int f9379else;

        /* renamed from: for  reason: not valid java name */
        public boolean f9380for;

        /* renamed from: goto  reason: not valid java name */
        public int f9381goto;

        /* renamed from: if  reason: not valid java name */
        public boolean f9382if;

        /* renamed from: new  reason: not valid java name */
        public boolean f9383new;

        /* renamed from: this  reason: not valid java name */
        public FrameLayout.LayoutParams f9384this;

        /* renamed from: try  reason: not valid java name */
        public int f9385try;

        public final GMAdSlotGDTOption build() {
            return new GMAdSlotGDTOption(this, null);
        }

        public Builder setAutoPlayPolicy(int i) {
            this.f9379else = i;
            return this;
        }

        public Builder setDownAPPConfirmPolicy(int i) {
            this.f9381goto = i;
            return this;
        }

        public Builder setGDTAutoPlayMuted(boolean z) {
            this.f9382if = z;
            return this;
        }

        public Builder setGDTDetailPageMuted(boolean z) {
            this.f9380for = z;
            return this;
        }

        public Builder setGDTEnableDetailPage(boolean z) {
            this.f9378do = z;
            return this;
        }

        public Builder setGDTEnableUserControl(boolean z) {
            this.f9383new = z;
            return this;
        }

        public Builder setGDTMaxVideoDuration(int i) {
            this.f9377case = i;
            return this;
        }

        public Builder setGDTMinVideoDuration(int i) {
            this.f9385try = i;
            return this;
        }

        public Builder setNativeAdLogoParams(FrameLayout.LayoutParams layoutParams) {
            this.f9384this = layoutParams;
            return this;
        }
    }

    /* loaded from: classes8.dex */
    public static final class DownAPPConfirmPolicy {
        public static final int TYPE_DEFAULT = 0;
        public static final int TYPE_NO_CONFIRM = 1;
    }

    /* loaded from: classes8.dex */
    public static final class VideoPlayPolicy {
        public static final int AUTO = 1;
        public static final int MANUAL = 2;
        public static final int UNKNOWN = 0;
    }

    public GMAdSlotGDTOption(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f9369do = true;
        this.f9373if = true;
        this.f9371for = false;
        this.f9374new = false;
        this.f9376try = 0;
        this.f9369do = builder.f9378do;
        this.f9373if = builder.f9382if;
        this.f9371for = builder.f9380for;
        this.f9374new = builder.f9383new;
        this.f9368case = builder.f9385try;
        this.f9370else = builder.f9377case;
        this.f9376try = builder.f9379else;
        this.f9372goto = builder.f9381goto;
        this.f9375this = builder.f9384this;
    }

    public int getDownAPPConfirmPolicy() {
        return this.f9372goto;
    }

    public int getGDTAutoPlayPolicy() {
        return this.f9376try;
    }

    public GDTExtraOption getGDTExtraOption(boolean z) {
        GDTExtraOption.Builder builder = new GDTExtraOption.Builder();
        builder.setAutoPlayPolicy(getGDTAutoPlayPolicy());
        builder.setDownAPPConfirmPolicy(getDownAPPConfirmPolicy());
        builder.setGDTAutoPlayMuted(isGDTAutoPlayMuted());
        builder.setGDTDetailPageMuted(isGDTDetailPageMuted());
        builder.setGDTEnableDetailPage(isGDTEnableDetailPage());
        builder.setGDTEnableUserControl(isGDTEnableUserControl());
        builder.setGDTMaxVideoDuration(getGDTMaxVideoDuration());
        builder.setGDTMinVideoDuration(getGDTMinVideoDuration());
        builder.setSplashPreLoad(z);
        return builder.build();
    }

    public int getGDTMaxVideoDuration() {
        return this.f9370else;
    }

    public int getGDTMinVideoDuration() {
        return this.f9368case;
    }

    public FrameLayout.LayoutParams getNativeAdLogoParams() {
        return this.f9375this;
    }

    public boolean isGDTAutoPlayMuted() {
        return this.f9373if;
    }

    public boolean isGDTDetailPageMuted() {
        return this.f9371for;
    }

    public boolean isGDTEnableDetailPage() {
        return this.f9369do;
    }

    public boolean isGDTEnableUserControl() {
        return this.f9374new;
    }
}
