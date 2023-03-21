.class public final Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/b$a;
.super Ljava/lang/Object;
.source "InitChecker.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configLoad()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :goto_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/b;->b()Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->b(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    return-void

    :catchall_1
    move-exception v0

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object v1

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/b;->b()Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->b(Lcom/bytedance/msdk/api/v2/GMSettingConfigCallback;)V

    .line 5
    throw v0
.end method
