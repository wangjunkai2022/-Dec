package com.qq.e.ads.hybrid;
/* loaded from: classes8.dex */
public class HybridADSetting {
    public static final int TYPE_REWARD_VIDEO = 1;
    public String f;
    public String g;
    public String h;

    /* renamed from: a  reason: collision with root package name */
    public int f11507a = 1;
    public int b = 44;
    public int c = -1;
    public int d = -14013133;
    public int e = 16;
    public int i = -1776153;
    public int j = 16;

    public HybridADSetting backButtonImage(String str) {
        this.g = str;
        return this;
    }

    public HybridADSetting backSeparatorLength(int i) {
        this.j = i;
        return this;
    }

    public HybridADSetting closeButtonImage(String str) {
        this.h = str;
        return this;
    }

    public String getBackButtonImage() {
        return this.g;
    }

    public int getBackSeparatorLength() {
        return this.j;
    }

    public String getCloseButtonImage() {
        return this.h;
    }

    public int getSeparatorColor() {
        return this.i;
    }

    public String getTitle() {
        return this.f;
    }

    public int getTitleBarColor() {
        return this.c;
    }

    public int getTitleBarHeight() {
        return this.b;
    }

    public int getTitleColor() {
        return this.d;
    }

    public int getTitleSize() {
        return this.e;
    }

    public int getType() {
        return this.f11507a;
    }

    public HybridADSetting separatorColor(int i) {
        this.i = i;
        return this;
    }

    public HybridADSetting title(String str) {
        this.f = str;
        return this;
    }

    public HybridADSetting titleBarColor(int i) {
        this.c = i;
        return this;
    }

    public HybridADSetting titleBarHeight(int i) {
        this.b = i;
        return this;
    }

    public HybridADSetting titleColor(int i) {
        this.d = i;
        return this;
    }

    public HybridADSetting titleSize(int i) {
        this.e = i;
        return this;
    }

    public HybridADSetting type(int i) {
        this.f11507a = i;
        return this;
    }
}
