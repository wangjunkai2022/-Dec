.class public Lorg/litepal/crud/async/AverageExecutor;
.super Lorg/litepal/crud/async/AsyncExecutor;
.source "AverageExecutor.java"


# instance fields
.field public cb:Lorg/litepal/crud/callback/AverageCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/async/AsyncExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lorg/litepal/crud/callback/AverageCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/litepal/crud/async/AverageExecutor;->cb:Lorg/litepal/crud/callback/AverageCallback;

    return-object v0
.end method

.method public listen(Lorg/litepal/crud/callback/AverageCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/litepal/crud/async/AverageExecutor;->cb:Lorg/litepal/crud/callback/AverageCallback;

    .line 2
    invoke-virtual {p0}, Lorg/litepal/crud/async/AsyncExecutor;->execute()V

    return-void
.end method
