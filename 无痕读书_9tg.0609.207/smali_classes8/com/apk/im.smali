.class public final Lcom/apk/im;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/im$if;,
        Lcom/apk/im$do;,
        Lcom/apk/im$for;
    }
.end annotation


# instance fields
.field public final do:I

.field public final for:Landroid/content/Context;

.field public final if:I

.field public final new:I


# direct methods
.method public constructor <init>(Lcom/apk/im$do;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/apk/im$do;->do:Landroid/content/Context;

    iput-object v0, p0, Lcom/apk/im;->for:Landroid/content/Context;

    .line 3
    iget-object v0, p1, Lcom/apk/im$do;->if:Landroid/app/ActivityManager;

    .line 4
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p1, Lcom/apk/im$do;->goto:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p1, Lcom/apk/im$do;->goto:I

    :goto_0
    iput v0, p0, Lcom/apk/im;->new:I

    .line 7
    iget-object v0, p1, Lcom/apk/im$do;->if:Landroid/app/ActivityManager;

    iget v1, p1, Lcom/apk/im$do;->case:F

    iget v2, p1, Lcom/apk/im$do;->else:F

    .line 8
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    .line 9
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    int-to-float v3, v3

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    mul-float v3, v3, v1

    .line 10
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 11
    iget-object v1, p1, Lcom/apk/im$do;->for:Lcom/apk/im$for;

    check-cast v1, Lcom/apk/im$if;

    .line 12
    iget-object v1, v1, Lcom/apk/im$if;->do:Landroid/util/DisplayMetrics;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v2, v2, v1

    mul-int/lit8 v2, v2, 0x4

    int-to-float v1, v2

    .line 14
    iget v2, p1, Lcom/apk/im$do;->try:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 15
    iget v3, p1, Lcom/apk/im$do;->new:F

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 16
    iget v3, p0, Lcom/apk/im;->new:I

    sub-int v3, v0, v3

    add-int v4, v1, v2

    if-gt v4, v3, :cond_2

    .line 17
    iput v1, p0, Lcom/apk/im;->if:I

    .line 18
    iput v2, p0, Lcom/apk/im;->do:I

    goto :goto_1

    :cond_2
    int-to-float v1, v3

    .line 19
    iget v2, p1, Lcom/apk/im$do;->try:F

    iget v3, p1, Lcom/apk/im$do;->new:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float v3, v3, v1

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/apk/im;->if:I

    .line 21
    iget v2, p1, Lcom/apk/im$do;->try:F

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/apk/im;->do:I

    :goto_1
    const/4 v1, 0x3

    const-string v2, "MemorySizeCalculator"

    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    iget v1, p0, Lcom/apk/im;->if:I

    .line 24
    invoke-virtual {p0, v1}, Lcom/apk/im;->do(I)Ljava/lang/String;

    iget v1, p0, Lcom/apk/im;->do:I

    .line 25
    invoke-virtual {p0, v1}, Lcom/apk/im;->do(I)Ljava/lang/String;

    iget v1, p0, Lcom/apk/im;->new:I

    .line 26
    invoke-virtual {p0, v1}, Lcom/apk/im;->do(I)Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v0}, Lcom/apk/im;->do(I)Ljava/lang/String;

    iget-object v0, p1, Lcom/apk/im$do;->if:Landroid/app/ActivityManager;

    .line 28
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    iget-object p1, p1, Lcom/apk/im$do;->if:Landroid/app/ActivityManager;

    .line 29
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final do(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/im;->for:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
