.class public Lcom/apk/zu;
.super Ljava/lang/Object;
.source "XPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/zu$do;
    }
.end annotation


# static fields
.field public static do:I

.field public static for:I

.field public static if:I

.field public static new:I

.field public static try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#C0392B"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/apk/zu;->do:I

    const/16 v0, 0x15e

    .line 2
    sput v0, Lcom/apk/zu;->if:I

    const-string v0, "#55000000"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/apk/zu;->for:I

    const-string v0, "#5F000000"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/apk/zu;->new:I

    return-void
.end method
