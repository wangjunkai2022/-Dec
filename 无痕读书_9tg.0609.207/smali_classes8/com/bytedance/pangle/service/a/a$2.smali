.class public final Lcom/bytedance/pangle/service/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/pangle/service/a/a;->b(Landroid/content/Intent;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/bytedance/pangle/service/a/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/service/a/a;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/pangle/service/a/a$2;->b:Lcom/bytedance/pangle/service/a/a;

    iput-object p2, p0, Lcom/bytedance/pangle/service/a/a$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/service/a/a;->b()Lcom/bytedance/pangle/service/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/pangle/service/a/a$2;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/pangle/service/a/a;->a(Landroid/content/ComponentName;)Z

    return-void
.end method
