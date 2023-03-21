.class public abstract Lcom/hjq/toast/style/BaseToastStyle;
.super Ljava/lang/Object;
.source "BaseToastStyle.java"

# interfaces
.implements Lcom/hjq/toast/IToastStyle;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hjq/toast/style/BaseToastStyle;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dp2px(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/style/BaseToastStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getGravity()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/hjq/toast/IToastStyle;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getPaddingEnd()I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/hjq/toast/IToastStyle;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public getXOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getYOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getZ()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public sp2px(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/style/BaseToastStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
