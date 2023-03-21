.class public final Lcom/apk/r50$if;
.super Ljava/lang/Object;
.source "TrSplashZoomOutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/r50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static do:Lcom/apk/r50;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/r50;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/r50;-><init>(Lcom/apk/s50;)V

    sput-object v0, Lcom/apk/r50$if;->do:Lcom/apk/r50;

    return-void
.end method
