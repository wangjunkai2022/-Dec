.class public Lcom/hjq/toast/style/ToastQQStyle;
.super Lcom/hjq/toast/style/BaseToastStyle;
.source "ToastQQStyle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/toast/style/BaseToastStyle;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    const v0, -0xcccccd

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/hjq/toast/style/BaseToastStyle;->dp2px(F)I

    move-result v0

    return v0
.end method

.method public getPaddingStart()I
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/hjq/toast/style/BaseToastStyle;->dp2px(F)I

    move-result v0

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    const/high16 v0, 0x41600000    # 14.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/hjq/toast/style/BaseToastStyle;->dp2px(F)I

    move-result v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    const v0, -0x1c1c1d

    return v0
.end method

.method public getTextSize()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/hjq/toast/style/BaseToastStyle;->sp2px(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getZ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
