.class public Lcom/apk/r50;
.super Lcom/apk/p70;
.source "TrSplashZoomOutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/r50$if;,
        Lcom/apk/r50$do;
    }
.end annotation


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:[I

.field public const:I

.field public else:I

.field public final:I

.field public for:I

.field public goto:Lcom/qq/e/ads/splash/SplashAD;

.field public if:I

.field public new:I

.field public this:Landroid/view/View;

.field public try:I


# direct methods
.method public constructor <init>(Lcom/apk/s50;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/apk/p70;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcom/apk/r50;->class:[I

    .line 3
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 7
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/apk/r50;->if:I

    mul-int/lit8 v0, v0, 0x10

    .line 10
    div-int/lit8 v0, v0, 0x9

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/apk/r50;->for:I

    const/4 v0, 0x6

    .line 11
    invoke-static {p1, v0}, Lcom/apk/r50;->try(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/apk/r50;->new:I

    const/16 v0, 0x64

    .line 12
    invoke-static {p1, v0}, Lcom/apk/r50;->try(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/apk/r50;->try:I

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/apk/r50;->case:I

    const/16 p1, 0x1f4

    .line 14
    iput p1, p0, Lcom/apk/r50;->else:I

    return-void
.end method

.method public static case(Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static try(Landroid/content/Context;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
