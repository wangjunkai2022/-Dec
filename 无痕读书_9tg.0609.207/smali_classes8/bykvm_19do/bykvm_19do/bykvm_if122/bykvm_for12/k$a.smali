.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;
.super Ljava/lang/Object;
.source "GroMoreEventUploadImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->a(Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->a:Ljava/util/List;

    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->b:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;

    iput-object p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k;Ljava/util/List;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->b:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;

    iget-boolean v3, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->a:Z

    iget v4, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->b:I

    iget-object v5, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->c:Ljava/lang/String;

    iget-boolean v6, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/g;->d:Z

    const-string v7, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;-><init>(ZILjava/lang/String;ZLjava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->c:Ljava/util/List;

    invoke-direct {v2, v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/b;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/k$a;->b:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;

    invoke-interface {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
