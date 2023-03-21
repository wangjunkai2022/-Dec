.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;
.super Ljava/lang/Object;
.source "TTSdkSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->G()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->g()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->g()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;)V

    .line 5
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v0

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->e(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/m;->d(Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    .line 10
    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->D()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v3

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->o()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v3

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->o()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/i;)V

    .line 13
    :cond_4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;

    move-result-object v3

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->n()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;

    move-result-object v3

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->n()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/g;)V

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->b()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    invoke-virtual {v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method
