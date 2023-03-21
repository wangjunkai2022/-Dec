.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;
.super Ljava/lang/Object;
.source "SdkSettingsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->a(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_for12/bykvm_if122/b;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/IOException;

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "----\u7f51\u7edc\u9519\u8bef\uff0c\u670d\u52a1\u5668\u65e0\u54cd\u5e94\uff0c\u7a0d\u540e\u4f1a\u5c1d\u8bd5\u91cd\u65b0\u62c9\u53d6\u914d\u7f6e----\uff0csetting request failed..."

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;->a:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkSettingsHelper"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->f(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;)V

    const-string v0, "----\u7f51\u7edc\u9519\u8bef\uff0c\u91cd\u65b0\u62c9\u53d6\u914d\u7f6e\u5931\u8d25----\uff0c>>>>> retryLoadSettingData"

    .line 3
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 4
    :goto_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;

    iget-object v2, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->b:[I

    aput v1, v2, v1

    .line 6
    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->a:[I

    const/4 v2, -0x2

    aput v2, v0, v1

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b;->a(Z)Z

    .line 9
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;

    iget-object v2, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->b:[I

    aget v2, v2, v1

    iget-object v0, v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->a:[I

    aget v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a$b;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;

    iget-wide v5, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->c:J

    sub-long/2addr v3, v5

    iget-boolean v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/b$a;->d:Z

    invoke-static {v2, v0, v3, v4, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(IIJZ)V

    :cond_0
    return-void
.end method
