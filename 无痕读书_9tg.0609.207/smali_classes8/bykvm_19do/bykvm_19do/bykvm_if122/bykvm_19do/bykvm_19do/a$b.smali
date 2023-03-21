.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$b;
.super Ljava/lang/Object;
.source "ServerSideRewardVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->a()V
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
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;Z)Z

    return-void
.end method
