.class public Lcom/apk/k50$do;
.super Ljava/lang/Object;
.source "AdHelperBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/k50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field public static do:I

.field public static if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/r70;->do()I

    move-result v0

    sput v0, Lcom/apk/k50$do;->do:I

    int-to-double v0, v0

    const-wide v2, 0x4018cccccccccccdL    # 6.2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 2
    sput v0, Lcom/apk/k50$do;->if:I

    return-void
.end method
