.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$c;
.super Ljava/lang/Object;
.source "ServerBiddingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;

    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$c;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$c;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;

    invoke-interface {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V

    :cond_0
    return-void
.end method
