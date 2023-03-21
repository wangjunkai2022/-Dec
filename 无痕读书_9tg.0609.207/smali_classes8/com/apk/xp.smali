.class public Lcom/apk/xp;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lcom/apk/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/eq;)V
    .locals 0
    .param p1    # Lcom/apk/eq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/apk/eq;->onStart()V

    return-void
.end method

.method public if(Lcom/apk/eq;)V
    .locals 0
    .param p1    # Lcom/apk/eq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
