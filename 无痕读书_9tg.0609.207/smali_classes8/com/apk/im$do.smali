.class public final Lcom/apk/im$do;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# static fields
.field public static final this:I


# instance fields
.field public case:F

.field public final do:Landroid/content/Context;

.field public else:F

.field public for:Lcom/apk/im$for;

.field public goto:I

.field public if:Landroid/app/ActivityManager;

.field public new:F

.field public try:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/apk/im$do;->this:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    iput v0, p0, Lcom/apk/im$do;->new:F

    .line 3
    sget v0, Lcom/apk/im$do;->this:I

    int-to-float v0, v0

    iput v0, p0, Lcom/apk/im$do;->try:F

    const v0, 0x3ecccccd    # 0.4f

    .line 4
    iput v0, p0, Lcom/apk/im$do;->case:F

    const v0, 0x3ea8f5c3    # 0.33f

    .line 5
    iput v0, p0, Lcom/apk/im$do;->else:F

    const/high16 v0, 0x400000

    .line 6
    iput v0, p0, Lcom/apk/im$do;->goto:I

    .line 7
    iput-object p1, p0, Lcom/apk/im$do;->do:Landroid/content/Context;

    const-string v0, "activity"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/apk/im$do;->if:Landroid/app/ActivityManager;

    .line 9
    new-instance v0, Lcom/apk/im$if;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apk/im$if;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/apk/im$do;->for:Lcom/apk/im$for;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/apk/im$do;->if:Landroid/app/ActivityManager;

    .line 12
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/apk/im$do;->try:F

    :cond_0
    return-void
.end method
