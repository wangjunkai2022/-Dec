.class public final Lcom/bytedance/pangle/service/a/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/pangle/service/a/a;->a(Landroid/content/Intent;Lcom/bytedance/pangle/f;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/bytedance/pangle/f;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/bytedance/pangle/service/a/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/service/a/a;Landroid/content/Intent;Lcom/bytedance/pangle/f;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/service/a/a$3;->e:Lcom/bytedance/pangle/service/a/a;

    iput-object p2, p0, Lcom/bytedance/pangle/service/a/a$3;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/bytedance/pangle/service/a/a$3;->b:Lcom/bytedance/pangle/f;

    iput p4, p0, Lcom/bytedance/pangle/service/a/a$3;->c:I

    iput-object p5, p0, Lcom/bytedance/pangle/service/a/a$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/pangle/service/a/a$3;->e:Lcom/bytedance/pangle/service/a/a;

    iget-object v1, p0, Lcom/bytedance/pangle/service/a/a$3;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/pangle/service/a/a$3;->b:Lcom/bytedance/pangle/f;

    iget-object v3, p0, Lcom/bytedance/pangle/service/a/a$3;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/pangle/service/a/a;->a(Lcom/bytedance/pangle/service/a/a;Landroid/content/Intent;Lcom/bytedance/pangle/f;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Zeus/service"

    const-string v2, "bindService failed"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
