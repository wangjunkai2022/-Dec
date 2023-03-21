.class public final Lcom/apk/gg0;
.super Ljava/lang/Object;
.source "ConnectionPool.kt"


# instance fields
.field public final do:Lcom/apk/ci0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v0, "timeUnit"

    .line 2
    invoke-static {v5, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v6, Lcom/apk/ci0;

    .line 4
    sget-object v1, Lcom/apk/sh0;->goto:Lcom/apk/sh0;

    const/4 v2, 0x5

    const-wide/16 v3, 0x5

    move-object v0, v6

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/apk/ci0;-><init>(Lcom/apk/sh0;IJLjava/util/concurrent/TimeUnit;)V

    const-string v0, "delegate"

    .line 6
    invoke-static {v6, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/apk/gg0;->do:Lcom/apk/ci0;

    return-void
.end method
