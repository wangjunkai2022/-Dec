.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$f;
.super Ljava/lang/Object;
.source "InitADNHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;

    move-result-object v0

    invoke-interface {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;->a()V

    :cond_0
    return-void
.end method
