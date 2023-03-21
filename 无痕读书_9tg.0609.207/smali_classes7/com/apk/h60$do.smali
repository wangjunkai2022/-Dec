.class public Lcom/apk/h60$do;
.super Ljava/lang/Object;
.source "AdHelperInsert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h60;
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
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/r70;->do()I

    move-result v0

    sput v0, Lcom/apk/h60$do;->do:I

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/apk/h60$do;->if:I

    return-void
.end method
