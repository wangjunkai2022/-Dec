.class public Lcom/apk/au;
.super Ljava/lang/Object;
.source "BarConfig.java"


# instance fields
.field public final case:Z

.field public final do:I

.field public final else:F

.field public final for:Z

.field public final if:I

.field public final new:I

.field public final try:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/apk/au;->case:Z

    .line 4
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 8
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 9
    iput v0, p0, Lcom/apk/au;->else:F

    const-string v0, "status_bar_height"

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/apk/au;->do(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/apk/au;->do:I

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v3, Lcom/codelibrary/R$id;->action_bar_container:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 13
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10102eb

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 16
    :cond_2
    iput v0, p0, Lcom/apk/au;->if:I

    .line 17
    invoke-virtual {p0, p1}, Lcom/apk/au;->if(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-boolean v0, p0, Lcom/apk/au;->case:Z

    if-eqz v0, :cond_3

    const-string v0, "navigation_bar_height"

    goto :goto_2

    :cond_3
    const-string v0, "navigation_bar_height_landscape"

    .line 19
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/apk/au;->do(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 20
    :goto_3
    iput v0, p0, Lcom/apk/au;->new:I

    .line 21
    invoke-virtual {p0, p1}, Lcom/apk/au;->if(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "navigation_bar_width"

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/apk/au;->do(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    .line 23
    :goto_4
    iput p1, p0, Lcom/apk/au;->try:I

    .line 24
    iget p1, p0, Lcom/apk/au;->new:I

    if-lez p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/apk/au;->for:Z

    return-void
.end method


# virtual methods
.method public final do(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-lt p2, v0, :cond_0

    return p2

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    mul-float v0, v0, p2

    div-float/2addr v0, p1

    const/4 p1, 0x0

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_1

    add-float/2addr v0, p2

    goto :goto_0

    :cond_1
    sub-float/2addr v0, p2

    :goto_0
    float-to-int p1, v0

    return p1

    :catch_0
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public for()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/au;->else:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/apk/au;->case:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final if(Landroid/app/Activity;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-static {}, Lcom/apk/mu;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/apk/mu;->j()Z

    move-result v0

    const-string v1, "navigationbar_is_min"

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 10
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 11
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    invoke-static {p1}, Lcom/apk/eg;->interface(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 13
    invoke-static {p1}, Lcom/apk/iu;->case(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    :cond_3
    iget p1, p0, Lcom/apk/au;->do:I

    sub-int/2addr v3, p1

    .line 15
    :cond_4
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 17
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, p1

    if-gtz v1, :cond_5

    sub-int/2addr v3, v0

    if-lez v3, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method
