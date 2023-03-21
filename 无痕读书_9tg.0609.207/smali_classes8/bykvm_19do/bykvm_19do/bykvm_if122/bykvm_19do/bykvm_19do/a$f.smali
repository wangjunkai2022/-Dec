.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;
.super Ljava/lang/Object;
.source "ServerSideRewardVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->g()V
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
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->i(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)J

    move-result-wide v0

    const-string v2, "GROMORE_SS_REWARD_VERIFY"

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--==-- showListen\u8ba1\u65f6\u5230\u65f6\u95f4\uff0c\u53d1\u8d77\u8bf7\u6c42"

    .line 2
    invoke-static {v2, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;->k(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;)V

    .line 4
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$h;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$h;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;I)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->postDelayOnMSDKThread(Ljava/lang/Runnable;J)V

    .line 5
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$h;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$h;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;I)V

    const-wide/16 v1, 0x1770

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->postDelayOnMSDKThread(Ljava/lang/Runnable;J)V

    .line 6
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$h;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$f;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a$h;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/a;I)V

    const-wide/16 v1, 0x2328

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->postDelayOnMSDKThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "--==-- showListen\u8ba1\u65f6\u5230\u65f6\u95f4\uff0c\u5df2\u7ecfdestroy\uff0c\u6216\u8005skip\uff0c\u6216\u8005\u6bd4complete/verify\u56de\u8c03\u8fd8\u665a\uff0c\u76f4\u63a5return"

    .line 7
    invoke-static {v2, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
