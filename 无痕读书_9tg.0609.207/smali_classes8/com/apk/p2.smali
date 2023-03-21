.class public final Lcom/apk/p2;
.super Ljava/lang/Object;
.source "NovelShelfModel.java"

# interfaces
.implements Lcom/apk/dt;


# instance fields
.field public final synthetic do:Lcom/apk/g1;


# direct methods
.method public constructor <init>(Lcom/apk/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/p2;->do:Lcom/apk/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/p2;->do:Lcom/apk/g1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/apk/g1;->onData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
