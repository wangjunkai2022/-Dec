.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;
.super Ljava/lang/Object;
.source "TTAdHeaderBidingRequestCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;->a:Ljava/lang/String;

    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;->a:Ljava/lang/String;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
