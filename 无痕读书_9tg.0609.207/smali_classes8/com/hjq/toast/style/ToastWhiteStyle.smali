.class public Lcom/hjq/toast/style/ToastWhiteStyle;
.super Lcom/hjq/toast/style/ToastBlackStyle;
.source "ToastWhiteStyle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/toast/style/ToastBlackStyle;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    const v0, -0x151516

    return v0
.end method

.method public getTextColor()I
    .locals 1

    const/high16 v0, -0x45000000    # -0.001953125f

    return v0
.end method
