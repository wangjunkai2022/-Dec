.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$g;
.super Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/a;
.source "ServerSideRewardVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$g;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/b;)V
    .locals 0

    .line 1
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$g$a;

    invoke-direct {p1, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$g$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$g;Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/b;)V

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;Ljava/io/IOException;)V
    .locals 0

    .line 2
    new-instance p1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$g$b;

    invoke-direct {p1, p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$g$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$g;Ljava/io/IOException;)V

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnMSDKThread(Ljava/lang/Runnable;)V

    return-void
.end method
