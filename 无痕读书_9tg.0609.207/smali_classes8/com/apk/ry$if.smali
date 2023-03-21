.class public Lcom/apk/ry$if;
.super Ljava/lang/Object;
.source "OkDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final do:Lcom/apk/ry;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/ry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/ry;-><init>(Lcom/apk/ry$do;)V

    sput-object v0, Lcom/apk/ry$if;->do:Lcom/apk/ry;

    return-void
.end method
