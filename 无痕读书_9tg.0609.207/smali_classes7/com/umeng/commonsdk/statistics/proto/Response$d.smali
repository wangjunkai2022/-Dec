.class public Lcom/umeng/commonsdk/statistics/proto/Response$d;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lcom/umeng/analytics/pro/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/Response$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/Response$c;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/ca;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$d;->a()Lcom/umeng/commonsdk/statistics/proto/Response$c;

    move-result-object v0

    return-object v0
.end method
