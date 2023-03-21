package com.bytedance.msdk.api;

import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;

@Deprecated
/* loaded from: classes8.dex */
public class GDTExtraOption {

    /* renamed from: break  reason: not valid java name */
    public final int f8869break;

    /* renamed from: case  reason: not valid java name */
    public final int f8870case;

    /* renamed from: catch  reason: not valid java name */
    public final int f8871catch;

    /* renamed from: class  reason: not valid java name */
    public int f8872class;

    /* renamed from: const  reason: not valid java name */
    public boolean f8873const;

    /* renamed from: do  reason: not valid java name */
    public boolean f8874do;

    /* renamed from: else  reason: not valid java name */
    public final int f8875else;

    /* renamed from: for  reason: not valid java name */
    public boolean f8876for;

    /* renamed from: goto  reason: not valid java name */
    public final int f8877goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f8878if;

    /* renamed from: new  reason: not valid java name */
    public boolean f8879new;

    /* renamed from: this  reason: not valid java name */
    public final int f8880this;

    /* renamed from: try  reason: not valid java name */
    public int f8881try;

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

        /* renamed from: break  reason: not valid java name */
        public int f8882break;

        /* renamed from: case  reason: not valid java name */
        public int f8883case;

        /* renamed from: catch  reason: not valid java name */
        public int f8884catch;

        /* renamed from: class  reason: not valid java name */
        public int f8885class = 1;

        /* renamed from: const  reason: not valid java name */
        public boolean f8886const;

        /* renamed from: do  reason: not valid java name */
        public boolean f8887do;

        /* renamed from: else  reason: not valid java name */
        public int f8888else;

        /* renamed from: for  reason: not valid java name */
        public boolean f8889for;

        /* renamed from: goto  reason: not valid java name */
        public int f8890goto;

        /* renamed from: if  reason: not valid java name */
        public boolean f8891if;

        /* renamed from: new  reason: not valid java name */
        public boolean f8892new;

        /* renamed from: this  reason: not valid java name */
        public int f8893this;

        /* renamed from: try  reason: not valid java name */
        public int f8894try;

        public final GDTExtraOption build() {
            return new GDTExtraOption(this, null);
        }

        public Builder setAutoPlayPolicy(int i) {
            this.f8888else = i;
            return this;
        }

        public Builder setBrowserType(int i) {
            this.f8890goto = i;
            return this;
        }

        public Builder setDownAPPConfirmPolicy(int i) {
            this.f8893this = i;
            return this;
        }

        public Builder setFeedExpressType(int i) {
            this.f8885class = i;
            return this;
        }

        public Builder setGDTAutoPlayMuted(boolean z) {
            this.f8891if = z;
            return this;
        }

        public Builder setGDTDetailPageMuted(boolean z) {
            this.f8889for = z;
            return this;
        }

        public Builder setGDTEnableDetailPage(boolean z) {
            this.f8887do = z;
            return this;
        }

        public Builder setGDTEnableUserControl(boolean z) {
            this.f8892new = z;
            return this;
        }

        public Builder setGDTMaxVideoDuration(int i) {
            this.f8883case = i;
            return this;
        }

        public Builder setGDTMinVideoDuration(int i) {
            this.f8894try = i;
            return this;
        }

        public Builder setHeight(int i) {
            this.f8884catch = i;
            return this;
        }

        public Builder setSplashPreLoad(boolean z) {
            this.f8886const = z;
            return this;
        }

        public Builder setWidth(int i) {
            this.f8882break = i;
            return this;
        }
    }

    /* loaded from: classes8.dex */
    public static final class DownAPPConfirmPolicy {
        public static final int TYPE_DEFAULT = 0;
        public static final int TYPE_NO_CONFIRM = 1;
    }

    /* loaded from: classes8.dex */
    public static final class FeedExpressType {
        public static final int FEED_EXPRESS_TYPE_1 = 1;
        public static final int FEED_EXPRESS_TYPE_2 = 2;
    }

    /* loaded from: classes8.dex */
    public static final class VideoPlayPolicy {
        public static final int AUTO = 1;
        public static final int MANUAL = 2;
        public static final int UNKNOWN = 0;
    }

    public GDTExtraOption(Builder builder, AnonymousClass1 anonymousClass1) {
        this.f8874do = true;
        this.f8878if = true;
        this.f8876for = false;
        this.f8879new = false;
        this.f8881try = 0;
        this.f8872class = 1;
        this.f8874do = builder.f8887do;
        this.f8878if = builder.f8891if;
        this.f8876for = builder.f8889for;
        this.f8879new = builder.f8892new;
        this.f8870case = builder.f8894try;
        this.f8875else = builder.f8883case;
        this.f8881try = builder.f8888else;
        this.f8877goto = builder.f8890goto;
        this.f8880this = builder.f8893this;
        this.f8869break = builder.f8882break;
        this.f8871catch = builder.f8884catch;
        this.f8872class = builder.f8885class;
        this.f8873const = builder.f8886const;
    }

    public int getBrowserType() {
        return this.f8877goto;
    }

    public int getDownAPPConfirmPolicy() {
        return this.f8880this;
    }

    public int getFeedExpressType() {
        return this.f8872class;
    }

    public int getGDTAutoPlayPolicy() {
        return this.f8881try;
    }

    public int getGDTMaxVideoDuration() {
        return this.f8875else;
    }

    public int getGDTMinVideoDuration() {
        return this.f8870case;
    }

    public GMAdSlotGDTOption.Builder getGMGDTExtraOption() {
        GMAdSlotGDTOption.Builder builder = new GMAdSlotGDTOption.Builder();
        builder.setAutoPlayPolicy(getGDTAutoPlayPolicy());
        builder.setDownAPPConfirmPolicy(getDownAPPConfirmPolicy());
        builder.setGDTAutoPlayMuted(isGDTAutoPlayMuted());
        builder.setGDTDetailPageMuted(isGDTDetailPageMuted());
        builder.setGDTEnableDetailPage(isGDTEnableDetailPage());
        builder.setGDTEnableUserControl(isGDTEnableUserControl());
        builder.setGDTMaxVideoDuration(getGDTMaxVideoDuration());
        builder.setGDTMinVideoDuration(getGDTMinVideoDuration());
        return builder;
    }

    public int getHeight() {
        return this.f8871catch;
    }

    public int getWidth() {
        return this.f8869break;
    }

    public boolean isGDTAutoPlayMuted() {
        return this.f8878if;
    }

    public boolean isGDTDetailPageMuted() {
        return this.f8876for;
    }

    public boolean isGDTEnableDetailPage() {
        return this.f8874do;
    }

    public boolean isGDTEnableUserControl() {
        return this.f8879new;
    }

    public boolean isSplashPreLoad() {
        return this.f8873const;
    }
}
