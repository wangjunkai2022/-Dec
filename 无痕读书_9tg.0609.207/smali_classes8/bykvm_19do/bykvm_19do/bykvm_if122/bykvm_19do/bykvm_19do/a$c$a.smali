.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;
.super Ljava/lang/Object;
.source "ServerSideRewardVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Z

    move-result v0

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    if-eqz v0, :cond_0

    const-string v0, "--==-- verify\u56de\u8c03\u515c\u5e95\u8fdb\u6765\uff0c\u5df2\u7ecfdestroy\u4e86, \u76f4\u63a5return"

    .line 2
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->g(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->h(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "--==-- verify\u56de\u8c03\u515c\u5e95\u8fdb\u6765\uff0c\u7ed9\u5f00\u53d1\u8005verify\u56de\u8c03"

    .line 4
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;Z)Z

    .line 6
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;)V

    .line 7
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;

    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->g(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$i;

    move-result-object v1

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->f(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Lcom/bytedance/msdk/api/reward/RewardItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->f(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Lcom/bytedance/msdk/api/reward/RewardItem;

    move-result-object v0

    :cond_1
    invoke-interface {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$i;->onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V

    :cond_2
    return-void
.end method
