.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b$a;
.super Ljava/lang/Object;
.source "TTADBidingRequestCore.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b;

    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    invoke-static {v1, v2, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;Lcom/bytedance/msdk/api/AdSlot;Ljava/util/List;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/a;)V

    return-void
.end method
