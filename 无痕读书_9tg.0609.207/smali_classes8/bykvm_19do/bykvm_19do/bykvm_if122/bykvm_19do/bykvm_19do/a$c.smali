.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;
.super Ljava/lang/Object;
.source "ServerSideRewardVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->d()V
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
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Z

    move-result v0

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    if-eqz v0, :cond_0

    const-string v0, "--==-- verify\u56de\u8c03\u8fdb\u6765\uff0c\u5df2\u7ecfdestroy, \u76f4\u63a5return"

    .line 2
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;Z)Z

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->f(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Lcom/bytedance/msdk/api/reward/RewardItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->g(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->h(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "--==-- verify\u56de\u8c03\u8fdb\u6765\uff0c\u5df2\u7ecf\u6709\u7ed3\u679c\uff0c\u76f4\u63a5\u7ed9\u5f00\u53d1\u8005\u56de\u8c03"

    .line 6
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;Z)Z

    .line 8
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->g(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$i;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->f(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Lcom/bytedance/msdk/api/reward/RewardItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$i;->onRewardVerify(Lcom/bytedance/msdk/api/reward/RewardItem;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->i(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const-string v0, "--==-- verify\u56de\u8c03\u8fdb\u6765\u51c6\u5907\u8bf7\u6c42\uff0c\u4f46\u662f\u4e0d\u80fd\u91cd\u8bd5"

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    const-string v2, "--==-- verify\u56de\u8c03\u8fdb\u6765\uff0c\u5148\u8fdb\u6765\u53d1\u8d77\u8bf7\u6c42"

    .line 10
    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;J)J

    .line 12
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->j(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->k(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 16
    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->i(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    const-string v2, "--==-- verify\u56de\u8c03\u8fdb\u6765\uff0c\u540e\u8fdb\u6765\u4f46\u5927\u4e8e2s\uff0c\u53d1\u8d77\u8bf7\u6c42"

    .line 17
    invoke-static {v1, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->j(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->k(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_6
    :goto_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$c;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->postDelayOnMSDKThread(Ljava/lang/Runnable;J)V

    return-void
.end method
