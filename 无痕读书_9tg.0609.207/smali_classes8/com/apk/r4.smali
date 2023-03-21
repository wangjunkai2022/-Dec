.class public Lcom/apk/r4;
.super Ljava/lang/Object;
.source "NovelShelfPresenter.java"

# interfaces
.implements Lcom/apk/ft;


# instance fields
.field public final synthetic do:Lcom/apk/t4;


# direct methods
.method public constructor <init>(Lcom/apk/t4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/r4;->do:Lcom/apk/t4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/r4;->do:Lcom/apk/t4;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/b1;

    invoke-direct {v1}, Lcom/apk/b1;-><init>()V

    new-instance v2, Lcom/apk/s4;

    invoke-direct {v2, v0}, Lcom/apk/s4;-><init>(Lcom/apk/t4;)V

    invoke-virtual {v1, v2}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
