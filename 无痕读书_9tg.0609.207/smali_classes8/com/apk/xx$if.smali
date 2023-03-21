.class public Lcom/apk/xx$if;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/xx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final do:Lcom/apk/xx;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/xx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/xx;-><init>(Lcom/apk/xx$do;)V

    sput-object v0, Lcom/apk/xx$if;->do:Lcom/apk/xx;

    return-void
.end method
